class ProfileData {
  final String? image;
  final String name;
  final String account;
  final String? bio;
  final CryptoAccountData? bitCoinData;
  final CryptoAccountData? eosData;

  ProfileData({
    this.image,
    required this.name,
    required this.account,
    this.bio,
    this.bitCoinData,
    this.eosData,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) {
    final publicData = json['publicData'];
    final name = publicData['name'] ?? '';
    final account = json['eosAccount'];
    final image = json['avatarUrl'];
    final bio = publicData['bio'];
    return ProfileData(
      name: name,
      account: account,
      image: image,
      bio: bio,
    );
  }
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
