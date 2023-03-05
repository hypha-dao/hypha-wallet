// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileData _$$_UserProfileDataFromJson(Map<String, dynamic> json) =>
    _$_UserProfileData(
      accountName: json['accountName'] as String,
      userImage: json['userImage'] as String? ?? null,
      bio: json['bio'] as String? ?? null,
      userName: json['userName'] as String,
    );

Map<String, dynamic> _$$_UserProfileDataToJson(_$_UserProfileData instance) =>
    <String, dynamic>{
      'accountName': instance.accountName,
      'userImage': instance.userImage,
      'bio': instance.bio,
      'userName': instance.userName,
    };
