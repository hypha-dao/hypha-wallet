import 'package:async/async.dart';
import 'package:hypha_wallet/core/crypto/dart_esr/src/encoding_options.dart';
import 'package:hypha_wallet/core/crypto/dart_esr/src/models/authorization.dart';
import 'package:hypha_wallet/core/crypto/dart_esr/src/models/esr_action.dart';
import 'package:hypha_wallet/core/crypto/dart_esr/src/signing_request_manager.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_transaction.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/logging/log_helper.dart';
import 'package:hypha_wallet/core/network/api/endpoints.dart';
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

  // TODO(n13): Remove this method and replace it with something more sensible. This is using the already resolved
  // ESR object and creating a lightweight action data object out of the first action, so be passed around to
  // other components.
  // Better ways to do that
  // Pass around the whole ESR object, or an Action object.
  // instead of canProcess, have an isValid accessor on the ESR and handle this case in the mappers.
  Result<ScanQrCodeResultData> processResolvedRequest() {
    final EOSTransaction eosTransaction = EOSTransaction.fromESRActionsList(actions);
    if (eosTransaction.isValid) {
      LogHelper.d('processResolvedRequest: Success QR');
      return ValueResult(ScanQrCodeResultData(transaction: eosTransaction, esr: this));
    } else {
      LogHelper.d('processResolvedRequest: ESR transaction invalid ${actions.length} $actions');
      return ErrorResult('Unable to process this request');
    }
  }
}

extension TelosSigningManager on SigningRequestManager {
  static SigningRequestManager from(String? uri) {
    return SigningRequestManager.from(uri, options: defaultSigningRequestEncodingOptions(nodeUrl: Endpoints.baseUrl));
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
