import 'package:collection/collection.dart';
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/remote_config_service.dart';
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
    // TODO(n13): change this to scan all known chains.
    // For this we need to find the correct PPP service for each chain, each chain uses a different PPP serivice
    // instance.
    final eosClient = EOSClient(
      baseUrl: remoteConfigService.baseUrl(network: Networks.eos),
      privateKeys: [],
      version: 'v1',
    );

    final telosClient = EOSClient(
      baseUrl: remoteConfigService.baseUrl(network: Networks.telos),
      privateKeys: [],
      version: 'v1',
    );

    final results = await Future.wait([eosClient.getKeyAccounts(input), telosClient.getKeyAccounts(input)]);
    final eosResult = results[0];
    final telosResult = results[1];

    AccountNames? data;
    if (eosResult.isValue) {
      data = eosResult.asValue!.value;
    } else if (telosResult.isValue) {
      data = telosResult.asValue!.value;
    }

    if (data != null) {
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
            userImage: profileData.getAvatarUrl(),
            bio: profileData.bio,
          ));
        } else {
          wtf.add(UserProfileData(
            accountName: data!.accountNames[index],
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
