import 'package:async/async.dart';
import 'package:dio/dio.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/services/sign_transaction_callback_service.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart' as HResult;

class SignTransactionUseCase extends InputUseCase<HResult.Result<String, HyphaError>, SignTransactionInput> {
  final EOSService eosService;
  final AuthRepository _authRepository;
  final SignTransactionCallbackService signTransactionCallbackService;

  SignTransactionUseCase(this.eosService, this._authRepository, this.signTransactionCallbackService);

  @override
  Future<HResult.Result<String, HyphaError>> run(SignTransactionInput input) async {
    final userData = _authRepository.authDataOrCrash;
    if (input.eOSTransaction.network != userData.userProfileData.network) {
      return HResult.Result.error(
        HyphaError.api(
            'Wrong network. Transaction on ${input.eOSTransaction.network} cannot be signed by user on ${userData.userProfileData.network}'),
      );
    }
    final Result<dynamic> result;
    try {
      result = await eosService.sendTransaction(
        eosTransaction: input.eOSTransaction,
        user: userData.userProfileData,
      );
    } catch (error, stackTrace) {
      LogHelper.e('Error signing transaction: $error', error: error, stacktrace: stackTrace);
      return HResult.Result.error(HyphaError.fromError(error));
    }
    if (result.isValue) {
      final transactionID = result.asValue!.value;
      try {
        final callbackResponse =
            await input.callback?.let((it) async => signTransactionCallbackService.callTheCallback(it, transactionID));
        if (callbackResponse?.statusCode != 200) {
          LogHelper.e('callback failed with status ${callbackResponse?.statusCode} - ignored');
        }
      } catch (error, stackTrace) {
        LogHelper.e('callback error: $error', error: error, stacktrace: stackTrace);
      }
      return HResult.Result.value(result.asValue!.value as String);
    } else {
      LogHelper.e('error creating transaction ${result.asError?.error}');
      final error = result.asError!.error;

      if (error is DioException && error.response != null) {
        try {
          final data = error.response!.data;
          final code = data['code'];
          final errorData = data['error'] as Map;
          final what = errorData['what'];
          final details = errorData['details'] as List;
          final detailedMessage = details[0];

          return HResult.Result.error(HyphaError.api(
            'Error Code: $code'
            '\nWhat: $what'
            '\nMessage: $detailedMessage',
          ));
        } catch (e, s) {
          LogHelper.e('Error parsing DioException', stacktrace: s);
          return HResult.Result.error(HyphaError.api('Error creating singing transaction ${result.asError?.error}'));
        }
      } else {
        return HResult.Result.error(HyphaError.api('Error creating singing transaction ${result.asError?.error}'));
      }
    }
  }
}

class SignTransactionInput {
  final EOSTransaction eOSTransaction;
  final String? callback;

  SignTransactionInput(this.eOSTransaction, this.callback);
}
