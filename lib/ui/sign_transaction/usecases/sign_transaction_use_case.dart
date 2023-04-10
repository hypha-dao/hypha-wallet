import 'package:async/async.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/scope_functions.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/sign_transaction_callback_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart' as HResult;

class SignTransactionUseCase extends InputUseCase<HResult.Result<String, HyphaError>, SignTransactionInput> {
  final EOSService eosService;
  final HyphaSharedPrefs _appSharedPrefs;
  final SignTransactionCallbackService signTransactionCallbackService;

  SignTransactionUseCase(this.eosService, this._appSharedPrefs, this.signTransactionCallbackService);

  @override
  Future<HResult.Result<String, HyphaError>> run(SignTransactionInput input) async {
    final UserProfileData? userData = await _appSharedPrefs.getUserProfileData();
    final Result<dynamic> result = await eosService.sendTransaction(
      eosTransaction: input.eOSTransaction,
      accountName: userData?.accountName ?? '',
      network: input.eOSTransaction.network,
    );
    if (result.isValue) {
      LogHelper.d('Callback Gery ${input.callback}');
      await input.callback?.let((it) async => signTransactionCallbackService.callTheCallback(it));
      print('callback called');
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
