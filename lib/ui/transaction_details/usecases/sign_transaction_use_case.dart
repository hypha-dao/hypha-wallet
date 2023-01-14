import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class SignTransactionUseCase extends InputUseCase<Result<bool, HyphaError>, String> {
  SignTransactionUseCase();

  @override
  Future<Result<bool, HyphaError>> run(String input) async {
    try {
      // TODO(NIK): Mocked service call
      return Future.delayed(const Duration(seconds: 2)).then((value) => Result.value(true));
    } catch (e) {
      return Result.error(HyphaError.api('Error creating account'));
    }
  }
}
