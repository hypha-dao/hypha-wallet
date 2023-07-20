import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

class PayForCpuService {
  final NetworkingManager networkingManager;
  final EOSService eosService;

  PayForCpuService(
    this.eosService,
    this.networkingManager,
  );

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
          ..actor = account
          ..permission = 'active'
      ];

    return action;
  }
}
