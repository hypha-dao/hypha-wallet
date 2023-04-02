class ProfileData {
  final String? avatarUrl;
  final String? name;
  final String account;
  final String? bio;
  final CryptoAccountData? bitCoinData;
  final CryptoAccountData? eosData;
  final String? s3Identity;
  final String? avatar;

  ProfileData({
    required this.name,
    required this.account,
    this.avatarUrl,
    this.bio,
    this.bitCoinData,
    this.eosData,
    this.s3Identity,
    this.avatar,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) {
    final publicData = json['publicData'];
    final name = publicData['name'];
    final account = json['eosAccount'];
    final avatarUrl = json['avatarUrl'];
    final bio = publicData['bio'];
    print('url: $avatarUrl');
    return ProfileData(
      name: name,
      account: account,
      avatarUrl: avatarUrl,
      bio: bio,
    );
  }

  factory ProfileData.fromPPPDataJson(Map<String, dynamic> json) {
    final account = json['eosAccount'];
    final publicData = json['publicData'];
    final avatar = publicData['avatar'];
    final s3Identity = publicData['s3Identity'];
    final name = publicData['name'];
    final bio = publicData['bio'];
    return ProfileData(
      name: name,
      account: account,
      avatarUrl: avatar,
      bio: bio,
      s3Identity: s3Identity,
      avatar: avatar,
    );
  }

  ProfileData updateBio(String? bio) => ProfileData(
        name: name,
        account: account,
        bio: bio,
        avatar: avatar,
        avatarUrl: avatarUrl,
        bitCoinData: bitCoinData,
        eosData: eosData,
        s3Identity: s3Identity,
      );

  ProfileData removeAvatar() => ProfileData(
        name: name,
        account: account,
        bio: bio,
        avatar: null,
        avatarUrl: null,
        bitCoinData: bitCoinData,
        eosData: eosData,
        s3Identity: s3Identity,
      );

  String? getAvatarUrl() {
    return avatarUrl;
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
