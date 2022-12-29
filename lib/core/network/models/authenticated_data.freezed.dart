// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticated_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticatedData _$AuthenticatedDataFromJson(Map<String, dynamic> json) {
  return _AuthenticatedData.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatedData {
  String get account => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatedDataCopyWith<AuthenticatedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedDataCopyWith<$Res> {
  factory $AuthenticatedDataCopyWith(
          AuthenticatedData value, $Res Function(AuthenticatedData) then) =
      _$AuthenticatedDataCopyWithImpl<$Res, AuthenticatedData>;
  @useResult
  $Res call({String account, String token});
}

/// @nodoc
class _$AuthenticatedDataCopyWithImpl<$Res, $Val extends AuthenticatedData>
    implements $AuthenticatedDataCopyWith<$Res> {
  _$AuthenticatedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticatedDataCopyWith<$Res>
    implements $AuthenticatedDataCopyWith<$Res> {
  factory _$$_AuthenticatedDataCopyWith(_$_AuthenticatedData value,
          $Res Function(_$_AuthenticatedData) then) =
      __$$_AuthenticatedDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String account, String token});
}

/// @nodoc
class __$$_AuthenticatedDataCopyWithImpl<$Res>
    extends _$AuthenticatedDataCopyWithImpl<$Res, _$_AuthenticatedData>
    implements _$$_AuthenticatedDataCopyWith<$Res> {
  __$$_AuthenticatedDataCopyWithImpl(
      _$_AuthenticatedData _value, $Res Function(_$_AuthenticatedData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? token = null,
  }) {
    return _then(_$_AuthenticatedData(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticatedData implements _AuthenticatedData {
  _$_AuthenticatedData({required this.account, required this.token});

  factory _$_AuthenticatedData.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticatedDataFromJson(json);

  @override
  final String account;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthenticatedData(account: $account, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatedData &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedDataCopyWith<_$_AuthenticatedData> get copyWith =>
      __$$_AuthenticatedDataCopyWithImpl<_$_AuthenticatedData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticatedDataToJson(
      this,
    );
  }
}

abstract class _AuthenticatedData implements AuthenticatedData {
  factory _AuthenticatedData(
      {required final String account,
      required final String token}) = _$_AuthenticatedData;

  factory _AuthenticatedData.fromJson(Map<String, dynamic> json) =
      _$_AuthenticatedData.fromJson;

  @override
  String get account;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatedDataCopyWith<_$_AuthenticatedData> get copyWith =>
      throw _privateConstructorUsedError;
}
