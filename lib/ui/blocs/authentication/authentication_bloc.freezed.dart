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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialAuthenticationImplCopyWith<$Res> {
  factory _$$InitialAuthenticationImplCopyWith(
          _$InitialAuthenticationImpl value,
          $Res Function(_$InitialAuthenticationImpl) then) =
      __$$InitialAuthenticationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialAuthenticationImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$InitialAuthenticationImpl>
    implements _$$InitialAuthenticationImplCopyWith<$Res> {
  __$$InitialAuthenticationImplCopyWithImpl(_$InitialAuthenticationImpl _value,
      $Res Function(_$InitialAuthenticationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialAuthenticationImpl implements _InitialAuthentication {
  const _$InitialAuthenticationImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialAuthenticationImpl);
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
  const factory _InitialAuthentication() = _$InitialAuthenticationImpl;
}

/// @nodoc
abstract class _$$AuthenticationStatusChangedImplCopyWith<$Res> {
  factory _$$AuthenticationStatusChangedImplCopyWith(
          _$AuthenticationStatusChangedImpl value,
          $Res Function(_$AuthenticationStatusChangedImpl) then) =
      __$$AuthenticationStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationStatus status});
}

/// @nodoc
class __$$AuthenticationStatusChangedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationStatusChangedImpl>
    implements _$$AuthenticationStatusChangedImplCopyWith<$Res> {
  __$$AuthenticationStatusChangedImplCopyWithImpl(
      _$AuthenticationStatusChangedImpl _value,
      $Res Function(_$AuthenticationStatusChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$AuthenticationStatusChangedImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$AuthenticationStatusChangedImpl
    implements _AuthenticationStatusChanged {
  const _$AuthenticationStatusChangedImpl(this.status);

  @override
  final AuthenticationStatus status;

  @override
  String toString() {
    return 'AuthenticationEvent.authenticationStatusChanged(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStatusChangedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStatusChangedImplCopyWith<_$AuthenticationStatusChangedImpl>
      get copyWith => __$$AuthenticationStatusChangedImplCopyWithImpl<
          _$AuthenticationStatusChangedImpl>(this, _$identity);

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
      final AuthenticationStatus status) = _$AuthenticationStatusChangedImpl;

  AuthenticationStatus get status;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationStatusChangedImplCopyWith<_$AuthenticationStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttemptToAuthenticateImplCopyWith<$Res> {
  factory _$$AttemptToAuthenticateImplCopyWith(
          _$AttemptToAuthenticateImpl value,
          $Res Function(_$AttemptToAuthenticateImpl) then) =
      __$$AttemptToAuthenticateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttemptToAuthenticateImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AttemptToAuthenticateImpl>
    implements _$$AttemptToAuthenticateImplCopyWith<$Res> {
  __$$AttemptToAuthenticateImplCopyWithImpl(_$AttemptToAuthenticateImpl _value,
      $Res Function(_$AttemptToAuthenticateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AttemptToAuthenticateImpl implements _AttemptToAuthenticate {
  const _$AttemptToAuthenticateImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.attemptToAuthenticate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttemptToAuthenticateImpl);
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
  const factory _AttemptToAuthenticate() = _$AttemptToAuthenticateImpl;
}

/// @nodoc
abstract class _$$OnFCMTokenChangedImplCopyWith<$Res> {
  factory _$$OnFCMTokenChangedImplCopyWith(_$OnFCMTokenChangedImpl value,
          $Res Function(_$OnFCMTokenChangedImpl) then) =
      __$$OnFCMTokenChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$OnFCMTokenChangedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$OnFCMTokenChangedImpl>
    implements _$$OnFCMTokenChangedImplCopyWith<$Res> {
  __$$OnFCMTokenChangedImplCopyWithImpl(_$OnFCMTokenChangedImpl _value,
      $Res Function(_$OnFCMTokenChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$OnFCMTokenChangedImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnFCMTokenChangedImpl implements _OnFCMTokenChanged {
  const _$OnFCMTokenChangedImpl(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthenticationEvent.onFCMTokenChanged(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnFCMTokenChangedImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnFCMTokenChangedImplCopyWith<_$OnFCMTokenChangedImpl> get copyWith =>
      __$$OnFCMTokenChangedImplCopyWithImpl<_$OnFCMTokenChangedImpl>(
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
  const factory _OnFCMTokenChanged(final String token) =
      _$OnFCMTokenChangedImpl;

  String get token;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnFCMTokenChangedImplCopyWith<_$OnFCMTokenChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationLogoutRequestedImplCopyWith<$Res> {
  factory _$$AuthenticationLogoutRequestedImplCopyWith(
          _$AuthenticationLogoutRequestedImpl value,
          $Res Function(_$AuthenticationLogoutRequestedImpl) then) =
      __$$AuthenticationLogoutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLogoutRequestedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationLogoutRequestedImpl>
    implements _$$AuthenticationLogoutRequestedImplCopyWith<$Res> {
  __$$AuthenticationLogoutRequestedImplCopyWithImpl(
      _$AuthenticationLogoutRequestedImpl _value,
      $Res Function(_$AuthenticationLogoutRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationLogoutRequestedImpl
    implements _AuthenticationLogoutRequested {
  const _$AuthenticationLogoutRequestedImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.authenticationLogoutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLogoutRequestedImpl);
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
      _$AuthenticationLogoutRequestedImpl;
}

/// @nodoc
abstract class _$$OnAuthenticatedDataChangedImplCopyWith<$Res> {
  factory _$$OnAuthenticatedDataChangedImplCopyWith(
          _$OnAuthenticatedDataChangedImpl value,
          $Res Function(_$OnAuthenticatedDataChangedImpl) then) =
      __$$OnAuthenticatedDataChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfileData data});

  $UserProfileDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OnAuthenticatedDataChangedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$OnAuthenticatedDataChangedImpl>
    implements _$$OnAuthenticatedDataChangedImplCopyWith<$Res> {
  __$$OnAuthenticatedDataChangedImplCopyWithImpl(
      _$OnAuthenticatedDataChangedImpl _value,
      $Res Function(_$OnAuthenticatedDataChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OnAuthenticatedDataChangedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserProfileData,
    ));
  }

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res> get data {
    return $UserProfileDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$OnAuthenticatedDataChangedImpl implements _OnAuthenticatedDataChanged {
  const _$OnAuthenticatedDataChangedImpl(this.data);

  @override
  final UserProfileData data;

  @override
  String toString() {
    return 'AuthenticationEvent.onUserProfileDataChanged(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAuthenticatedDataChangedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAuthenticatedDataChangedImplCopyWith<_$OnAuthenticatedDataChangedImpl>
      get copyWith => __$$OnAuthenticatedDataChangedImplCopyWithImpl<
          _$OnAuthenticatedDataChangedImpl>(this, _$identity);

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
      _$OnAuthenticatedDataChangedImpl;

  UserProfileData get data;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnAuthenticatedDataChangedImplCopyWith<_$OnAuthenticatedDataChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationStatus get authStatus => throw _privateConstructorUsedError;
  UserProfileData? get userProfileData => throw _privateConstructorUsedError;
  UserAuthData? get userAuthData => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$AuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationStateImplCopyWith(_$AuthenticationStateImpl value,
          $Res Function(_$AuthenticationStateImpl) then) =
      __$$AuthenticationStateImplCopyWithImpl<$Res>;
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
class __$$AuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationStateImpl>
    implements _$$AuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticationStateImplCopyWithImpl(_$AuthenticationStateImpl _value,
      $Res Function(_$AuthenticationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? userProfileData = freezed,
    Object? userAuthData = freezed,
  }) {
    return _then(_$AuthenticationStateImpl(
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

class _$AuthenticationStateImpl implements _AuthenticationState {
  const _$AuthenticationStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateImpl &&
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

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      __$$AuthenticationStateImplCopyWithImpl<_$AuthenticationStateImpl>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {final AuthenticationStatus authStatus,
      final UserProfileData? userProfileData,
      final UserAuthData? userAuthData}) = _$AuthenticationStateImpl;

  @override
  AuthenticationStatus get authStatus;
  @override
  UserProfileData? get userProfileData;
  @override
  UserAuthData? get userAuthData;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
