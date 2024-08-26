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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) {
  return _UserProfileData.fromJson(json);
}

/// @nodoc
mixin _$UserProfileData {
  String get accountName => throw _privateConstructorUsedError;
  Network get network => throw _privateConstructorUsedError;
  String? get userImage => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;

  /// Serializes this UserProfileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {String accountName,
      Network network,
      String? userImage,
      String? bio,
      String? userName});
}

/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res, $Val extends UserProfileData>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? network = null,
    Object? userImage = freezed,
    Object? bio = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as Network,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileDataImplCopyWith<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  factory _$$UserProfileDataImplCopyWith(_$UserProfileDataImpl value,
          $Res Function(_$UserProfileDataImpl) then) =
      __$$UserProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accountName,
      Network network,
      String? userImage,
      String? bio,
      String? userName});
}

/// @nodoc
class __$$UserProfileDataImplCopyWithImpl<$Res>
    extends _$UserProfileDataCopyWithImpl<$Res, _$UserProfileDataImpl>
    implements _$$UserProfileDataImplCopyWith<$Res> {
  __$$UserProfileDataImplCopyWithImpl(
      _$UserProfileDataImpl _value, $Res Function(_$UserProfileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? network = null,
    Object? userImage = freezed,
    Object? bio = freezed,
    Object? userName = freezed,
  }) {
    return _then(_$UserProfileDataImpl(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as Network,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileDataImpl extends _UserProfileData {
  _$UserProfileDataImpl(
      {required this.accountName,
      this.network = Network.telos,
      this.userImage = null,
      this.bio = null,
      this.userName = null})
      : super._();

  factory _$UserProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileDataImplFromJson(json);

  @override
  final String accountName;
  @override
  @JsonKey()
  final Network network;
  @override
  @JsonKey()
  final String? userImage;
  @override
  @JsonKey()
  final String? bio;
  @override
  @JsonKey()
  final String? userName;

  @override
  String toString() {
    return 'UserProfileData(accountName: $accountName, network: $network, userImage: $userImage, bio: $bio, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileDataImpl &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountName, network, userImage, bio, userName);

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      __$$UserProfileDataImplCopyWithImpl<_$UserProfileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileDataImplToJson(
      this,
    );
  }
}

abstract class _UserProfileData extends UserProfileData {
  factory _UserProfileData(
      {required final String accountName,
      final Network network,
      final String? userImage,
      final String? bio,
      final String? userName}) = _$UserProfileDataImpl;
  _UserProfileData._() : super._();

  factory _UserProfileData.fromJson(Map<String, dynamic> json) =
      _$UserProfileDataImpl.fromJson;

  @override
  String get accountName;
  @override
  Network get network;
  @override
  String? get userImage;
  @override
  String? get bio;
  @override
  String? get userName;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
