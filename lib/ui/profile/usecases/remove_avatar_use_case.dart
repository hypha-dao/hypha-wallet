// ignore_for_file: unused_import

import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/usecases/profile_login_use_case.dart';

class RemoveAvatarUseCase {
  final AmplifyService _amplifyService;
  final ProfileLoginUseCase _profileLoginUseCase;

  RemoveAvatarUseCase(this._amplifyService, this._profileLoginUseCase);

  Future<Result<bool, HyphaError>> run(UserProfileData user) async {
    try {
      print('remove avatar');
      final Result<bool, HyphaError> loginResult = await _profileLoginUseCase.run(user);

      if (loginResult.isValue) {
        // ignore: unused_local_variable
        final res = await _amplifyService.removeAvatar(user.network);
        return Result.value(true);
      } else {
        print('Remove avatar error: login Failed ');
        return Result.error(HyphaError.api('SetBioUseCase error: Login Failed'));
      }
    } catch (error) {
      print('RemoveAvatarUseCase error $error');
      print(error);
      return Result.error(HyphaError.api('RemoveAvatarUseCase error $error'));
    }
  }
}
