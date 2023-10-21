import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/services/dao_service.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class PayForCpuService {
  final NetworkingManager networkingManager;
  final RemoteConfigService remoteConfigService;
  final EOSService eosService;
  final DaoService daoService;

  PayForCpuService(
    this.networkingManager,
    this.remoteConfigService,
    this.eosService,
    this.daoService,
  );

  Future<Result<EOSAction?, HyphaError>> getFreeCpuAction(UserProfileData user, Network network) async {
    LogHelper.d('buildFreeTransaction');

    try {
      // pay cpu is under feature flag for each network
      if (!remoteConfigService.isPayCpuEnabled(network)) {
        return Result.value(null);
      }

      // if user is DAO member, we can pay for CPU
      final daos = await daoService.getDaos(user: user);

      if (daos.isValue) {
        if (daos.asValue!.value.isNotEmpty) {
          final action = payCpuAction(account: user.accountName, network: network);
          return Result.value(action);
        } else {
          // if user was created by us and recently, we also cover CPU
          // This covers EOS users that create a new account
          final result = await eosService.getAccount(user.accountName, network);
          final freshHours = remoteConfigService.newAccountFreshnessHours;
          if (result.isValue) {
            if (DateTime.now().difference(result.asValue!.value.created!).inHours < freshHours) {
              return Result.value(payCpuAction(account: user.accountName, network: network));
            }
          }
          return Result.value(null);
        }
      } else {
        LogHelper.e('Error retrieving DAOs (ignored): ${daos.asError?.error}');
        return Result.value(null);
      }
    } catch (error) {
      LogHelper.e('ignored payCPUActionError: $error');
      return Result.value(null);
    }
  }

  /// Usage: preload the payCpuAction for any member who is a Hypha member - see HyphaMemberService
  EOSAction payCpuAction({
    required String account,
    required Network network,
  }) {
    final contractName = eosService.remoteConfigService.payCpuContract(network: network);
    final action = EOSAction()
      ..account = contractName
      ..name = 'payforcpu'
      ..data = {'account': account}
      ..authorization = [
        Authorization()
          ..actor = contractName
          ..permission = 'payforcpu',
        Authorization()
          ..actor = account
          ..permission = 'active'
      ];

    return action;
  }
}
