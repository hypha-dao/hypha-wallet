// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PageCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateTo value) navigateToSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateTo value)? navigateToSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateTo value)? navigateToSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCommandCopyWith<$Res> {
  factory $PageCommandCopyWith(
          PageCommand value, $Res Function(PageCommand) then) =
      _$PageCommandCopyWithImpl<$Res, PageCommand>;
}

/// @nodoc
class _$PageCommandCopyWithImpl<$Res, $Val extends PageCommand>
    implements $PageCommandCopyWith<$Res> {
  _$PageCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NavigateToImplCopyWith<$Res> {
  factory _$$NavigateToImplCopyWith(
          _$NavigateToImpl value, $Res Function(_$NavigateToImpl) then) =
      __$$NavigateToImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToImpl>
    implements _$$NavigateToImplCopyWith<$Res> {
  __$$NavigateToImplCopyWithImpl(
      _$NavigateToImpl _value, $Res Function(_$NavigateToImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateToImpl implements _NavigateTo {
  const _$NavigateToImpl();

  @override
  String toString() {
    return 'PageCommand.navigateToSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateToImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToSuccess,
  }) {
    return navigateToSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToSuccess,
  }) {
    return navigateToSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToSuccess,
    required TResult orElse(),
  }) {
    if (navigateToSuccess != null) {
      return navigateToSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateTo value) navigateToSuccess,
  }) {
    return navigateToSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateTo value)? navigateToSuccess,
  }) {
    return navigateToSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateTo value)? navigateToSuccess,
    required TResult orElse(),
  }) {
    if (navigateToSuccess != null) {
      return navigateToSuccess(this);
    }
    return orElse();
  }
}

abstract class _NavigateTo implements PageCommand {
  const factory _NavigateTo() = _$NavigateToImpl;
}

/// @nodoc
mixin _$TokensSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
    required TResult Function() clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? refresh,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
    TResult? Function()? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokensSettingsEventCopyWith<$Res> {
  factory $TokensSettingsEventCopyWith(
          TokensSettingsEvent value, $Res Function(TokensSettingsEvent) then) =
      _$TokensSettingsEventCopyWithImpl<$Res, TokensSettingsEvent>;
}

/// @nodoc
class _$TokensSettingsEventCopyWithImpl<$Res, $Val extends TokensSettingsEvent>
    implements $TokensSettingsEventCopyWith<$Res> {
  _$TokensSettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokensSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TokensSettingsEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokensSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TokensSettingsEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
    required TResult Function() clearPageCommand,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? refresh,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
    TResult? Function()? clearPageCommand,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
    TResult Function()? clearPageCommand,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TokensSettingsEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$TokensSettingsEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokensSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshImpl implements _Refresh {
  const _$RefreshImpl();

  @override
  String toString() {
    return 'TokensSettingsEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
    required TResult Function() clearPageCommand,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? refresh,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
    TResult? Function()? clearPageCommand,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements TokensSettingsEvent {
  const factory _Refresh() = _$RefreshImpl;
}

/// @nodoc
abstract class _$$AddTokenToUserImplCopyWith<$Res> {
  factory _$$AddTokenToUserImplCopyWith(_$AddTokenToUserImpl value,
          $Res Function(_$AddTokenToUserImpl) then) =
      __$$AddTokenToUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletTokenData token});
}

/// @nodoc
class __$$AddTokenToUserImplCopyWithImpl<$Res>
    extends _$TokensSettingsEventCopyWithImpl<$Res, _$AddTokenToUserImpl>
    implements _$$AddTokenToUserImplCopyWith<$Res> {
  __$$AddTokenToUserImplCopyWithImpl(
      _$AddTokenToUserImpl _value, $Res Function(_$AddTokenToUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokensSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$AddTokenToUserImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as WalletTokenData,
    ));
  }
}

/// @nodoc

class _$AddTokenToUserImpl implements _AddTokenToUser {
  const _$AddTokenToUserImpl(this.token);

  @override
  final WalletTokenData token;

  @override
  String toString() {
    return 'TokensSettingsEvent.addTokenToUser(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTokenToUserImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of TokensSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTokenToUserImplCopyWith<_$AddTokenToUserImpl> get copyWith =>
      __$$AddTokenToUserImplCopyWithImpl<_$AddTokenToUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
    required TResult Function() clearPageCommand,
  }) {
    return addTokenToUser(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? refresh,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
    TResult? Function()? clearPageCommand,
  }) {
    return addTokenToUser?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) {
    if (addTokenToUser != null) {
      return addTokenToUser(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return addTokenToUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return addTokenToUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (addTokenToUser != null) {
      return addTokenToUser(this);
    }
    return orElse();
  }
}

abstract class _AddTokenToUser implements TokensSettingsEvent {
  const factory _AddTokenToUser(final WalletTokenData token) =
      _$AddTokenToUserImpl;

  WalletTokenData get token;

  /// Create a copy of TokensSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTokenToUserImplCopyWith<_$AddTokenToUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTokenToUserImplCopyWith<$Res> {
  factory _$$RemoveTokenToUserImplCopyWith(_$RemoveTokenToUserImpl value,
          $Res Function(_$RemoveTokenToUserImpl) then) =
      __$$RemoveTokenToUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletTokenData token});
}

/// @nodoc
class __$$RemoveTokenToUserImplCopyWithImpl<$Res>
    extends _$TokensSettingsEventCopyWithImpl<$Res, _$RemoveTokenToUserImpl>
    implements _$$RemoveTokenToUserImplCopyWith<$Res> {
  __$$RemoveTokenToUserImplCopyWithImpl(_$RemoveTokenToUserImpl _value,
      $Res Function(_$RemoveTokenToUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokensSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$RemoveTokenToUserImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as WalletTokenData,
    ));
  }
}

/// @nodoc

class _$RemoveTokenToUserImpl implements _RemoveTokenToUser {
  const _$RemoveTokenToUserImpl(this.token);

  @override
  final WalletTokenData token;

  @override
  String toString() {
    return 'TokensSettingsEvent.removeTokenToUser(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTokenToUserImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of TokensSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTokenToUserImplCopyWith<_$RemoveTokenToUserImpl> get copyWith =>
      __$$RemoveTokenToUserImplCopyWithImpl<_$RemoveTokenToUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
    required TResult Function() clearPageCommand,
  }) {
    return removeTokenToUser(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? refresh,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
    TResult? Function()? clearPageCommand,
  }) {
    return removeTokenToUser?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) {
    if (removeTokenToUser != null) {
      return removeTokenToUser(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return removeTokenToUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return removeTokenToUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (removeTokenToUser != null) {
      return removeTokenToUser(this);
    }
    return orElse();
  }
}

abstract class _RemoveTokenToUser implements TokensSettingsEvent {
  const factory _RemoveTokenToUser(final WalletTokenData token) =
      _$RemoveTokenToUserImpl;

  WalletTokenData get token;

  /// Create a copy of TokensSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveTokenToUserImplCopyWith<_$RemoveTokenToUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPageCommandImplCopyWith<$Res> {
  factory _$$ClearPageCommandImplCopyWith(_$ClearPageCommandImpl value,
          $Res Function(_$ClearPageCommandImpl) then) =
      __$$ClearPageCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPageCommandImplCopyWithImpl<$Res>
    extends _$TokensSettingsEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokensSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'TokensSettingsEvent.clearPageCommand()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearPageCommandImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() refresh,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
    required TResult Function() clearPageCommand,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? refresh,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
    TResult? Function()? clearPageCommand,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? refresh,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements TokensSettingsEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
mixin _$TokensSettingsState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;
  List<WalletTokenData> get tokens => throw _privateConstructorUsedError;

  /// Create a copy of TokensSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokensSettingsStateCopyWith<TokensSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokensSettingsStateCopyWith<$Res> {
  factory $TokensSettingsStateCopyWith(
          TokensSettingsState value, $Res Function(TokensSettingsState) then) =
      _$TokensSettingsStateCopyWithImpl<$Res, TokensSettingsState>;
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      List<WalletTokenData> tokens});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$TokensSettingsStateCopyWithImpl<$Res, $Val extends TokensSettingsState>
    implements $TokensSettingsStateCopyWith<$Res> {
  _$TokensSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokensSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? tokens = null,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<WalletTokenData>,
    ) as $Val);
  }

  /// Create a copy of TokensSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageCommandCopyWith<$Res>? get command {
    if (_value.command == null) {
      return null;
    }

    return $PageCommandCopyWith<$Res>(_value.command!, (value) {
      return _then(_value.copyWith(command: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokensSettingsStateImplCopyWith<$Res>
    implements $TokensSettingsStateCopyWith<$Res> {
  factory _$$TokensSettingsStateImplCopyWith(_$TokensSettingsStateImpl value,
          $Res Function(_$TokensSettingsStateImpl) then) =
      __$$TokensSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      List<WalletTokenData> tokens});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$TokensSettingsStateImplCopyWithImpl<$Res>
    extends _$TokensSettingsStateCopyWithImpl<$Res, _$TokensSettingsStateImpl>
    implements _$$TokensSettingsStateImplCopyWith<$Res> {
  __$$TokensSettingsStateImplCopyWithImpl(_$TokensSettingsStateImpl _value,
      $Res Function(_$TokensSettingsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokensSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? tokens = null,
  }) {
    return _then(_$TokensSettingsStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      tokens: null == tokens
          ? _value._tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<WalletTokenData>,
    ));
  }
}

/// @nodoc

class _$TokensSettingsStateImpl extends _TokensSettingsState {
  const _$TokensSettingsStateImpl(
      {this.pageState = PageState.initial,
      this.command,
      final List<WalletTokenData> tokens = const []})
      : _tokens = tokens,
        super._();

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final PageCommand? command;
  final List<WalletTokenData> _tokens;
  @override
  @JsonKey()
  List<WalletTokenData> get tokens {
    if (_tokens is EqualUnmodifiableListView) return _tokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokens);
  }

  @override
  String toString() {
    return 'TokensSettingsState(pageState: $pageState, command: $command, tokens: $tokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokensSettingsStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.command, command) || other.command == command) &&
            const DeepCollectionEquality().equals(other._tokens, _tokens));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, command,
      const DeepCollectionEquality().hash(_tokens));

  /// Create a copy of TokensSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokensSettingsStateImplCopyWith<_$TokensSettingsStateImpl> get copyWith =>
      __$$TokensSettingsStateImplCopyWithImpl<_$TokensSettingsStateImpl>(
          this, _$identity);
}

abstract class _TokensSettingsState extends TokensSettingsState {
  const factory _TokensSettingsState(
      {final PageState pageState,
      final PageCommand? command,
      final List<WalletTokenData> tokens}) = _$TokensSettingsStateImpl;
  const _TokensSettingsState._() : super._();

  @override
  PageState get pageState;
  @override
  PageCommand? get command;
  @override
  List<WalletTokenData> get tokens;

  /// Create a copy of TokensSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokensSettingsStateImplCopyWith<_$TokensSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
