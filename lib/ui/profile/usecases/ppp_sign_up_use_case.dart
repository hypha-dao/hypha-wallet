import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class PPPSignUpUseCase {
  final AmplifyService _amplifyService;

  PPPSignUpUseCase(this._amplifyService);

  Future<Result<bool, HyphaError>> run(String accountName) async {
    try {
      // ignore: unused_local_variable
      final res = await _amplifyService.signUp(accountName);
      return Result.value(true);
    } catch (error) {
      print('PPPSignUpUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('PPPSignUpUseCase error $error'));
    }
  }
}
