import 'dart:async';

import 'package:async/async.dart';
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/secure_storage_service.dart';

String onboardingPrivateKey = '5JhM4vypLzLdDtHo67TR5RtmsYm2mr8F2ugqcrCzfrMPLvo8cQW';

class EOSService {
  final EOSClient eosClient;
  final SecureStorageService secureStorageService;

  EOSService(this.eosClient, this.secureStorageService);

  EOSClient _withPrivateKey(String privateKey) {
    eosClient.privateKeys = [privateKey];
    return eosClient;
  }

  Future<Result<dynamic>> sendTransaction({
    required EOSTransaction eosTransaction,
    required String accountName,
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
    return _withPrivateKey(userAuthData?.eOSPrivateKey.toString() ?? onboardingPrivateKey)
        .pushTransaction(transaction)
        .then((dynamic response) => _mapEosResponse(response, (dynamic map) {
              return response['transaction_id'];
            }))
        .catchError((error) => _mapEosError(error));
  }

  FutureOr<Result<T>> _mapEosResponse<T>(dynamic response, Function modelMapper) {
    print('mapEosResponse - transaction id: ${response['transaction_id']}');
    if (response['transaction_id'] != null) {
      print('Model Class: $modelMapper');
      final map = Map<String, dynamic>.from(response);
      return ValueResult(modelMapper(map));
    } else {
      print('ErrorResult: $response');
      return ErrorResult(EosError(response['processed']['error_code']));
    }
  }

  Transaction _buildTransaction(List<Action> actions, String? accountName) {
    final transaction = Transaction()
      ..actions = [
        ...actions,
      ];

    return transaction;
  }

  ErrorResult _mapEosError(dynamic error) {
    print('mapEosError: $error');
    return ErrorResult(error);
  }
}

class EosError extends Error {
  int? errorCode;

  EosError(this.errorCode);
}
