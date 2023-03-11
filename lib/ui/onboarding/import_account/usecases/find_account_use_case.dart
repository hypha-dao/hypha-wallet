import 'package:collection/collection.dart';
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/remote_config_serivice.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/profile_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class FindAccountsUseCase extends InputUseCase<Result<Iterable<UserProfileData>, HyphaError>, String> {
  final ProfileService _profileService;
  final RemoteConfigService remoteConfigService;

  FindAccountsUseCase(this._profileService, this.remoteConfigService);

  @override
  Future<Result<Iterable<UserProfileData>, HyphaError>> run(String input) async {
    final eosClient = EOSClient(
      baseUrl: remoteConfigService.baseUrl(),
      privateKeys: [],
      version: 'v1',
    );
    final result = await eosClient.getKeyAccounts(input);
    if (result.isValue) {
      final AccountNames data = result.asValue!.value;
      final Iterable<Future<Result<ProfileData, HyphaError>>> futures = data.accountNames.map(
        (accountName) => _profileService.getProfile(accountName),
      );

      final List<Result<ProfileData, HyphaError>> profiles = await Future.wait(futures);

      final List<UserProfileData> wtf = List.empty(growable: true);

      profiles.forEachIndexed((index, response) {
        if (response.isValue) {
          final ProfileData profileData = response.asValue!.value;
          wtf.add(UserProfileData(
            accountName: profileData.account,
            userName: profileData.name,
            userImage: profileData.image,
            bio: profileData.bio,
          ));
        } else {
          wtf.add(UserProfileData(
            accountName: data.accountNames[index],
            userName: null,
            userImage: null,
            bio: null,
          ));
        }
      });

      return Result.value(wtf);
    } else {
      return Result.error(HyphaError.api('Failed to fetch accounts'));
    }
  }
}
