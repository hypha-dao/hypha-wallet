import 'package:collection/collection.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/profile_repository.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class GetUserProfilesFromAccountsUseCase {
  final ProfileService _profileService;

  GetUserProfilesFromAccountsUseCase(this._profileService);

  Future<Result<List<UserProfileData>, HyphaError>> run(Map<Network, List<String>> data) async {
    final List<(Network, String)> pairs = [];
    data.forEach((key, value) {
      final Iterable<(Network, String)> ll = value.map((e) => (key, e));
      pairs.addAll(ll);
    });

    final List<Future<Result<ProfileData, HyphaError>>> futures =
        pairs.map((e) => _profileService.getProfile(e.$2, e.$1)).toList();


    final List<Result<ProfileData, HyphaError>> profiles = await Future.wait(futures);

    final List<UserProfileData> userProfiles = List.empty(growable: true);

    profiles.forEachIndexed((index, response) {
      if (response.isValue) {
        final ProfileData profileData = response.asValue!.value;
        userProfiles.add(UserProfileData(
          accountName: profileData.account,
          userName: profileData.name,
          userImage: profileData.avatarUrl,
          bio: profileData.bio,
          network: profileData.network,
        ));
      } else {
        userProfiles.add(UserProfileData(
          accountName: pairs[index].$2,
          userName: null,
          userImage: null,
          bio: null,
          network: pairs[index].$1,
        ));
      }
    });

    return Result.value(userProfiles);
  }
}
