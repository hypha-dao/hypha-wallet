import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/usecases/profile_login_use_case.dart';

class SetNameUseCase {
  final AmplifyService _amplifyService;
  final ProfileLoginUseCase _profileLoginUseCase;

  SetNameUseCase(this._amplifyService, this._profileLoginUseCase);

  Future<Result<bool, HyphaError>> run({required UserProfileData user, required String name}) async {
    try {
      // ignore: unused_local_variable
      final Result<bool, HyphaError> loginResult = await _profileLoginUseCase.run(user);

      // ignore: unused_local_variable
      final res = await _amplifyService.setName(name, user.network);
      return Result.value(true);
    } catch (error) {
      print('SetNameUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('SetNameUseCase error $error'));
    }
  }
}
