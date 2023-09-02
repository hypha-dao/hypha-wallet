import 'package:async/async.dart';
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
    final Result<dynamic> result;
    try {
      result = await eosService.sendTransaction(
        eosTransaction: input.eOSTransaction,
        user: userData.userProfileData,
      );
    } catch (error) {
      LogHelper.e('Error signing transaction: $error');
      return HResult.Result.error(HyphaError.fromError(error));
    }
    if (result.isValue) {
      final transactionID = result.asValue!.value;
      try {
        final callbackResponse =
            await input.callback?.let((it) async => signTransactionCallbackService.callTheCallback(it, transactionID));
        if (callbackResponse?.statusCode != 200) {
          print('callback failed with status ${callbackResponse?.statusCode} - ignored');
        }
      } catch (error) {
        print('callback error: $error');
        print(error);
      }
      return HResult.Result.value(result.asValue!.value as String);
    } else {
      return HResult.Result.error(HyphaError.api('Error creating singing transaction'));
    }
  }
}

class SignTransactionInput {
  final EOSTransaction eOSTransaction;
  final String? callback;

  SignTransactionInput(this.eOSTransaction, this.callback);
}
