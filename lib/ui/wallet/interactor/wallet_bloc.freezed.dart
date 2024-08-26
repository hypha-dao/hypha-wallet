// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_bloc.dart';

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
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(
            Result<List<WalletTransactionTileData>, HyphaError> value)
        onTransactionsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(
            Result<List<WalletTransactionTileData>, HyphaError> value)?
        onTransactionsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(Result<List<WalletTransactionTileData>, HyphaError> value)?
        onTransactionsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnTransactionsChanged value)
        onTransactionsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnTransactionsChanged value)? onTransactionsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnTransactionsChanged value)? onTransactionsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEventCopyWith<$Res> {
  factory $WalletEventCopyWith(
          WalletEvent value, $Res Function(WalletEvent) then) =
      _$WalletEventCopyWithImpl<$Res, WalletEvent>;
}

/// @nodoc
class _$WalletEventCopyWithImpl<$Res, $Val extends WalletEvent>
    implements $WalletEventCopyWith<$Res> {
  _$WalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletEvent
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
    extends _$WalletEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WalletEvent.initial()';
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
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(
            Result<List<WalletTransactionTileData>, HyphaError> value)
        onTransactionsChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(
            Result<List<WalletTransactionTileData>, HyphaError> value)?
        onTransactionsChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(Result<List<WalletTransactionTileData>, HyphaError> value)?
        onTransactionsChanged,
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
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnTransactionsChanged value)
        onTransactionsChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnTransactionsChanged value)? onTransactionsChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnTransactionsChanged value)? onTransactionsChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WalletEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OnRefreshImplCopyWith<$Res> {
  factory _$$OnRefreshImplCopyWith(
          _$OnRefreshImpl value, $Res Function(_$OnRefreshImpl) then) =
      __$$OnRefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnRefreshImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$OnRefreshImpl>
    implements _$$OnRefreshImplCopyWith<$Res> {
  __$$OnRefreshImplCopyWithImpl(
      _$OnRefreshImpl _value, $Res Function(_$OnRefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnRefreshImpl implements _OnRefresh {
  const _$OnRefreshImpl();

  @override
  String toString() {
    return 'WalletEvent.onRefresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnRefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(
            Result<List<WalletTransactionTileData>, HyphaError> value)
        onTransactionsChanged,
  }) {
    return onRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(
            Result<List<WalletTransactionTileData>, HyphaError> value)?
        onTransactionsChanged,
  }) {
    return onRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(Result<List<WalletTransactionTileData>, HyphaError> value)?
        onTransactionsChanged,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnTransactionsChanged value)
        onTransactionsChanged,
  }) {
    return onRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnTransactionsChanged value)? onTransactionsChanged,
  }) {
    return onRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnTransactionsChanged value)? onTransactionsChanged,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh(this);
    }
    return orElse();
  }
}

abstract class _OnRefresh implements WalletEvent {
  const factory _OnRefresh() = _$OnRefreshImpl;
}

/// @nodoc
abstract class _$$ClearPageCommandImplCopyWith<$Res> {
  factory _$$ClearPageCommandImplCopyWith(_$ClearPageCommandImpl value,
          $Res Function(_$ClearPageCommandImpl) then) =
      __$$ClearPageCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPageCommandImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'WalletEvent.clearPageCommand()';
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
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(
            Result<List<WalletTransactionTileData>, HyphaError> value)
        onTransactionsChanged,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(
            Result<List<WalletTransactionTileData>, HyphaError> value)?
        onTransactionsChanged,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(Result<List<WalletTransactionTileData>, HyphaError> value)?
        onTransactionsChanged,
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
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnTransactionsChanged value)
        onTransactionsChanged,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnTransactionsChanged value)? onTransactionsChanged,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnTransactionsChanged value)? onTransactionsChanged,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements WalletEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$OnTransactionsChangedImplCopyWith<$Res> {
  factory _$$OnTransactionsChangedImplCopyWith(
          _$OnTransactionsChangedImpl value,
          $Res Function(_$OnTransactionsChangedImpl) then) =
      __$$OnTransactionsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Result<List<WalletTransactionTileData>, HyphaError> value});
}

/// @nodoc
class __$$OnTransactionsChangedImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$OnTransactionsChangedImpl>
    implements _$$OnTransactionsChangedImplCopyWith<$Res> {
  __$$OnTransactionsChangedImplCopyWithImpl(_$OnTransactionsChangedImpl _value,
      $Res Function(_$OnTransactionsChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnTransactionsChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Result<List<WalletTransactionTileData>, HyphaError>,
    ));
  }
}

/// @nodoc

class _$OnTransactionsChangedImpl implements _OnTransactionsChanged {
  const _$OnTransactionsChangedImpl(this.value);

  @override
  final Result<List<WalletTransactionTileData>, HyphaError> value;

  @override
  String toString() {
    return 'WalletEvent.onTransactionsChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTransactionsChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTransactionsChangedImplCopyWith<_$OnTransactionsChangedImpl>
      get copyWith => __$$OnTransactionsChangedImplCopyWithImpl<
          _$OnTransactionsChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(
            Result<List<WalletTransactionTileData>, HyphaError> value)
        onTransactionsChanged,
  }) {
    return onTransactionsChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(
            Result<List<WalletTransactionTileData>, HyphaError> value)?
        onTransactionsChanged,
  }) {
    return onTransactionsChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(Result<List<WalletTransactionTileData>, HyphaError> value)?
        onTransactionsChanged,
    required TResult orElse(),
  }) {
    if (onTransactionsChanged != null) {
      return onTransactionsChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnTransactionsChanged value)
        onTransactionsChanged,
  }) {
    return onTransactionsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnTransactionsChanged value)? onTransactionsChanged,
  }) {
    return onTransactionsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnTransactionsChanged value)? onTransactionsChanged,
    required TResult orElse(),
  }) {
    if (onTransactionsChanged != null) {
      return onTransactionsChanged(this);
    }
    return orElse();
  }
}

abstract class _OnTransactionsChanged implements WalletEvent {
  const factory _OnTransactionsChanged(
          final Result<List<WalletTransactionTileData>, HyphaError> value) =
      _$OnTransactionsChangedImpl;

  Result<List<WalletTransactionTileData>, HyphaError> get value;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnTransactionsChangedImplCopyWith<_$OnTransactionsChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;
  bool get loadingTransaction => throw _privateConstructorUsedError;
  List<WalletTokenData> get tokens => throw _privateConstructorUsedError;
  List<WalletTransactionTileData> get recentTransactions =>
      throw _privateConstructorUsedError;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletStateCopyWith<WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      bool loadingTransaction,
      List<WalletTokenData> tokens,
      List<WalletTransactionTileData> recentTransactions});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? loadingTransaction = null,
    Object? tokens = null,
    Object? recentTransactions = null,
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
      loadingTransaction: null == loadingTransaction
          ? _value.loadingTransaction
          : loadingTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<WalletTokenData>,
      recentTransactions: null == recentTransactions
          ? _value.recentTransactions
          : recentTransactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionTileData>,
    ) as $Val);
  }

  /// Create a copy of WalletState
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
abstract class _$$WalletStateImplCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$$WalletStateImplCopyWith(
          _$WalletStateImpl value, $Res Function(_$WalletStateImpl) then) =
      __$$WalletStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      bool loadingTransaction,
      List<WalletTokenData> tokens,
      List<WalletTransactionTileData> recentTransactions});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$WalletStateImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletStateImpl>
    implements _$$WalletStateImplCopyWith<$Res> {
  __$$WalletStateImplCopyWithImpl(
      _$WalletStateImpl _value, $Res Function(_$WalletStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? loadingTransaction = null,
    Object? tokens = null,
    Object? recentTransactions = null,
  }) {
    return _then(_$WalletStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      loadingTransaction: null == loadingTransaction
          ? _value.loadingTransaction
          : loadingTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      tokens: null == tokens
          ? _value._tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<WalletTokenData>,
      recentTransactions: null == recentTransactions
          ? _value._recentTransactions
          : recentTransactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionTileData>,
    ));
  }
}

/// @nodoc

class _$WalletStateImpl extends _WalletState {
  const _$WalletStateImpl(
      {this.pageState = PageState.initial,
      this.command,
      this.loadingTransaction = true,
      final List<WalletTokenData> tokens = const [],
      final List<WalletTransactionTileData> recentTransactions = const []})
      : _tokens = tokens,
        _recentTransactions = recentTransactions,
        super._();

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final PageCommand? command;
  @override
  @JsonKey()
  final bool loadingTransaction;
  final List<WalletTokenData> _tokens;
  @override
  @JsonKey()
  List<WalletTokenData> get tokens {
    if (_tokens is EqualUnmodifiableListView) return _tokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokens);
  }

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
  String toString() {
    return 'WalletState(pageState: $pageState, command: $command, loadingTransaction: $loadingTransaction, tokens: $tokens, recentTransactions: $recentTransactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.loadingTransaction, loadingTransaction) ||
                other.loadingTransaction == loadingTransaction) &&
            const DeepCollectionEquality().equals(other._tokens, _tokens) &&
            const DeepCollectionEquality()
                .equals(other._recentTransactions, _recentTransactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageState,
      command,
      loadingTransaction,
      const DeepCollectionEquality().hash(_tokens),
      const DeepCollectionEquality().hash(_recentTransactions));

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      __$$WalletStateImplCopyWithImpl<_$WalletStateImpl>(this, _$identity);
}

abstract class _WalletState extends WalletState {
  const factory _WalletState(
          {final PageState pageState,
          final PageCommand? command,
          final bool loadingTransaction,
          final List<WalletTokenData> tokens,
          final List<WalletTransactionTileData> recentTransactions}) =
      _$WalletStateImpl;
  const _WalletState._() : super._();

  @override
  PageState get pageState;
  @override
  PageCommand? get command;
  @override
  bool get loadingTransaction;
  @override
  List<WalletTokenData> get tokens;
  @override
  List<WalletTransactionTileData> get recentTransactions;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
