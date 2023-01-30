class ProfileData {
  final String? image;
  final String name;
  final String account;
  final String? bio;
  final CryptoAccountData? bitCoinData;
  final CryptoAccountData? eosData;
  final List<OrganizationData> organizations;

  ProfileData({
    this.image,
    required this.name,
    required this.account,
    this.bio,
    this.bitCoinData,
    this.eosData,
    required this.organizations,
  });
}

class CryptoAccountData {
  final String cryptoName;
  final String accountAddress;
  final String? accountName;
  final String imageUrl;
  final bool isSelected;

  CryptoAccountData({
    required this.accountAddress,
    this.accountName,
    required this.imageUrl,
    required this.cryptoName,
    required this.isSelected,
  });
}

class OrganizationData {
  final String name;
  final String? image;

  OrganizationData({required this.name, this.image});
}
