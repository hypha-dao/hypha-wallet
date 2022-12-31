import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_data.freezed.dart';
part 'user_profile_data.g.dart';

@freezed
class UserProfileData with _$UserProfileData {
  factory UserProfileData({
    required String accountName,
    @Default(null) String? userImage,
    required String userName,
  }) = _UserProfileData;

  factory UserProfileData.fromJson(Map<String, dynamic> json) => _$UserProfileDataFromJson(json);
}
