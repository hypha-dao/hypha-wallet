import 'package:collection/collection.dart';
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/repository/profile_repository.dart';
import 'package:hypha_wallet/ui/architecture/interactor/base_usecase.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_data.dart';

class NetworkAccount {
  final String accountName;
  final Networks network;

  NetworkAccount(this.accountName, this.network);
}

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
    final telosTestnetClient = EOSClient(
      baseUrl: remoteConfigService.baseUrl(network: Networks.telosTestnet),
      privateKeys: [],
      version: 'v1',
    );

    final results = await Future.wait(
        [eosClient.getKeyAccounts(input), telosClient.getKeyAccounts(input), telosTestnetClient.getKeyAccounts(input)]);
    final eosResult = results[0];
    final telosResult = results[1];
    final telosTestnetResult = results[2];

    final networkAccounts = <NetworkAccount>[];
    if (eosResult.isValue) {
      for (final element in eosResult.asValue!.value.accountNames) {
        networkAccounts.add(NetworkAccount(element, Networks.eos));
      }
    }
    if (telosResult.isValue) {
      for (final element in telosResult.asValue!.value.accountNames) {
        networkAccounts.add(NetworkAccount(element, Networks.telos));
      }
    }
    if (telosTestnetResult.isValue) {
      for (final element in telosTestnetResult.asValue!.value.accountNames) {
        networkAccounts.add(NetworkAccount(element, Networks.telosTestnet));
      }
    }

    print('networkAccounts ${networkAccounts.length}');

    if (networkAccounts.isNotEmpty) {
      final Iterable<Future<Result<ProfileData, HyphaError>>> futures = networkAccounts.map(
        (account) => _profileService.getProfile(account.accountName, network: account.network),
      );

      final List<Result<ProfileData, HyphaError>> profiles = await Future.wait(futures);

      final List<UserProfileData> wtf = List.empty(growable: true);

      profiles.forEachIndexed((index, response) {
        print('indexed ${index} ${response.isValue}');
        if (response.isValue) {
          final ProfileData profileData = response.asValue!.value;
          wtf.add(UserProfileData(
            accountName: profileData.account,
            userName: profileData.name,
            userImage: profileData.getAvatarUrl(),
            bio: profileData.bio,
          ));
        } else {
          print('adding ${networkAccounts[index].accountName}');
          wtf.add(UserProfileData(
            accountName: networkAccounts[index].accountName,
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
