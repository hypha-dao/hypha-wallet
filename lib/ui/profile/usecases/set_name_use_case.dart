import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/usecases/profile_login_use_case.dart';

class SetNameUseCase {
  final AmplifyService _amplifyService;
  final ProfileLoginUseCase _profileLoginUseCase;

  SetNameUseCase(this._amplifyService, this._profileLoginUseCase);

  Future<Result<bool, HyphaError>> run(
      {required String accountName, required String name, required Network network}) async {
    try {
      // ignore: unused_local_variable
      final Result<bool, HyphaError> loginResult = await _profileLoginUseCase.run(accountName, network);

      // ignore: unused_local_variable
      final res = await _amplifyService.setName(name, network);
      return Result.value(true);
    } catch (error) {
      print('SetNameUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('SetNameUseCase error $error'));
    }
  }
}
