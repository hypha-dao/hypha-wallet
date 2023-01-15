class TransactionDetailsData {
  final String signingTitle;
  final List<TransactionDetailsCardData> cards;
  final Duration expirationTime;

  TransactionDetailsData({required this.signingTitle, required this.cards, required this.expirationTime});
}

class TransactionDetailsCardData {
  final Map<String, String> items;
  final String primaryText;
  final String secondaryText;

  TransactionDetailsCardData({required this.items, required this.primaryText, required this.secondaryText});
}
