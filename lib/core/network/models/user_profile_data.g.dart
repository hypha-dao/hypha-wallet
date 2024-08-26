// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileDataImpl _$$UserProfileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileDataImpl(
      accountName: json['accountName'] as String,
      network: $enumDecodeNullable(_$NetworkEnumMap, json['network']) ??
          Network.telos,
      userImage: json['userImage'] as String? ?? null,
      bio: json['bio'] as String? ?? null,
      userName: json['userName'] as String? ?? null,
    );

Map<String, dynamic> _$$UserProfileDataImplToJson(
        _$UserProfileDataImpl instance) =>
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
