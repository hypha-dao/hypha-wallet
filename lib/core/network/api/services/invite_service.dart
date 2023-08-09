

import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';


class InviteService {
  final NetworkingManager networkingManager;
  final EOSService eosService;

  InviteService(
    this.eosService,
    this.networkingManager,
  );

  // ACTION redeeminvite(const name account, const checksum256 secret);

  Future<Result<String, HyphaError>> redeemInvite({
    required UserProfileData user,
    required String secret,
  }) async {
    final contractName = eosService.remoteConfigService.inviteContract(network: user.network);
    final actionName = 'redeeminvite';
    final transaction = EOSTransaction.fromAction(
      account: contractName,
      actionName: actionName,
      data: {
        'account': user.accountName,
        'secret': secret,
      },
      authorization: [
        Authorization()
          ..actor = user.accountName
          ..permission = 'active'
      ],
      network: user.network,
    );
    final result = await eosService.sendTransaction(eosTransaction: transaction, user: user);
    if(result.isValue) {
     return Result.value(result.asValue!.value);
    } else {
      return Result.error(HyphaError.fromError(result.asError!.error));
    }
  }
}
