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
    required TResult Function() attemptToAuthenticate,
    required TResult Function(String token) onFCMTokenChanged,
    required TResult Function() authenticationLogoutRequested,
    required TResult Function(UserProfileData data) onUserProfileDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult? Function()? attemptToAuthenticate,
    TResult? Function(String token)? onFCMTokenChanged,
    TResult? Function()? authenticationLogoutRequested,
    TResult? Function(UserProfileData data)? onUserProfileDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult Function()? attemptToAuthenticate,
    TResult Function(String token)? onFCMTokenChanged,
    TResult Function()? authenticationLogoutRequested,
    TResult Function(UserProfileData data)? onUserProfileDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_AuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(_AttemptToAuthenticate value)
        attemptToAuthenticate,
    required TResult Function(_OnFCMTokenChanged value) onFCMTokenChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
    required TResult Function(_OnAuthenticatedDataChanged value)
        onUserProfileDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthentication value)? initial,
    TResult? Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult? Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult? Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult? Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
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
    required TResult Function() attemptToAuthenticate,
    required TResult Function(String token) onFCMTokenChanged,
    required TResult Function() authenticationLogoutRequested,
    required TResult Function(UserProfileData data) onUserProfileDataChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult? Function()? attemptToAuthenticate,
    TResult? Function(String token)? onFCMTokenChanged,
    TResult? Function()? authenticationLogoutRequested,
    TResult? Function(UserProfileData data)? onUserProfileDataChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult Function()? attemptToAuthenticate,
    TResult Function(String token)? onFCMTokenChanged,
    TResult Function()? authenticationLogoutRequested,
    TResult Function(UserProfileData data)? onUserProfileDataChanged,
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
    required TResult Function(_AttemptToAuthenticate value)
        attemptToAuthenticate,
    required TResult Function(_OnFCMTokenChanged value) onFCMTokenChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
    required TResult Function(_OnAuthenticatedDataChanged value)
        onUserProfileDataChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthentication value)? initial,
    TResult? Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult? Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult? Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult? Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
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
    required TResult Function() attemptToAuthenticate,
    required TResult Function(String token) onFCMTokenChanged,
    required TResult Function() authenticationLogoutRequested,
    required TResult Function(UserProfileData data) onUserProfileDataChanged,
  }) {
    return authenticationStatusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult? Function()? attemptToAuthenticate,
    TResult? Function(String token)? onFCMTokenChanged,
    TResult? Function()? authenticationLogoutRequested,
    TResult? Function(UserProfileData data)? onUserProfileDataChanged,
  }) {
    return authenticationStatusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult Function()? attemptToAuthenticate,
    TResult Function(String token)? onFCMTokenChanged,
    TResult Function()? authenticationLogoutRequested,
    TResult Function(UserProfileData data)? onUserProfileDataChanged,
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
    required TResult Function(_AttemptToAuthenticate value)
        attemptToAuthenticate,
    required TResult Function(_OnFCMTokenChanged value) onFCMTokenChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
    required TResult Function(_OnAuthenticatedDataChanged value)
        onUserProfileDataChanged,
  }) {
    return authenticationStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthentication value)? initial,
    TResult? Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult? Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult? Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult? Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
  }) {
    return authenticationStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
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
abstract class _$$_AttemptToAuthenticateCopyWith<$Res> {
  factory _$$_AttemptToAuthenticateCopyWith(_$_AttemptToAuthenticate value,
          $Res Function(_$_AttemptToAuthenticate) then) =
      __$$_AttemptToAuthenticateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AttemptToAuthenticateCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_AttemptToAuthenticate>
    implements _$$_AttemptToAuthenticateCopyWith<$Res> {
  __$$_AttemptToAuthenticateCopyWithImpl(_$_AttemptToAuthenticate _value,
      $Res Function(_$_AttemptToAuthenticate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AttemptToAuthenticate implements _AttemptToAuthenticate {
  const _$_AttemptToAuthenticate();

  @override
  String toString() {
    return 'AuthenticationEvent.attemptToAuthenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AttemptToAuthenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthenticationStatus status)
        authenticationStatusChanged,
    required TResult Function() attemptToAuthenticate,
    required TResult Function(String token) onFCMTokenChanged,
    required TResult Function() authenticationLogoutRequested,
    required TResult Function(UserProfileData data) onUserProfileDataChanged,
  }) {
    return attemptToAuthenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult? Function()? attemptToAuthenticate,
    TResult? Function(String token)? onFCMTokenChanged,
    TResult? Function()? authenticationLogoutRequested,
    TResult? Function(UserProfileData data)? onUserProfileDataChanged,
  }) {
    return attemptToAuthenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult Function()? attemptToAuthenticate,
    TResult Function(String token)? onFCMTokenChanged,
    TResult Function()? authenticationLogoutRequested,
    TResult Function(UserProfileData data)? onUserProfileDataChanged,
    required TResult orElse(),
  }) {
    if (attemptToAuthenticate != null) {
      return attemptToAuthenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_AuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(_AttemptToAuthenticate value)
        attemptToAuthenticate,
    required TResult Function(_OnFCMTokenChanged value) onFCMTokenChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
    required TResult Function(_OnAuthenticatedDataChanged value)
        onUserProfileDataChanged,
  }) {
    return attemptToAuthenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthentication value)? initial,
    TResult? Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult? Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult? Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult? Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
  }) {
    return attemptToAuthenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
    required TResult orElse(),
  }) {
    if (attemptToAuthenticate != null) {
      return attemptToAuthenticate(this);
    }
    return orElse();
  }
}

abstract class _AttemptToAuthenticate implements AuthenticationEvent {
  const factory _AttemptToAuthenticate() = _$_AttemptToAuthenticate;
}

/// @nodoc
abstract class _$$_OnFCMTokenChangedCopyWith<$Res> {
  factory _$$_OnFCMTokenChangedCopyWith(_$_OnFCMTokenChanged value,
          $Res Function(_$_OnFCMTokenChanged) then) =
      __$$_OnFCMTokenChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$_OnFCMTokenChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_OnFCMTokenChanged>
    implements _$$_OnFCMTokenChangedCopyWith<$Res> {
  __$$_OnFCMTokenChangedCopyWithImpl(
      _$_OnFCMTokenChanged _value, $Res Function(_$_OnFCMTokenChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_OnFCMTokenChanged(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnFCMTokenChanged implements _OnFCMTokenChanged {
  const _$_OnFCMTokenChanged(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthenticationEvent.onFCMTokenChanged(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnFCMTokenChanged &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnFCMTokenChangedCopyWith<_$_OnFCMTokenChanged> get copyWith =>
      __$$_OnFCMTokenChangedCopyWithImpl<_$_OnFCMTokenChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthenticationStatus status)
        authenticationStatusChanged,
    required TResult Function() attemptToAuthenticate,
    required TResult Function(String token) onFCMTokenChanged,
    required TResult Function() authenticationLogoutRequested,
    required TResult Function(UserProfileData data) onUserProfileDataChanged,
  }) {
    return onFCMTokenChanged(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult? Function()? attemptToAuthenticate,
    TResult? Function(String token)? onFCMTokenChanged,
    TResult? Function()? authenticationLogoutRequested,
    TResult? Function(UserProfileData data)? onUserProfileDataChanged,
  }) {
    return onFCMTokenChanged?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult Function()? attemptToAuthenticate,
    TResult Function(String token)? onFCMTokenChanged,
    TResult Function()? authenticationLogoutRequested,
    TResult Function(UserProfileData data)? onUserProfileDataChanged,
    required TResult orElse(),
  }) {
    if (onFCMTokenChanged != null) {
      return onFCMTokenChanged(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_AuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(_AttemptToAuthenticate value)
        attemptToAuthenticate,
    required TResult Function(_OnFCMTokenChanged value) onFCMTokenChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
    required TResult Function(_OnAuthenticatedDataChanged value)
        onUserProfileDataChanged,
  }) {
    return onFCMTokenChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthentication value)? initial,
    TResult? Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult? Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult? Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult? Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
  }) {
    return onFCMTokenChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
    required TResult orElse(),
  }) {
    if (onFCMTokenChanged != null) {
      return onFCMTokenChanged(this);
    }
    return orElse();
  }
}

abstract class _OnFCMTokenChanged implements AuthenticationEvent {
  const factory _OnFCMTokenChanged(final String token) = _$_OnFCMTokenChanged;

  String get token;
  @JsonKey(ignore: true)
  _$$_OnFCMTokenChangedCopyWith<_$_OnFCMTokenChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() attemptToAuthenticate,
    required TResult Function(String token) onFCMTokenChanged,
    required TResult Function() authenticationLogoutRequested,
    required TResult Function(UserProfileData data) onUserProfileDataChanged,
  }) {
    return authenticationLogoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult? Function()? attemptToAuthenticate,
    TResult? Function(String token)? onFCMTokenChanged,
    TResult? Function()? authenticationLogoutRequested,
    TResult? Function(UserProfileData data)? onUserProfileDataChanged,
  }) {
    return authenticationLogoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult Function()? attemptToAuthenticate,
    TResult Function(String token)? onFCMTokenChanged,
    TResult Function()? authenticationLogoutRequested,
    TResult Function(UserProfileData data)? onUserProfileDataChanged,
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
    required TResult Function(_AttemptToAuthenticate value)
        attemptToAuthenticate,
    required TResult Function(_OnFCMTokenChanged value) onFCMTokenChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
    required TResult Function(_OnAuthenticatedDataChanged value)
        onUserProfileDataChanged,
  }) {
    return authenticationLogoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthentication value)? initial,
    TResult? Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult? Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult? Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult? Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
  }) {
    return authenticationLogoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
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
    return 'AuthenticationEvent.onUserProfileDataChanged(data: $data)';
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
    required TResult Function() attemptToAuthenticate,
    required TResult Function(String token) onFCMTokenChanged,
    required TResult Function() authenticationLogoutRequested,
    required TResult Function(UserProfileData data) onUserProfileDataChanged,
  }) {
    return onUserProfileDataChanged(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult? Function()? attemptToAuthenticate,
    TResult? Function(String token)? onFCMTokenChanged,
    TResult? Function()? authenticationLogoutRequested,
    TResult? Function(UserProfileData data)? onUserProfileDataChanged,
  }) {
    return onUserProfileDataChanged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthenticationStatus status)? authenticationStatusChanged,
    TResult Function()? attemptToAuthenticate,
    TResult Function(String token)? onFCMTokenChanged,
    TResult Function()? authenticationLogoutRequested,
    TResult Function(UserProfileData data)? onUserProfileDataChanged,
    required TResult orElse(),
  }) {
    if (onUserProfileDataChanged != null) {
      return onUserProfileDataChanged(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthentication value) initial,
    required TResult Function(_AuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(_AttemptToAuthenticate value)
        attemptToAuthenticate,
    required TResult Function(_OnFCMTokenChanged value) onFCMTokenChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        authenticationLogoutRequested,
    required TResult Function(_OnAuthenticatedDataChanged value)
        onUserProfileDataChanged,
  }) {
    return onUserProfileDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthentication value)? initial,
    TResult? Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult? Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult? Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult? Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
  }) {
    return onUserProfileDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthentication value)? initial,
    TResult Function(_AuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AttemptToAuthenticate value)? attemptToAuthenticate,
    TResult Function(_OnFCMTokenChanged value)? onFCMTokenChanged,
    TResult Function(_AuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    TResult Function(_OnAuthenticatedDataChanged value)?
        onUserProfileDataChanged,
    required TResult orElse(),
  }) {
    if (onUserProfileDataChanged != null) {
      return onUserProfileDataChanged(this);
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
  AuthenticationStatus get authStatus => throw _privateConstructorUsedError;
  UserProfileData? get userProfileData => throw _privateConstructorUsedError;
  UserAuthData? get userAuthData => throw _privateConstructorUsedError;

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
  $Res call(
      {AuthenticationStatus authStatus,
      UserProfileData? userProfileData,
      UserAuthData? userAuthData});

  $UserProfileDataCopyWith<$Res>? get userProfileData;
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
    Object? authStatus = null,
    Object? userProfileData = freezed,
    Object? userAuthData = freezed,
  }) {
    return _then(_value.copyWith(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      userProfileData: freezed == userProfileData
          ? _value.userProfileData
          : userProfileData // ignore: cast_nullable_to_non_nullable
              as UserProfileData?,
      userAuthData: freezed == userAuthData
          ? _value.userAuthData
          : userAuthData // ignore: cast_nullable_to_non_nullable
              as UserAuthData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res>? get userProfileData {
    if (_value.userProfileData == null) {
      return null;
    }

    return $UserProfileDataCopyWith<$Res>(_value.userProfileData!, (value) {
      return _then(_value.copyWith(userProfileData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticationStateCopyWith(_$_AuthenticationState value,
          $Res Function(_$_AuthenticationState) then) =
      __$$_AuthenticationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthenticationStatus authStatus,
      UserProfileData? userProfileData,
      UserAuthData? userAuthData});

  @override
  $UserProfileDataCopyWith<$Res>? get userProfileData;
}

/// @nodoc
class __$$_AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_AuthenticationState>
    implements _$$_AuthenticationStateCopyWith<$Res> {
  __$$_AuthenticationStateCopyWithImpl(_$_AuthenticationState _value,
      $Res Function(_$_AuthenticationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? userProfileData = freezed,
    Object? userAuthData = freezed,
  }) {
    return _then(_$_AuthenticationState(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      userProfileData: freezed == userProfileData
          ? _value.userProfileData
          : userProfileData // ignore: cast_nullable_to_non_nullable
              as UserProfileData?,
      userAuthData: freezed == userAuthData
          ? _value.userAuthData
          : userAuthData // ignore: cast_nullable_to_non_nullable
              as UserAuthData?,
    ));
  }
}

/// @nodoc

class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState(
      {this.authStatus = const Unknown(),
      this.userProfileData,
      this.userAuthData});

  @override
  @JsonKey()
  final AuthenticationStatus authStatus;
  @override
  final UserProfileData? userProfileData;
  @override
  final UserAuthData? userAuthData;

  @override
  String toString() {
    return 'AuthenticationState(authStatus: $authStatus, userProfileData: $userProfileData, userAuthData: $userAuthData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationState &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.userProfileData, userProfileData) ||
                other.userProfileData == userProfileData) &&
            (identical(other.userAuthData, userAuthData) ||
                other.userAuthData == userAuthData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authStatus, userProfileData, userAuthData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      __$$_AuthenticationStateCopyWithImpl<_$_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {final AuthenticationStatus authStatus,
      final UserProfileData? userProfileData,
      final UserAuthData? userAuthData}) = _$_AuthenticationState;

  @override
  AuthenticationStatus get authStatus;
  @override
  UserProfileData? get userProfileData;
  @override
  UserAuthData? get userAuthData;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
