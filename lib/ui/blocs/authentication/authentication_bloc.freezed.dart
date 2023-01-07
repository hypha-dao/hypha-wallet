// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthenticationStatus status)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
    required TResult Function(UserProfileData data) onAuthenticatedDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
    TResult? Function(UserProfileData data)? onAuthenticatedDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    TResult Function(UserProfileData data)? onAuthenticatedDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_AuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
    required TResult Function(_OnAuthenticatedDataChanged value)
        onAuthenticatedDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthentication value)? initial,
    TResult? Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult? Function(_OnAuthenticatedDataChanged value)?
        onAuthenticatedDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult Function(_OnAuthenticatedDataChanged value)?
        onAuthenticatedDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialAuthenticationCopyWith<$Res> {
  factory _$$_InitialAuthenticationCopyWith(_$_InitialAuthentication value,
          $Res Function(_$_InitialAuthentication) then) =
      __$$_InitialAuthenticationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialAuthenticationCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_InitialAuthentication>
    implements _$$_InitialAuthenticationCopyWith<$Res> {
  __$$_InitialAuthenticationCopyWithImpl(_$_InitialAuthentication _value,
      $Res Function(_$_InitialAuthentication) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialAuthentication implements _InitialAuthentication {
  const _$_InitialAuthentication();

  @override
  String toString() {
    return 'AuthenticationEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialAuthentication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthenticationStatus status)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
    required TResult Function(UserProfileData data) onAuthenticatedDataChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
    TResult? Function(UserProfileData data)? onAuthenticatedDataChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    TResult Function(UserProfileData data)? onAuthenticatedDataChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_AuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
    required TResult Function(_OnAuthenticatedDataChanged value)
        onAuthenticatedDataChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthentication value)? initial,
    TResult? Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult? Function(_OnAuthenticatedDataChanged value)?
        onAuthenticatedDataChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult Function(_OnAuthenticatedDataChanged value)?
        onAuthenticatedDataChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAuthentication implements AuthenticationEvent {
  const factory _InitialAuthentication() = _$_InitialAuthentication;
}

/// @nodoc
abstract class _$$_AuthenticationStatusChangedCopyWith<$Res> {
  factory _$$_AuthenticationStatusChangedCopyWith(
          _$_AuthenticationStatusChanged value,
          $Res Function(_$_AuthenticationStatusChanged) then) =
      __$$_AuthenticationStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationStatus status});
}

/// @nodoc
class __$$_AuthenticationStatusChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$_AuthenticationStatusChanged>
    implements _$$_AuthenticationStatusChangedCopyWith<$Res> {
  __$$_AuthenticationStatusChangedCopyWithImpl(
      _$_AuthenticationStatusChanged _value,
      $Res Function(_$_AuthenticationStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_AuthenticationStatusChanged(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$_AuthenticationStatusChanged implements _AuthenticationStatusChanged {
  const _$_AuthenticationStatusChanged(this.status);

  @override
  final AuthenticationStatus status;

  @override
  String toString() {
    return 'AuthenticationEvent.authenticationStatusChanged(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStatusChanged &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationStatusChangedCopyWith<_$_AuthenticationStatusChanged>
      get copyWith => __$$_AuthenticationStatusChangedCopyWithImpl<
          _$_AuthenticationStatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthenticationStatus status)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
    required TResult Function(UserProfileData data) onAuthenticatedDataChanged,
  }) {
    return authenticationStatusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
    TResult? Function(UserProfileData data)? onAuthenticatedDataChanged,
  }) {
    return authenticationStatusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    TResult Function(UserProfileData data)? onAuthenticatedDataChanged,
    required TResult orElse(),
  }) {
    if (authenticationStatusChanged != null) {
      return authenticationStatusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_AuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
    required TResult Function(_OnAuthenticatedDataChanged value)
        onAuthenticatedDataChanged,
  }) {
    return authenticationStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthentication value)? initial,
    TResult? Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult? Function(_OnAuthenticatedDataChanged value)?
        onAuthenticatedDataChanged,
  }) {
    return authenticationStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult Function(_OnAuthenticatedDataChanged value)?
        onAuthenticatedDataChanged,
    required TResult orElse(),
  }) {
    if (authenticationStatusChanged != null) {
      return authenticationStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStatusChanged implements AuthenticationEvent {
  const factory _AuthenticationStatusChanged(
      final AuthenticationStatus status) = _$_AuthenticationStatusChanged;

  AuthenticationStatus get status;
  @JsonKey(ignore: true)
  _$$_AuthenticationStatusChangedCopyWith<_$_AuthenticationStatusChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticationLogoutRequestedCopyWith<$Res> {
  factory _$$_AuthenticationLogoutRequestedCopyWith(
          _$_AuthenticationLogoutRequested value,
          $Res Function(_$_AuthenticationLogoutRequested) then) =
      __$$_AuthenticationLogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationLogoutRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$_AuthenticationLogoutRequested>
    implements _$$_AuthenticationLogoutRequestedCopyWith<$Res> {
  __$$_AuthenticationLogoutRequestedCopyWithImpl(
      _$_AuthenticationLogoutRequested _value,
      $Res Function(_$_AuthenticationLogoutRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticationLogoutRequested
    implements _AuthenticationLogoutRequested {
  const _$_AuthenticationLogoutRequested();

  @override
  String toString() {
    return 'AuthenticationEvent.authenticationLogoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationLogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthenticationStatus status)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
    required TResult Function(UserProfileData data) onAuthenticatedDataChanged,
  }) {
    return authenticationLogoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
    TResult? Function(UserProfileData data)? onAuthenticatedDataChanged,
  }) {
    return authenticationLogoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    TResult Function(UserProfileData data)? onAuthenticatedDataChanged,
    required TResult orElse(),
  }) {
    if (authenticationLogoutRequested != null) {
      return authenticationLogoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_AuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
    required TResult Function(_OnAuthenticatedDataChanged value)
        onAuthenticatedDataChanged,
  }) {
    return authenticationLogoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthentication value)? initial,
    TResult? Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult? Function(_OnAuthenticatedDataChanged value)?
        onAuthenticatedDataChanged,
  }) {
    return authenticationLogoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult Function(_OnAuthenticatedDataChanged value)?
        onAuthenticatedDataChanged,
    required TResult orElse(),
  }) {
    if (authenticationLogoutRequested != null) {
      return authenticationLogoutRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationLogoutRequested implements AuthenticationEvent {
  const factory _AuthenticationLogoutRequested() =
      _$_AuthenticationLogoutRequested;
}

/// @nodoc
abstract class _$$_OnAuthenticatedDataChangedCopyWith<$Res> {
  factory _$$_OnAuthenticatedDataChangedCopyWith(
          _$_OnAuthenticatedDataChanged value,
          $Res Function(_$_OnAuthenticatedDataChanged) then) =
      __$$_OnAuthenticatedDataChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfileData data});

  $UserProfileDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_OnAuthenticatedDataChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$_OnAuthenticatedDataChanged>
    implements _$$_OnAuthenticatedDataChangedCopyWith<$Res> {
  __$$_OnAuthenticatedDataChangedCopyWithImpl(
      _$_OnAuthenticatedDataChanged _value,
      $Res Function(_$_OnAuthenticatedDataChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_OnAuthenticatedDataChanged(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserProfileData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res> get data {
    return $UserProfileDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_OnAuthenticatedDataChanged implements _OnAuthenticatedDataChanged {
  const _$_OnAuthenticatedDataChanged(this.data);

  @override
  final UserProfileData data;

  @override
  String toString() {
    return 'AuthenticationEvent.onAuthenticatedDataChanged(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnAuthenticatedDataChanged &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnAuthenticatedDataChangedCopyWith<_$_OnAuthenticatedDataChanged>
      get copyWith => __$$_OnAuthenticatedDataChangedCopyWithImpl<
          _$_OnAuthenticatedDataChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthenticationStatus status)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
    required TResult Function(UserProfileData data) onAuthenticatedDataChanged,
  }) {
    return onAuthenticatedDataChanged(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
    TResult? Function(UserProfileData data)? onAuthenticatedDataChanged,
  }) {
    return onAuthenticatedDataChanged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    TResult Function(UserProfileData data)? onAuthenticatedDataChanged,
    required TResult orElse(),
  }) {
    if (onAuthenticatedDataChanged != null) {
      return onAuthenticatedDataChanged(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_AuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
    required TResult Function(_OnAuthenticatedDataChanged value)
        onAuthenticatedDataChanged,
  }) {
    return onAuthenticatedDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthentication value)? initial,
    TResult? Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult? Function(_OnAuthenticatedDataChanged value)?
        onAuthenticatedDataChanged,
  }) {
    return onAuthenticatedDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult Function(_OnAuthenticatedDataChanged value)?
        onAuthenticatedDataChanged,
    required TResult orElse(),
  }) {
    if (onAuthenticatedDataChanged != null) {
      return onAuthenticatedDataChanged(this);
    }
    return orElse();
  }
}

abstract class _OnAuthenticatedDataChanged implements AuthenticationEvent {
  const factory _OnAuthenticatedDataChanged(final UserProfileData data) =
      _$_OnAuthenticatedDataChanged;

  UserProfileData get data;
  @JsonKey(ignore: true)
  _$$_OnAuthenticatedDataChangedCopyWith<_$_OnAuthenticatedDataChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  UserProfileData? get authenticatedData => throw _privateConstructorUsedError;
  UserAuthData? get userAuthData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserProfileData authenticatedData, UserAuthData userAuthData)
        authenticated,
    required TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)
        unAuthenticated,
    required TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)
        unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UserProfileData authenticatedData, UserAuthData userAuthData)?
        authenticated,
    TResult? Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unAuthenticated,
    TResult? Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserProfileData authenticatedData, UserAuthData userAuthData)?
        authenticated,
    TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unAuthenticated,
    TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call({UserProfileData authenticatedData, UserAuthData userAuthData});

  $UserProfileDataCopyWith<$Res>? get authenticatedData;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticatedData = null,
    Object? userAuthData = null,
  }) {
    return _then(_value.copyWith(
      authenticatedData: null == authenticatedData
          ? _value.authenticatedData!
          : authenticatedData // ignore: cast_nullable_to_non_nullable
              as UserProfileData,
      userAuthData: null == userAuthData
          ? _value.userAuthData!
          : userAuthData // ignore: cast_nullable_to_non_nullable
              as UserAuthData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res>? get authenticatedData {
    if (_value.authenticatedData == null) {
      return null;
    }

    return $UserProfileDataCopyWith<$Res>(_value.authenticatedData!, (value) {
      return _then(_value.copyWith(authenticatedData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserProfileData authenticatedData, UserAuthData userAuthData});

  @override
  $UserProfileDataCopyWith<$Res> get authenticatedData;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticatedData = null,
    Object? userAuthData = null,
  }) {
    return _then(_$_Authenticated(
      null == authenticatedData
          ? _value.authenticatedData
          : authenticatedData // ignore: cast_nullable_to_non_nullable
              as UserProfileData,
      null == userAuthData
          ? _value.userAuthData
          : userAuthData // ignore: cast_nullable_to_non_nullable
              as UserAuthData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res> get authenticatedData {
    return $UserProfileDataCopyWith<$Res>(_value.authenticatedData, (value) {
      return _then(_value.copyWith(authenticatedData: value));
    });
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.authenticatedData, this.userAuthData);

  @override
  final UserProfileData authenticatedData;
  @override
  final UserAuthData userAuthData;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(authenticatedData: $authenticatedData, userAuthData: $userAuthData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authenticated &&
            (identical(other.authenticatedData, authenticatedData) ||
                other.authenticatedData == authenticatedData) &&
            (identical(other.userAuthData, userAuthData) ||
                other.userAuthData == userAuthData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticatedData, userAuthData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      __$$_AuthenticatedCopyWithImpl<_$_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserProfileData authenticatedData, UserAuthData userAuthData)
        authenticated,
    required TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)
        unAuthenticated,
    required TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)
        unknown,
  }) {
    return authenticated(authenticatedData, userAuthData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UserProfileData authenticatedData, UserAuthData userAuthData)?
        authenticated,
    TResult? Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unAuthenticated,
    TResult? Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unknown,
  }) {
    return authenticated?.call(authenticatedData, userAuthData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserProfileData authenticatedData, UserAuthData userAuthData)?
        authenticated,
    TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unAuthenticated,
    TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unknown,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(authenticatedData, userAuthData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Unknown value) unknown,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthenticationState {
  const factory _Authenticated(final UserProfileData authenticatedData,
      final UserAuthData userAuthData) = _$_Authenticated;

  @override
  UserProfileData get authenticatedData;
  @override
  UserAuthData get userAuthData;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserProfileData? authenticatedData, UserAuthData? userAuthData});

  @override
  $UserProfileDataCopyWith<$Res>? get authenticatedData;
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_UnAuthenticated>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticatedData = freezed,
    Object? userAuthData = freezed,
  }) {
    return _then(_$_UnAuthenticated(
      authenticatedData: freezed == authenticatedData
          ? _value.authenticatedData
          : authenticatedData // ignore: cast_nullable_to_non_nullable
              as UserProfileData?,
      userAuthData: freezed == userAuthData
          ? _value.userAuthData
          : userAuthData // ignore: cast_nullable_to_non_nullable
              as UserAuthData?,
    ));
  }
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated({this.authenticatedData, this.userAuthData});

  @override
  final UserProfileData? authenticatedData;
  @override
  final UserAuthData? userAuthData;

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticated(authenticatedData: $authenticatedData, userAuthData: $userAuthData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnAuthenticated &&
            (identical(other.authenticatedData, authenticatedData) ||
                other.authenticatedData == authenticatedData) &&
            (identical(other.userAuthData, userAuthData) ||
                other.userAuthData == userAuthData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticatedData, userAuthData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      __$$_UnAuthenticatedCopyWithImpl<_$_UnAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserProfileData authenticatedData, UserAuthData userAuthData)
        authenticated,
    required TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)
        unAuthenticated,
    required TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)
        unknown,
  }) {
    return unAuthenticated(authenticatedData, userAuthData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UserProfileData authenticatedData, UserAuthData userAuthData)?
        authenticated,
    TResult? Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unAuthenticated,
    TResult? Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unknown,
  }) {
    return unAuthenticated?.call(authenticatedData, userAuthData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserProfileData authenticatedData, UserAuthData userAuthData)?
        authenticated,
    TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unAuthenticated,
    TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unknown,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(authenticatedData, userAuthData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AuthenticationState {
  const factory _UnAuthenticated(
      {final UserProfileData? authenticatedData,
      final UserAuthData? userAuthData}) = _$_UnAuthenticated;

  @override
  UserProfileData? get authenticatedData;
  @override
  UserAuthData? get userAuthData;
  @override
  @JsonKey(ignore: true)
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserProfileData? authenticatedData, UserAuthData? userAuthData});

  @override
  $UserProfileDataCopyWith<$Res>? get authenticatedData;
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_Unknown>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticatedData = freezed,
    Object? userAuthData = freezed,
  }) {
    return _then(_$_Unknown(
      authenticatedData: freezed == authenticatedData
          ? _value.authenticatedData
          : authenticatedData // ignore: cast_nullable_to_non_nullable
              as UserProfileData?,
      userAuthData: freezed == userAuthData
          ? _value.userAuthData
          : userAuthData // ignore: cast_nullable_to_non_nullable
              as UserAuthData?,
    ));
  }
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown({this.authenticatedData, this.userAuthData});

  @override
  final UserProfileData? authenticatedData;
  @override
  final UserAuthData? userAuthData;

  @override
  String toString() {
    return 'AuthenticationState.unknown(authenticatedData: $authenticatedData, userAuthData: $userAuthData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unknown &&
            (identical(other.authenticatedData, authenticatedData) ||
                other.authenticatedData == authenticatedData) &&
            (identical(other.userAuthData, userAuthData) ||
                other.userAuthData == userAuthData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticatedData, userAuthData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      __$$_UnknownCopyWithImpl<_$_Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserProfileData authenticatedData, UserAuthData userAuthData)
        authenticated,
    required TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)
        unAuthenticated,
    required TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)
        unknown,
  }) {
    return unknown(authenticatedData, userAuthData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UserProfileData authenticatedData, UserAuthData userAuthData)?
        authenticated,
    TResult? Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unAuthenticated,
    TResult? Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unknown,
  }) {
    return unknown?.call(authenticatedData, userAuthData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserProfileData authenticatedData, UserAuthData userAuthData)?
        authenticated,
    TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unAuthenticated,
    TResult Function(
            UserProfileData? authenticatedData, UserAuthData? userAuthData)?
        unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(authenticatedData, userAuthData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements AuthenticationState {
  const factory _Unknown(
      {final UserProfileData? authenticatedData,
      final UserAuthData? userAuthData}) = _$_Unknown;

  @override
  UserProfileData? get authenticatedData;
  @override
  UserAuthData? get userAuthData;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}
