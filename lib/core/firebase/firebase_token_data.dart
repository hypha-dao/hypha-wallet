class FirebaseTokenData {
  final String network;
  final String contract;
  final String symbol;
  final String image;
  final String name;
  final int precision;
  final String? daoName;
  final int? daoId;
  String get id => '$network-$contract-$symbol';

  const FirebaseTokenData(
      {required this.network,
      required this.contract,
      required this.symbol,
      required this.image,
      required this.name,
      required this.precision,
      this.daoName,
      this.daoId});
}
