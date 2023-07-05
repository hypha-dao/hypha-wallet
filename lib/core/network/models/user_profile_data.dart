import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_data.freezed.dart';
part 'user_profile_data.g.dart';

@freezed
class UserProfileData with _$UserProfileData {
  const UserProfileData._();

  factory UserProfileData({
    required String accountName,
    @Default(null) String? userImage,
    @Default(null) String? bio,
    @Default(null) String? userName,
  }) = _UserProfileData;

  factory UserProfileData.fromJson(Map<String, dynamic> json) => _$UserProfileDataFromJson(json);

  String get userNameOrAccount  => userName != null ? userName! : accountName;
}
