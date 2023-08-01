import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';

class ProfileData {
  final String? avatarUrl;
  final String? name;
  final String account;
  final String? bio;
  final CryptoAccountData? bitCoinData;
  final CryptoAccountData? eosData;
  final String? s3Identity;
  final String? avatar;
  final bool? deleted;
  final Network network;
  final List<DaoData> daos;

  UserProfileData get user => UserProfileData(accountName: account, network: network);

  ProfileData({
    required this.name,
    required this.account,
    this.avatarUrl,
    this.bio,
    this.bitCoinData,
    this.eosData,
    this.s3Identity,
    this.avatar,
    this.deleted,
    required this.network,
    required this.daos,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json, Network network, List<DaoData> daos) {
    final account = json['eosAccount'];
    final avatarUrl = json['avatarUrl'];
    final publicData = json['publicData'];
    final name = publicData['name'];
    final bio = publicData['bio'];
    final deleted = publicData['deleted'];
    return ProfileData(
      name: name,
      account: account,
      avatarUrl: avatarUrl,
      bio: bio,
      deleted: deleted,
      network: network,
      daos: daos,
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
        network: network,
        daos: daos,
      );

  ProfileData updateName(String? name) => ProfileData(
        name: name,
        account: account,
        bio: bio,
        avatar: avatar,
        avatarUrl: avatarUrl,
        bitCoinData: bitCoinData,
        eosData: eosData,
        s3Identity: s3Identity,
        network: network,
        daos: daos,
      );

  ProfileData updateDaos(List<DaoData> daos) => ProfileData(
    name: name,
    account: account,
    bio: bio,
    avatar: avatar,
    avatarUrl: avatarUrl,
    bitCoinData: bitCoinData,
    eosData: eosData,
    s3Identity: s3Identity,
    network: network,
    daos: daos,
  );

  ProfileData updateImageAvatar(String avatar) => ProfileData(
        name: name,
        account: account,
        bio: bio,
        avatar: avatar,
        avatarUrl: avatar,
        bitCoinData: bitCoinData,
        eosData: eosData,
        s3Identity: s3Identity,
        network: network,
        daos: daos,
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
        network: network,
        daos: daos,
      );
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
