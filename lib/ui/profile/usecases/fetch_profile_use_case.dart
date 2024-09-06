import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/services/dao_service.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/core/network/repository/profile_repository.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class FetchProfileUseCase {
  final AuthRepository _authRepository;
  final ProfileService _profileService;
  final HyphaSharedPrefs _appSharedPrefs;
  final DaoService _daoService;

  FetchProfileUseCase(this._authRepository, this._profileService, this._appSharedPrefs, this._daoService);

  Future<Result<ProfileData, HyphaError>> run() async {
    final userProfileData = _authRepository.authDataOrCrash.userProfileData;

    final Future daosFuture = _daoService.getDaos(user: userProfileData);
    final profileFuture = _profileService.getProfile(
      userProfileData,
    );

    final futureResults = await Future.wait([
      daosFuture,
      profileFuture,
    ]);

    final Result<List<DaoData>, HyphaError> daosResult = futureResults.first as Result<List<DaoData>, HyphaError>;
    final Result<ProfileData, HyphaError> profileResult = futureResults.last as Result<ProfileData, HyphaError>;

    if (profileResult.isValue && daosResult.isValue) {
      var profile = profileResult.asValue!.value;
      profile = profile.updateDaos(daosResult.asValue!.value);
      await _appSharedPrefs.setUserProfileData(
        UserProfileData(
          accountName: userProfileData.accountName,
          userName: profile.name,
          bio: profile.bio,
          userImage: profile.avatarUrl,
          network: userProfileData.network,
        ),
      );
      return Result.value(profile);
    }

    return profileFuture;
  }
}
