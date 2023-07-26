import 'package:async/async.dart';
import 'package:hypha_wallet/core/crypto/dart_esr/dart_esr.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
// import 'package:hypha_wallet/core/crypto/eosdart/src/models/action.dart';

class SeedsESR {
  late SigningRequestManager manager;

  late List<ESRAction> actions;

  String? get callback => manager.signingRequest.callback;

  SeedsESR({String? uri}) {
    manager = TelosSigningManager.from(uri);
  }

  Future<void> resolve({String? account}) async {
    actions = await manager.fetchActions(account: account);
  }

  Result<ScanQrCodeResultData> processResolvedRequest() {
    Network network;
    try {
      network = _resolveNetwork();
    } catch (error) {
      print('unable to resolve network: $error');
      return ErrorResult(error);
    }
    final EOSTransaction eosTransaction = EOSTransaction.fromESRActionsList(actions, network);
    if (eosTransaction.isValid) {
      LogHelper.d('processResolvedRequest: Success QR');
      return ValueResult(ScanQrCodeResultData(transaction: eosTransaction, esr: this));
    } else {
      LogHelper.d('processResolvedRequest: ESR transaction invalid ${actions.length} $actions');
      return ErrorResult('Unable to process this request');
    }
  }

  /// Map ChainName or actual chain ID to our supported Network list
  Network _resolveNetwork() {
    final List<dynamic> chainId = manager.signingRequest.chainId;
    return HyphaSigningRequestManager.resolveNetwork(chainId);
  }
}

extension TelosSigningManager on SigningRequestManager {
  static SigningRequestManager from(String? uri) {
    return SigningRequestManager.from(uri, options: defaultSigningRequestEncodingOptions());
  }

  Future<List<ESRAction>> fetchActions({String? account, String permission = 'active'}) async {
    final abis = await fetchAbis();

    final Authorization auth = Authorization();
    auth.actor = account;
    auth.permission = permission;

    final List<ESRAction> actions = resolveActions(abis, auth);

    return actions;
  }
}
