import 'package:collection/collection.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/profile_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class GetUserProfilesFromAccountsUseCase {
  final ProfileService _profileService;

  GetUserProfilesFromAccountsUseCase(this._profileService);

  Future<Result<List<UserProfileData>, HyphaError>> run(List<String> accounts) async {
    final Iterable<Future<Result<ProfileData, HyphaError>>> futures = accounts.map(
      (accountName) => _profileService.getProfile(accountName),
    );

    final List<Result<ProfileData, HyphaError>> profiles = await Future.wait(futures);

    final List<UserProfileData> userProfiles = List.empty(growable: true);

    profiles.forEachIndexed((index, response) {
      if (response.isValue) {
        final ProfileData profileData = response.asValue!.value;
        userProfiles.add(UserProfileData(
          accountName: profileData.account,
          userName: profileData.name,
          userImage: profileData.getAvatarUrl(),
          bio: profileData.bio,
        ));
      } else {
        userProfiles.add(UserProfileData(
          accountName: accounts[index],
          userName: null,
          userImage: null,
          bio: null,
        ));
      }
    });

    return Result.value(userProfiles);
  }
}
