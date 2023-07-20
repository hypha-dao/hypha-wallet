// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileData _$$_UserProfileDataFromJson(Map<String, dynamic> json) =>
    _$_UserProfileData(
      accountName: json['accountName'] as String,
      network: $enumDecode(_$NetworkEnumMap, json['network']),
      userImage: json['userImage'] as String? ?? null,
      bio: json['bio'] as String? ?? null,
      userName: json['userName'] as String? ?? null,
    );

Map<String, dynamic> _$$_UserProfileDataToJson(_$_UserProfileData instance) =>
    <String, dynamic>{
      'accountName': instance.accountName,
      'network': _$NetworkEnumMap[instance.network]!,
      'userImage': instance.userImage,
      'bio': instance.bio,
      'userName': instance.userName,
    };

const _$NetworkEnumMap = {
  Network.telos: 'telos',
  Network.telosTestnet: 'telosTestnet',
  Network.eos: 'eos',
  Network.eosTestnet: 'eosTestnet',
};
