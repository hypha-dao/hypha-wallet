import 'dart:async';

import 'package:async/async.dart';
import 'package:hypha_wallet/core/crypto/eosdart/eosdart.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/services/remote_config_service.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';

class InviteService {
  final NetworkingManager networkingManager;
  final EOSService eosService;

  InviteService(
    this.eosService,
    this.networkingManager,
  );

  // ACTION redeeminvite(const name account, const checksum256 secret);

  Future<Result<dynamic>> redeemInvite({
    required String account,
    required String secret,
    required Network network,
  }) async {
    final contractName = eosService.remoteConfigService.inviteContract(network: network);
    final actionName = 'redeeminvite';
    final transaction = EOSTransaction.fromAction(
      account: contractName,
      actionName: actionName,
      data: {
        'account': account,
        'secret': secret,
      },
      authorization: [
        Authorization()
          ..actor = account
          ..permission = 'active'
      ],
      network: network,
    );
    return eosService.sendTransaction(eosTransaction: transaction, accountName: account, network: network);
  }
}
