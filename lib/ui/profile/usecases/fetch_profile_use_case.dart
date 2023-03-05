import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/profile_repository.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class FetchProfileUseCase extends InputUseCase<Result<ProfileData, HyphaError>, String> {
  final ProfileService _profileService;
  final HyphaSharedPrefs _appSharedPrefs;

  FetchProfileUseCase(this._profileService, this._appSharedPrefs);

  @override
  // ignore: avoid_renaming_method_parameters
  Future<Result<ProfileData, HyphaError>> run(String accountName) async {
    final Result<ProfileData, HyphaError> result = await _profileService.getProfile(accountName);
    if (result.isValue) {
      final ProfileData profile = result.asValue!.value;
      _appSharedPrefs.setUserProfileData(
        UserProfileData(
          accountName: accountName,
          userName: profile.name,
          bio: profile.bio,
          userImage: profile.image,
        ),
      );
    }
    return result;
  }
}
