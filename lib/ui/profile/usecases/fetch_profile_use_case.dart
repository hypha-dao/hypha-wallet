import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/profile_repository.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class FetchProfileUseCase {
  final ProfileService _profileService;
  final HyphaSharedPrefs _appSharedPrefs;

  FetchProfileUseCase(this._profileService, this._appSharedPrefs);

  Future<Result<ProfileData, HyphaError>> run(String accountName, Network network) async {
    final Result<ProfileData, HyphaError> result = await _profileService.getProfile(accountName, network);
    if (result.isValue) {
      final ProfileData profile = result.asValue!.value;
      await _appSharedPrefs.setUserProfileData(
        UserProfileData(
          accountName: accountName,
          userName: profile.name,
          bio: profile.bio,
          userImage: profile.avatarUrl,
          network: network,
        ),
      );
    }
    return result;
  }
}
