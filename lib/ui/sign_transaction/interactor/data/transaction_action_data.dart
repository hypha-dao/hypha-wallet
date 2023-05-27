import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';

class TransactionDetailsData {
  final String signingTitle;
  final List<TransactionDetailsCardData> cards;
  final DateTime expirationTime;

  TransactionDetailsData({
    required this.signingTitle,
    required this.cards,
    required this.expirationTime,
  });

  factory TransactionDetailsData.fromQrCodeData(ScanQrCodeResultData data) {
    final expiration =
        data.esr.manager.signingRequest.getExpiration() ?? DateTime.now().add(const Duration(minutes: 5));

    return TransactionDetailsData(
      signingTitle: 'From ${data.esr.actions.first.account}',
      expirationTime: expiration,
      cards: data.transaction.actions.map((EOSAction e) {
        final params = e.data.map((key, value) => MapEntry(key, value.toString()));
        return TransactionDetailsCardData(
          params: e.data.map((key, value) => MapEntry(key, value.toString())),
          contractAction: '${e.account ?? ''} - ${e.name ?? ''}',
          memo: params['memo'],
        );
      }).toList(),
    );
  }
}

const knownContractActions = {
  'dao.hypha - cmntadd': 'Add a comment',
  'dao.hypha - reactadd': 'Like a comment',
  'dao.hypha - vote': 'Vote on a proposal',
  'dao.hypha - propose': 'Publish your proposal to Staging',
  'dao.hypha - proposepub': 'Publish your proposal on chain',
  'dao.hypha - proposerem': 'Delete your proposal',
  'husd.hypha - transfer': 'Redeem Cash Token',
};

class TransactionDetailsCardData {
  final Map<String, dynamic> params;
  final String contractAction;
  final DateTime? timestamp;
  final GestureTapCallback? onTap;
  final String? memo;

  TransactionDetailsCardData({
    required this.params,
    required this.contractAction,
    this.timestamp,
    this.onTap,
    this.memo,
  });

  String get userFriendlyContractAction => knownContractActions[contractAction] ?? contractAction;
  String? get requestor => params['requestor'];
  String? get amount => params['amount'];
  String? get from => params['from'];

  @override
  String toString() {
    return 'params: $params\n contractAction: $contractAction \n timestamp: ${timestamp.toString()} \n memo: $memo';
  }
}
