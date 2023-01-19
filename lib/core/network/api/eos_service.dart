import 'dart:async';

import 'package:async/async.dart';
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/local/models/user_auth_data.dart';
import 'package:hypha_wallet/core/local/services/secure_storage_service.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';

String onboardingPrivateKey = '5JhM4vypLzLdDtHo67TR5RtmsYm2mr8F2ugqcrCzfrMPLvo8cQW';

class EOSService {
  final EOSClient eosClient;
  // final SecureStorageService secureStorageService;

  EOSService(this.eosClient);

  EOSClient _withPrivateKey(String privateKey) {
    eosClient.privateKeys = [privateKey];
    return eosClient;
  }

  Future<Result<dynamic>> sendTransaction({
    required EOSTransaction eosTransaction,
    required String accountName,
  }) async {
    final actions = eosTransaction.actions.map((e) => e.toEosAction).toList();

    print('GERY GERY: sendTransaction ' + actions.toString());
    for (final action in actions) {
      print('GERY GERY: sendTransaction Action: ' + action.toString());
      if (action.authorization == null || action.authorization == []) {
        print('GERY GERY: sendTransaction Inside check: ');
        action.authorization = [
          Authorization()
            ..actor = accountName
            ..permission = 'active'
        ];
      }
    }
    LogHelper.d('GERY GERY: sendTransaction Done wit if: ');

    print('GERY GERY: sendTransaction Action: ' + actions.toString());

    final transaction = _buildTransaction(actions, accountName);

    // final UserAuthData? userAuthData = await secureStorageService.getUserAuthData();
    // LogHelper.d('GERY GERY: ${userAuthData?.eOSPrivateKey?.toString()}');

    // ignore: prefer_interpolation_to_compose_strings
    print('GERY GERY: sendTransaction : ' + transaction.toJson().toString());

    return eosClient
        .pushTransaction(transaction)
        .then((dynamic response) => _mapEosResponse(response, (dynamic map) {
              print("GERY success $response");
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
