import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/usecases/profile_login_use_case.dart';

class SetBioUseCase {
  final AmplifyService _amplifyService;
  final ProfileLoginUseCase _profileLoginUseCase;

  SetBioUseCase(this._amplifyService, this._profileLoginUseCase);

  Future<Result<bool, HyphaError>> run(SetBioUseCaseInput input) async {
    try {
      print('set bio to ${input.profileBio}');
      final Result<bool, HyphaError> loginResult = await _profileLoginUseCase.run(input.user);

      if (loginResult.isValue) {
        // ignore: unused_local_variable
        final res = await _amplifyService.setBio(input.profileBio, input.user.network,
            init: input.user.doesNotHaveUserProfileOnPPPService);
        return Result.value(true);
      } else {
        print('SetBioUseCase error login Failed ');
        return Result.error(HyphaError.api('SetBioUseCase error: Login Failed'));
      }
    } catch (error) {
      print('SetBioUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('SetBioUseCase error $error'));
    }
  }
}

class SetBioUseCaseInput {
  final UserProfileData user;
  final String profileBio;

  SetBioUseCaseInput({required this.user, required this.profileBio});
}
