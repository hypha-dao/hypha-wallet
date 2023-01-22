import 'package:flutter/material.dart';

class TransactionDetailsData {
  final String signingTitle;
  final List<TransactionDetailsCardData> cards;
  final Duration expirationTime;

  TransactionDetailsData({required this.signingTitle, required this.cards, required this.expirationTime});
}

class TransactionDetailsCardData {
  final Map<String, dynamic> params;
  final String contractAction;
  final DateTime? timestamp;
  final GestureTapCallback? onTap;

  TransactionDetailsCardData({
    required this.params,
    required this.contractAction,
    this.timestamp,
    this.onTap,
  });
}
