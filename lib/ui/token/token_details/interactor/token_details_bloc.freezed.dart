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

  /// Create a copy of TokenDetailsEvent
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
    extends _$TokenDetailsEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TokenDetailsEvent.initial()';
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
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ClearPageCommandImplCopyWith<$Res> {
  factory _$$ClearPageCommandImplCopyWith(_$ClearPageCommandImpl value,
          $Res Function(_$ClearPageCommandImpl) then) =
      __$$ClearPageCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPageCommandImplCopyWithImpl<$Res>
    extends _$TokenDetailsEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'TokenDetailsEvent.clearPageCommand()';
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
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$OnSendTappedImplCopyWith<$Res> {
  factory _$$OnSendTappedImplCopyWith(
          _$OnSendTappedImpl value, $Res Function(_$OnSendTappedImpl) then) =
      __$$OnSendTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSendTappedImplCopyWithImpl<$Res>
    extends _$TokenDetailsEventCopyWithImpl<$Res, _$OnSendTappedImpl>
    implements _$$OnSendTappedImplCopyWith<$Res> {
  __$$OnSendTappedImplCopyWithImpl(
      _$OnSendTappedImpl _value, $Res Function(_$OnSendTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSendTappedImpl implements _OnSendTapped {
  const _$OnSendTappedImpl();

  @override
  String toString() {
    return 'TokenDetailsEvent.onSendTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSendTappedImpl);
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
  const factory _OnSendTapped() = _$OnSendTappedImpl;
}

/// @nodoc
abstract class _$$OnReceiveTappedImplCopyWith<$Res> {
  factory _$$OnReceiveTappedImplCopyWith(_$OnReceiveTappedImpl value,
          $Res Function(_$OnReceiveTappedImpl) then) =
      __$$OnReceiveTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnReceiveTappedImplCopyWithImpl<$Res>
    extends _$TokenDetailsEventCopyWithImpl<$Res, _$OnReceiveTappedImpl>
    implements _$$OnReceiveTappedImplCopyWith<$Res> {
  __$$OnReceiveTappedImplCopyWithImpl(
      _$OnReceiveTappedImpl _value, $Res Function(_$OnReceiveTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnReceiveTappedImpl implements _OnReceiveTapped {
  const _$OnReceiveTappedImpl();

  @override
  String toString() {
    return 'TokenDetailsEvent.onReceiveTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnReceiveTappedImpl);
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
  const factory _OnReceiveTapped() = _$OnReceiveTappedImpl;
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
    extends _$TokenDetailsEventCopyWithImpl<$Res, _$AddTokenToUserImpl>
    implements _$$AddTokenToUserImplCopyWith<$Res> {
  __$$AddTokenToUserImplCopyWithImpl(
      _$AddTokenToUserImpl _value, $Res Function(_$AddTokenToUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetailsEvent
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
    return 'TokenDetailsEvent.addTokenToUser(token: $token)';
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

  /// Create a copy of TokenDetailsEvent
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
      _$AddTokenToUserImpl;

  WalletTokenData get token;

  /// Create a copy of TokenDetailsEvent
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
    extends _$TokenDetailsEventCopyWithImpl<$Res, _$RemoveTokenToUserImpl>
    implements _$$RemoveTokenToUserImplCopyWith<$Res> {
  __$$RemoveTokenToUserImplCopyWithImpl(_$RemoveTokenToUserImpl _value,
      $Res Function(_$RemoveTokenToUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetailsEvent
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
    return 'TokenDetailsEvent.removeTokenToUser(token: $token)';
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

  /// Create a copy of TokenDetailsEvent
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
      _$RemoveTokenToUserImpl;

  WalletTokenData get token;

  /// Create a copy of TokenDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveTokenToUserImplCopyWith<_$RemoveTokenToUserImpl> get copyWith =>
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

  /// Create a copy of TokenDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of TokenDetailsState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of TokenDetailsState
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
abstract class _$$TokenDetailsStateImplCopyWith<$Res>
    implements $TokenDetailsStateCopyWith<$Res> {
  factory _$$TokenDetailsStateImplCopyWith(_$TokenDetailsStateImpl value,
          $Res Function(_$TokenDetailsStateImpl) then) =
      __$$TokenDetailsStateImplCopyWithImpl<$Res>;
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
class __$$TokenDetailsStateImplCopyWithImpl<$Res>
    extends _$TokenDetailsStateCopyWithImpl<$Res, _$TokenDetailsStateImpl>
    implements _$$TokenDetailsStateImplCopyWith<$Res> {
  __$$TokenDetailsStateImplCopyWithImpl(_$TokenDetailsStateImpl _value,
      $Res Function(_$TokenDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetailsState
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$TokenDetailsStateImpl(
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

class _$TokenDetailsStateImpl extends _TokenDetailsState {
  const _$TokenDetailsStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDetailsStateImpl &&
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

  /// Create a copy of TokenDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDetailsStateImplCopyWith<_$TokenDetailsStateImpl> get copyWith =>
      __$$TokenDetailsStateImplCopyWithImpl<_$TokenDetailsStateImpl>(
          this, _$identity);
}

abstract class _TokenDetailsState extends TokenDetailsState {
  const factory _TokenDetailsState(
      {final PageState pageState,
      final PageCommand? command,
      required final WalletTokenData token,
      final bool loadingTransaction,
      final List<WalletTransactionTileData> recentTransactions,
      final bool loadingTokenBalance}) = _$TokenDetailsStateImpl;
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

  /// Create a copy of TokenDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenDetailsStateImplCopyWith<_$TokenDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
