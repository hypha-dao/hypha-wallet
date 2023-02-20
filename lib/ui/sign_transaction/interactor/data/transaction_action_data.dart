import 'package:flutter/material.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';

class TransactionDetailsData {
  final String signingTitle;
  final List<TransactionDetailsCardData> cards;
  final DateTime expirationTime;
  final String blockNumber;

  TransactionDetailsData({
    required this.signingTitle,
    required this.cards,
    required this.expirationTime,
    required this.blockNumber,
  });

  factory TransactionDetailsData.fromQrCodeData(ScanQrCodeResultData data) {
    final signRequestMap = data.esr.manager.signingRequest.req[1] as Map;
    final expiration = DateTime.parse(signRequestMap['expiration']);
    final blockNumber = signRequestMap['ref_block_num'];

    return TransactionDetailsData(
      signingTitle: 'From ${data.esr.actions.first.account}',
      expirationTime: expiration,
      blockNumber: blockNumber.toString(),
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
}
