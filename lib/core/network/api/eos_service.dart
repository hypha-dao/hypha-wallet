import 'dart:async';

import 'package:async/async.dart';
import 'package:dio/dio.dart' as dio;
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/secure_storage_service.dart';
import 'package:hypha_wallet/core/network/api/remote_config_serivice.dart';

class EOSService {
  final SecureStorageService secureStorageService;
  final RemoteConfigService remoteConfigService;

  EOSService(this.secureStorageService, this.remoteConfigService);

  EOSClient getEosClientForNetwork(Networks network, {List<String> privateKeys = const []}) {
    return EOSClient(
      baseUrl: remoteConfigService.pushTransactionNodeUrl(network: network),
      privateKeys: privateKeys,
      version: 'v1',
    );
  }

  Future<Result<dynamic>> loginWithCode({
    required String accountName,
    required String loginCode,
    required Networks network,
  }) async {
    final contractName = remoteConfigService.loginContract(network: network);
    final actionName = remoteConfigService.loginAction(network: network);
    final loginTransaction = EOSTransaction.fromAction(
      account: contractName,
      actionName: actionName,
      data: {
        'account_name': accountName,
        'login_code': loginCode,
      },
      authorization: [
        Authorization()
          ..actor = accountName
          ..permission = 'active'
      ],
      network: network,
    );
    return sendTransaction(eosTransaction: loginTransaction, accountName: accountName, network: network);
  }

  Future<Result<dynamic>> sendTransaction({
    required EOSTransaction eosTransaction,
    required String accountName,
    required Networks network,
  }) async {
    final actions = eosTransaction.actions.map((e) => e.toEosAction).toList();

    for (final action in actions) {
      if (action.authorization == null || action.authorization == []) {
        action.authorization = [
          Authorization()
            ..actor = accountName
            ..permission = 'active'
        ];
      }
    }
    final transaction = _buildTransaction(actions, accountName);
    final UserAuthData? userAuthData = await secureStorageService.getUserAuthData();

    final eosClient = EOSClient(
      baseUrl: remoteConfigService.pushTransactionNodeUrl(network: network),
      privateKeys: [userAuthData!.eOSPrivateKey.toString()],
      version: 'v1',
    );

    return eosClient
        .pushTransaction(transaction)
        .then((dio.Response response) => _mapEosResponse(response, (dynamic map) {
              return map['transaction_id'];
            }))
        .catchError((error, s) => _mapEosError(error, s));
  }

  FutureOr<Result<T>> _mapEosResponse<T>(dio.Response response, Function modelMapper) {
    if (response.data['transaction_id'] != null) {
      final map = Map<String, dynamic>.from(response.data);
      return ValueResult(modelMapper(map));
    } else {
      return ErrorResult(EosError(response.data['processed']['error_code']));
    }
  }

  Transaction _buildTransaction(List<Action> actions, String? accountName) {
    final transaction = Transaction()
      ..actions = [
        ...actions,
      ];

    return transaction;
  }

  ErrorResult _mapEosError(dynamic error, StackTrace? s) {
    print('mapEosError: $error');
    if (s != null) {
      print('stack: $s');
    }
    return ErrorResult(error);
  }
}

class EosError extends Error {
  int? errorCode;

  EosError(this.errorCode);
}
