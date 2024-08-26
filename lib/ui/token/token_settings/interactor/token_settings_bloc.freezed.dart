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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$_NavigateToCopyWith<$Res> {
  factory _$$_NavigateToCopyWith(
          _$_NavigateTo value, $Res Function(_$_NavigateTo) then) =
      __$$_NavigateToCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NavigateToCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_NavigateTo>
    implements _$$_NavigateToCopyWith<$Res> {
  __$$_NavigateToCopyWithImpl(
      _$_NavigateTo _value, $Res Function(_$_NavigateTo) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NavigateTo implements _NavigateTo {
  const _$_NavigateTo();

  @override
  String toString() {
    return 'PageCommand.navigateToSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NavigateTo);
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
  const factory _NavigateTo() = _$_NavigateTo;
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
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TokensSettingsEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TokensSettingsEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(
          _$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res>
    extends _$TokensSettingsEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'TokensSettingsEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refresh);
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
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
abstract class _$$_AddTokenToUserCopyWith<$Res> {
  factory _$$_AddTokenToUserCopyWith(
          _$_AddTokenToUser value, $Res Function(_$_AddTokenToUser) then) =
      __$$_AddTokenToUserCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletTokenData token});
}

/// @nodoc
class __$$_AddTokenToUserCopyWithImpl<$Res>
    extends _$TokensSettingsEventCopyWithImpl<$Res, _$_AddTokenToUser>
    implements _$$_AddTokenToUserCopyWith<$Res> {
  __$$_AddTokenToUserCopyWithImpl(
      _$_AddTokenToUser _value, $Res Function(_$_AddTokenToUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_AddTokenToUser(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as WalletTokenData,
    ));
  }
}

/// @nodoc

class _$_AddTokenToUser implements _AddTokenToUser {
  const _$_AddTokenToUser(this.token);

  @override
  final WalletTokenData token;

  @override
  String toString() {
    return 'TokensSettingsEvent.addTokenToUser(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTokenToUser &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTokenToUserCopyWith<_$_AddTokenToUser> get copyWith =>
      __$$_AddTokenToUserCopyWithImpl<_$_AddTokenToUser>(this, _$identity);

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
      _$_AddTokenToUser;

  WalletTokenData get token;
  @JsonKey(ignore: true)
  _$$_AddTokenToUserCopyWith<_$_AddTokenToUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveTokenToUserCopyWith<$Res> {
  factory _$$_RemoveTokenToUserCopyWith(_$_RemoveTokenToUser value,
          $Res Function(_$_RemoveTokenToUser) then) =
      __$$_RemoveTokenToUserCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletTokenData token});
}

/// @nodoc
class __$$_RemoveTokenToUserCopyWithImpl<$Res>
    extends _$TokensSettingsEventCopyWithImpl<$Res, _$_RemoveTokenToUser>
    implements _$$_RemoveTokenToUserCopyWith<$Res> {
  __$$_RemoveTokenToUserCopyWithImpl(
      _$_RemoveTokenToUser _value, $Res Function(_$_RemoveTokenToUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_RemoveTokenToUser(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as WalletTokenData,
    ));
  }
}

/// @nodoc

class _$_RemoveTokenToUser implements _RemoveTokenToUser {
  const _$_RemoveTokenToUser(this.token);

  @override
  final WalletTokenData token;

  @override
  String toString() {
    return 'TokensSettingsEvent.removeTokenToUser(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveTokenToUser &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveTokenToUserCopyWith<_$_RemoveTokenToUser> get copyWith =>
      __$$_RemoveTokenToUserCopyWithImpl<_$_RemoveTokenToUser>(
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
      _$_RemoveTokenToUser;

  WalletTokenData get token;
  @JsonKey(ignore: true)
  _$$_RemoveTokenToUserCopyWith<_$_RemoveTokenToUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearPageCommandCopyWith<$Res> {
  factory _$$_ClearPageCommandCopyWith(
          _$_ClearPageCommand value, $Res Function(_$_ClearPageCommand) then) =
      __$$_ClearPageCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearPageCommandCopyWithImpl<$Res>
    extends _$TokensSettingsEventCopyWithImpl<$Res, _$_ClearPageCommand>
    implements _$$_ClearPageCommandCopyWith<$Res> {
  __$$_ClearPageCommandCopyWithImpl(
      _$_ClearPageCommand _value, $Res Function(_$_ClearPageCommand) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearPageCommand implements _ClearPageCommand {
  const _$_ClearPageCommand();

  @override
  String toString() {
    return 'TokensSettingsEvent.clearPageCommand()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearPageCommand);
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
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
mixin _$TokensSettingsState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;
  List<WalletTokenData> get tokens => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_TokensSettingsStateCopyWith<$Res>
    implements $TokensSettingsStateCopyWith<$Res> {
  factory _$$_TokensSettingsStateCopyWith(_$_TokensSettingsState value,
          $Res Function(_$_TokensSettingsState) then) =
      __$$_TokensSettingsStateCopyWithImpl<$Res>;
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
class __$$_TokensSettingsStateCopyWithImpl<$Res>
    extends _$TokensSettingsStateCopyWithImpl<$Res, _$_TokensSettingsState>
    implements _$$_TokensSettingsStateCopyWith<$Res> {
  __$$_TokensSettingsStateCopyWithImpl(_$_TokensSettingsState _value,
      $Res Function(_$_TokensSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? tokens = null,
  }) {
    return _then(_$_TokensSettingsState(
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

class _$_TokensSettingsState extends _TokensSettingsState {
  const _$_TokensSettingsState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokensSettingsState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.command, command) || other.command == command) &&
            const DeepCollectionEquality().equals(other._tokens, _tokens));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, command,
      const DeepCollectionEquality().hash(_tokens));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokensSettingsStateCopyWith<_$_TokensSettingsState> get copyWith =>
      __$$_TokensSettingsStateCopyWithImpl<_$_TokensSettingsState>(
          this, _$identity);
}

abstract class _TokensSettingsState extends TokensSettingsState {
  const factory _TokensSettingsState(
      {final PageState pageState,
      final PageCommand? command,
      final List<WalletTokenData> tokens}) = _$_TokensSettingsState;
  const _TokensSettingsState._() : super._();

  @override
  PageState get pageState;
  @override
  PageCommand? get command;
  @override
  List<WalletTokenData> get tokens;
  @override
  @JsonKey(ignore: true)
  _$$_TokensSettingsStateCopyWith<_$_TokensSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
