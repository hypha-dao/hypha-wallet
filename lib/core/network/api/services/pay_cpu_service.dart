import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/services/dao_service.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class PayForCpuService {
  final NetworkingManager networkingManager;
  final EOSService eosService;
  final DaoService daoService;

  PayForCpuService(
    this.networkingManager,
    this.eosService,
    this.daoService,
  );

  Future<Result<EOSAction?, HyphaError>> getFreeCpuAction(UserProfileData user, Network network) async {
    LogHelper.d('buildFreeTransaction');
    final daos = await daoService.getDaos(user: user);
    if (daos.isValue) {
      if (daos.asValue!.value.isNotEmpty) {
        final action = payCpuAction(account: user.accountName, network: network);
        return Result.value(action);
      } else {
        return Result.value(null);
      }
    } else {
      LogHelper.e('Error retrieving DAOs: ${daos.asError?.error}');
      return Result.error(HyphaError.fromError(daos.asError));
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
