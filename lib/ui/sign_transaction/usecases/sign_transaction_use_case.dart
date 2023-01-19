import 'package:async/src/result/result.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart' as HResult;

class SignTransactionUseCase extends InputUseCase<HResult.Result<String, HyphaError>, EOSTransaction> {
  final EOSService eosService;
  final String accountName;

  SignTransactionUseCase(this.eosService, this.accountName);

  @override
  Future<HResult.Result<String, HyphaError>> run(EOSTransaction input) async {
    final Result<dynamic> result = await eosService.sendTransaction(
      eosTransaction: input,
      accountName: accountName,
    );
    print('send transaction ${result.isError}');
    if (result.isValue) {
      return HResult.Result.value(result.asValue!.value as String);
    } else {
      return HResult.Result.error(HyphaError.api('Error creating singing transaction'));
    }
  }
}
