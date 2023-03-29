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
    //      isVerified: 0,
    //  customFields: []
    //  btcAddress: "bc1qgfr6uwnknwxrjt67xsr9pnfkly97kxcm5rg9xh",
    //  bio: "Seeds Smart Contracts. DHO Tech.",
    //  timeZone: "Singapore Standard Time",
    //  drafts:
    //        avatar: "illumination-1669189442183.png",
    //  tags: []
    //  name: "Nikolaus Heger",
    //  nickname: "illumination",
    //  eosMemo: null,
    //  s3Identity: "us-east-1:2268a23d-8016-4ea9-bc85-7bf59ed86436",
    //  ethAddress: "0xeFAAA27a21768Cba31bb91988d8486a5212b388d",
    //  eosAccount: "illum1nation",
    //  defaultAddress: "eosaccount"
    //  avatar: "illumination-1669189442183.png",

    final account = json['eosAccount'];
    final publicData = json['publicData'];

    final avatar = publicData['avatar'];
    final s3Identity = publicData['s3Identity'];
    final name = publicData['name'];
    final bio = publicData['bio'];
    return ProfileData(
      name: name,
      account: account,
      avatarUrl: null,
      bio: bio,
      s3Identity: s3Identity,
      avatar: avatar,
    );
  }

  String? getAvatarUrl() {
    if (avatarUrl != null) {
      return avatarUrl;
    } else if (s3Identity != null && avatar != null) {
      throw 'not yet implemented';
      // TODO(NIK): the below doesn't work, this URL doesn't work
      // to resolve an s3 avatar URL, some work is required.
      // final s3BucketName = 'ppp-service-prod-attachmentsbucket-1qc5rzodik7x6';
      // final userFolder = Uri.encodeComponent(s3Identity!);
      // final folder = 'protected';
      // final filename = avatarS3Key!;
      // final url = 'https://$s3BucketName.s3.amazonaws.com/$folder/$userFolder/$filename';
      // print('avatar URL = $url');
      //return url;
    } else {
      return null;
    }
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
