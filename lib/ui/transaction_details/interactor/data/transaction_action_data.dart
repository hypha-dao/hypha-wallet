class TransactionDetailsData {
  final String signingTitle;
  final List<TransactionDetailsCardData> cards;
  final Duration expirationTime;

  TransactionDetailsData({required this.signingTitle, required this.cards, required this.expirationTime});
}

class TransactionDetailsCardData {
  final Map<String, String> params;
  final String contractAction;

  TransactionDetailsCardData({required this.params, required this.contractAction});
}
