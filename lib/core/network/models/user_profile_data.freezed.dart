// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) {
  return _UserProfileData.fromJson(json);
}

/// @nodoc
mixin _$UserProfileData {
  String get accountName => throw _privateConstructorUsedError;
  String? get userImage => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileDataCopyWith<UserProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDataCopyWith<$Res> {
  factory $UserProfileDataCopyWith(
          UserProfileData value, $Res Function(UserProfileData) then) =
      _$UserProfileDataCopyWithImpl<$Res, UserProfileData>;
  @useResult
  $Res call(
      {String accountName, String? userImage, String? bio, String userName});
}

/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res, $Val extends UserProfileData>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? userImage = freezed,
    Object? bio = freezed,
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserProfileDataCopyWith<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  factory _$$_UserProfileDataCopyWith(
          _$_UserProfileData value, $Res Function(_$_UserProfileData) then) =
      __$$_UserProfileDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accountName, String? userImage, String? bio, String userName});
}

/// @nodoc
class __$$_UserProfileDataCopyWithImpl<$Res>
    extends _$UserProfileDataCopyWithImpl<$Res, _$_UserProfileData>
    implements _$$_UserProfileDataCopyWith<$Res> {
  __$$_UserProfileDataCopyWithImpl(
      _$_UserProfileData _value, $Res Function(_$_UserProfileData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? userImage = freezed,
    Object? bio = freezed,
    Object? userName = null,
  }) {
    return _then(_$_UserProfileData(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileData implements _UserProfileData {
  _$_UserProfileData(
      {required this.accountName,
      this.userImage = null,
      this.bio = null,
      required this.userName});

  factory _$_UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileDataFromJson(json);

  @override
  final String accountName;
  @override
  @JsonKey()
  final String? userImage;
  @override
  @JsonKey()
  final String? bio;
  @override
  final String userName;

  @override
  String toString() {
    return 'UserProfileData(accountName: $accountName, userImage: $userImage, bio: $bio, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileData &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountName, userImage, bio, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProfileDataCopyWith<_$_UserProfileData> get copyWith =>
      __$$_UserProfileDataCopyWithImpl<_$_UserProfileData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileDataToJson(
      this,
    );
  }
}

abstract class _UserProfileData implements UserProfileData {
  factory _UserProfileData(
      {required final String accountName,
      final String? userImage,
      final String? bio,
      required final String userName}) = _$_UserProfileData;

  factory _UserProfileData.fromJson(Map<String, dynamic> json) =
      _$_UserProfileData.fromJson;

  @override
  String get accountName;
  @override
  String? get userImage;
  @override
  String? get bio;
  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileDataCopyWith<_$_UserProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}
