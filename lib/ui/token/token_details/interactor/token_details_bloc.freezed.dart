// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_details_bloc.dart';

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
mixin _$TokenDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function() onSendTapped,
    required TResult Function() onReceiveTapped,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? onSendTapped,
    TResult? Function()? onReceiveTapped,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? onSendTapped,
    TResult Function()? onReceiveTapped,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnSendTapped value) onSendTapped,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSendTapped value)? onSendTapped,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSendTapped value)? onSendTapped,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDetailsEventCopyWith<$Res> {
  factory $TokenDetailsEventCopyWith(
          TokenDetailsEvent value, $Res Function(TokenDetailsEvent) then) =
      _$TokenDetailsEventCopyWithImpl<$Res, TokenDetailsEvent>;
}

/// @nodoc
class _$TokenDetailsEventCopyWithImpl<$Res, $Val extends TokenDetailsEvent>
    implements $TokenDetailsEventCopyWith<$Res> {
  _$TokenDetailsEventCopyWithImpl(this._value, this._then);

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
    extends _$TokenDetailsEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TokenDetailsEvent.initial()';
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
    required TResult Function() clearPageCommand,
    required TResult Function() onSendTapped,
    required TResult Function() onReceiveTapped,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? onSendTapped,
    TResult? Function()? onReceiveTapped,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? onSendTapped,
    TResult Function()? onReceiveTapped,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
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
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnSendTapped value) onSendTapped,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSendTapped value)? onSendTapped,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSendTapped value)? onSendTapped,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TokenDetailsEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ClearPageCommandCopyWith<$Res> {
  factory _$$_ClearPageCommandCopyWith(
          _$_ClearPageCommand value, $Res Function(_$_ClearPageCommand) then) =
      __$$_ClearPageCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearPageCommandCopyWithImpl<$Res>
    extends _$TokenDetailsEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'TokenDetailsEvent.clearPageCommand()';
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
    required TResult Function() clearPageCommand,
    required TResult Function() onSendTapped,
    required TResult Function() onReceiveTapped,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? onSendTapped,
    TResult? Function()? onReceiveTapped,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? onSendTapped,
    TResult Function()? onReceiveTapped,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
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
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnSendTapped value) onSendTapped,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSendTapped value)? onSendTapped,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSendTapped value)? onSendTapped,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements TokenDetailsEvent {
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
abstract class _$$_OnSendTappedCopyWith<$Res> {
  factory _$$_OnSendTappedCopyWith(
          _$_OnSendTapped value, $Res Function(_$_OnSendTapped) then) =
      __$$_OnSendTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnSendTappedCopyWithImpl<$Res>
    extends _$TokenDetailsEventCopyWithImpl<$Res, _$_OnSendTapped>
    implements _$$_OnSendTappedCopyWith<$Res> {
  __$$_OnSendTappedCopyWithImpl(
      _$_OnSendTapped _value, $Res Function(_$_OnSendTapped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnSendTapped implements _OnSendTapped {
  const _$_OnSendTapped();

  @override
  String toString() {
    return 'TokenDetailsEvent.onSendTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnSendTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function() onSendTapped,
    required TResult Function() onReceiveTapped,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
  }) {
    return onSendTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? onSendTapped,
    TResult? Function()? onReceiveTapped,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
  }) {
    return onSendTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? onSendTapped,
    TResult Function()? onReceiveTapped,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
    required TResult orElse(),
  }) {
    if (onSendTapped != null) {
      return onSendTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnSendTapped value) onSendTapped,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
  }) {
    return onSendTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSendTapped value)? onSendTapped,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
  }) {
    return onSendTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSendTapped value)? onSendTapped,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    required TResult orElse(),
  }) {
    if (onSendTapped != null) {
      return onSendTapped(this);
    }
    return orElse();
  }
}

abstract class _OnSendTapped implements TokenDetailsEvent {
  const factory _OnSendTapped() = _$_OnSendTapped;
}

/// @nodoc
abstract class _$$_OnReceiveTappedCopyWith<$Res> {
  factory _$$_OnReceiveTappedCopyWith(
          _$_OnReceiveTapped value, $Res Function(_$_OnReceiveTapped) then) =
      __$$_OnReceiveTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnReceiveTappedCopyWithImpl<$Res>
    extends _$TokenDetailsEventCopyWithImpl<$Res, _$_OnReceiveTapped>
    implements _$$_OnReceiveTappedCopyWith<$Res> {
  __$$_OnReceiveTappedCopyWithImpl(
      _$_OnReceiveTapped _value, $Res Function(_$_OnReceiveTapped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnReceiveTapped implements _OnReceiveTapped {
  const _$_OnReceiveTapped();

  @override
  String toString() {
    return 'TokenDetailsEvent.onReceiveTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnReceiveTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function() onSendTapped,
    required TResult Function() onReceiveTapped,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
  }) {
    return onReceiveTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? onSendTapped,
    TResult? Function()? onReceiveTapped,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
  }) {
    return onReceiveTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? onSendTapped,
    TResult Function()? onReceiveTapped,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
    required TResult orElse(),
  }) {
    if (onReceiveTapped != null) {
      return onReceiveTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnSendTapped value) onSendTapped,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
  }) {
    return onReceiveTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSendTapped value)? onSendTapped,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
  }) {
    return onReceiveTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSendTapped value)? onSendTapped,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    required TResult orElse(),
  }) {
    if (onReceiveTapped != null) {
      return onReceiveTapped(this);
    }
    return orElse();
  }
}

abstract class _OnReceiveTapped implements TokenDetailsEvent {
  const factory _OnReceiveTapped() = _$_OnReceiveTapped;
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
    extends _$TokenDetailsEventCopyWithImpl<$Res, _$_AddTokenToUser>
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
    return 'TokenDetailsEvent.addTokenToUser(token: $token)';
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
    required TResult Function() clearPageCommand,
    required TResult Function() onSendTapped,
    required TResult Function() onReceiveTapped,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
  }) {
    return addTokenToUser(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? onSendTapped,
    TResult? Function()? onReceiveTapped,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
  }) {
    return addTokenToUser?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? onSendTapped,
    TResult Function()? onReceiveTapped,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
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
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnSendTapped value) onSendTapped,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
  }) {
    return addTokenToUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSendTapped value)? onSendTapped,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
  }) {
    return addTokenToUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSendTapped value)? onSendTapped,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    required TResult orElse(),
  }) {
    if (addTokenToUser != null) {
      return addTokenToUser(this);
    }
    return orElse();
  }
}

abstract class _AddTokenToUser implements TokenDetailsEvent {
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
    extends _$TokenDetailsEventCopyWithImpl<$Res, _$_RemoveTokenToUser>
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
    return 'TokenDetailsEvent.removeTokenToUser(token: $token)';
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
    required TResult Function() clearPageCommand,
    required TResult Function() onSendTapped,
    required TResult Function() onReceiveTapped,
    required TResult Function(WalletTokenData token) addTokenToUser,
    required TResult Function(WalletTokenData token) removeTokenToUser,
  }) {
    return removeTokenToUser(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function()? onSendTapped,
    TResult? Function()? onReceiveTapped,
    TResult? Function(WalletTokenData token)? addTokenToUser,
    TResult? Function(WalletTokenData token)? removeTokenToUser,
  }) {
    return removeTokenToUser?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function()? onSendTapped,
    TResult Function()? onReceiveTapped,
    TResult Function(WalletTokenData token)? addTokenToUser,
    TResult Function(WalletTokenData token)? removeTokenToUser,
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
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnSendTapped value) onSendTapped,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
    required TResult Function(_AddTokenToUser value) addTokenToUser,
    required TResult Function(_RemoveTokenToUser value) removeTokenToUser,
  }) {
    return removeTokenToUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSendTapped value)? onSendTapped,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult? Function(_AddTokenToUser value)? addTokenToUser,
    TResult? Function(_RemoveTokenToUser value)? removeTokenToUser,
  }) {
    return removeTokenToUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSendTapped value)? onSendTapped,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    TResult Function(_AddTokenToUser value)? addTokenToUser,
    TResult Function(_RemoveTokenToUser value)? removeTokenToUser,
    required TResult orElse(),
  }) {
    if (removeTokenToUser != null) {
      return removeTokenToUser(this);
    }
    return orElse();
  }
}

abstract class _RemoveTokenToUser implements TokenDetailsEvent {
  const factory _RemoveTokenToUser(final WalletTokenData token) =
      _$_RemoveTokenToUser;

  WalletTokenData get token;
  @JsonKey(ignore: true)
  _$$_RemoveTokenToUserCopyWith<_$_RemoveTokenToUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TokenDetailsState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;
  WalletTokenData get token => throw _privateConstructorUsedError;
  bool get loadingTransaction => throw _privateConstructorUsedError;
  List<WalletTransactionTileData> get recentTransactions =>
      throw _privateConstructorUsedError;
  bool get loadingTokenBalance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenDetailsStateCopyWith<TokenDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDetailsStateCopyWith<$Res> {
  factory $TokenDetailsStateCopyWith(
          TokenDetailsState value, $Res Function(TokenDetailsState) then) =
      _$TokenDetailsStateCopyWithImpl<$Res, TokenDetailsState>;
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      WalletTokenData token,
      bool loadingTransaction,
      List<WalletTransactionTileData> recentTransactions,
      bool loadingTokenBalance});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$TokenDetailsStateCopyWithImpl<$Res, $Val extends TokenDetailsState>
    implements $TokenDetailsStateCopyWith<$Res> {
  _$TokenDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? token = null,
    Object? loadingTransaction = null,
    Object? recentTransactions = null,
    Object? loadingTokenBalance = null,
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
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as WalletTokenData,
      loadingTransaction: null == loadingTransaction
          ? _value.loadingTransaction
          : loadingTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      recentTransactions: null == recentTransactions
          ? _value.recentTransactions
          : recentTransactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionTileData>,
      loadingTokenBalance: null == loadingTokenBalance
          ? _value.loadingTokenBalance
          : loadingTokenBalance // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_TokenDetailsStateCopyWith<$Res>
    implements $TokenDetailsStateCopyWith<$Res> {
  factory _$$_TokenDetailsStateCopyWith(_$_TokenDetailsState value,
          $Res Function(_$_TokenDetailsState) then) =
      __$$_TokenDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      WalletTokenData token,
      bool loadingTransaction,
      List<WalletTransactionTileData> recentTransactions,
      bool loadingTokenBalance});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$_TokenDetailsStateCopyWithImpl<$Res>
    extends _$TokenDetailsStateCopyWithImpl<$Res, _$_TokenDetailsState>
    implements _$$_TokenDetailsStateCopyWith<$Res> {
  __$$_TokenDetailsStateCopyWithImpl(
      _$_TokenDetailsState _value, $Res Function(_$_TokenDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? token = null,
    Object? loadingTransaction = null,
    Object? recentTransactions = null,
    Object? loadingTokenBalance = null,
  }) {
    return _then(_$_TokenDetailsState(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as WalletTokenData,
      loadingTransaction: null == loadingTransaction
          ? _value.loadingTransaction
          : loadingTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      recentTransactions: null == recentTransactions
          ? _value._recentTransactions
          : recentTransactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionTileData>,
      loadingTokenBalance: null == loadingTokenBalance
          ? _value.loadingTokenBalance
          : loadingTokenBalance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TokenDetailsState extends _TokenDetailsState {
  const _$_TokenDetailsState(
      {this.pageState = PageState.initial,
      this.command,
      required this.token,
      this.loadingTransaction = true,
      final List<WalletTransactionTileData> recentTransactions = const [],
      this.loadingTokenBalance = true})
      : _recentTransactions = recentTransactions,
        super._();

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final PageCommand? command;
  @override
  final WalletTokenData token;
  @override
  @JsonKey()
  final bool loadingTransaction;
  final List<WalletTransactionTileData> _recentTransactions;
  @override
  @JsonKey()
  List<WalletTransactionTileData> get recentTransactions {
    if (_recentTransactions is EqualUnmodifiableListView)
      return _recentTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentTransactions);
  }

  @override
  @JsonKey()
  final bool loadingTokenBalance;

  @override
  String toString() {
    return 'TokenDetailsState(pageState: $pageState, command: $command, token: $token, loadingTransaction: $loadingTransaction, recentTransactions: $recentTransactions, loadingTokenBalance: $loadingTokenBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenDetailsState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.loadingTransaction, loadingTransaction) ||
                other.loadingTransaction == loadingTransaction) &&
            const DeepCollectionEquality()
                .equals(other._recentTransactions, _recentTransactions) &&
            (identical(other.loadingTokenBalance, loadingTokenBalance) ||
                other.loadingTokenBalance == loadingTokenBalance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageState,
      command,
      token,
      loadingTransaction,
      const DeepCollectionEquality().hash(_recentTransactions),
      loadingTokenBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenDetailsStateCopyWith<_$_TokenDetailsState> get copyWith =>
      __$$_TokenDetailsStateCopyWithImpl<_$_TokenDetailsState>(
          this, _$identity);
}

abstract class _TokenDetailsState extends TokenDetailsState {
  const factory _TokenDetailsState(
      {final PageState pageState,
      final PageCommand? command,
      required final WalletTokenData token,
      final bool loadingTransaction,
      final List<WalletTransactionTileData> recentTransactions,
      final bool loadingTokenBalance}) = _$_TokenDetailsState;
  const _TokenDetailsState._() : super._();

  @override
  PageState get pageState;
  @override
  PageCommand? get command;
  @override
  WalletTokenData get token;
  @override
  bool get loadingTransaction;
  @override
  List<WalletTransactionTileData> get recentTransactions;
  @override
  bool get loadingTokenBalance;
  @override
  @JsonKey(ignore: true)
  _$$_TokenDetailsStateCopyWith<_$_TokenDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
