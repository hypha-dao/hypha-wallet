// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receive_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageCommand {
  String get transactionId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transactionId) navigateToSendSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String transactionId)? navigateToSendSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transactionId)? navigateToSendSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToSendSuccess value)
        navigateToSendSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToSendSuccess value)? navigateToSendSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToSendSuccess value)? navigateToSendSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageCommandCopyWith<PageCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCommandCopyWith<$Res> {
  factory $PageCommandCopyWith(
          PageCommand value, $Res Function(PageCommand) then) =
      _$PageCommandCopyWithImpl<$Res, PageCommand>;
  @useResult
  $Res call({String transactionId});
}

/// @nodoc
class _$PageCommandCopyWithImpl<$Res, $Val extends PageCommand>
    implements $PageCommandCopyWith<$Res> {
  _$PageCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NavigateToSendSuccessCopyWith<$Res>
    implements $PageCommandCopyWith<$Res> {
  factory _$$_NavigateToSendSuccessCopyWith(_$_NavigateToSendSuccess value,
          $Res Function(_$_NavigateToSendSuccess) then) =
      __$$_NavigateToSendSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionId});
}

/// @nodoc
class __$$_NavigateToSendSuccessCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_NavigateToSendSuccess>
    implements _$$_NavigateToSendSuccessCopyWith<$Res> {
  __$$_NavigateToSendSuccessCopyWithImpl(_$_NavigateToSendSuccess _value,
      $Res Function(_$_NavigateToSendSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
  }) {
    return _then(_$_NavigateToSendSuccess(
      null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NavigateToSendSuccess implements _NavigateToSendSuccess {
  const _$_NavigateToSendSuccess(this.transactionId);

  @override
  final String transactionId;

  @override
  String toString() {
    return 'PageCommand.navigateToSendSuccess(transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigateToSendSuccess &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigateToSendSuccessCopyWith<_$_NavigateToSendSuccess> get copyWith =>
      __$$_NavigateToSendSuccessCopyWithImpl<_$_NavigateToSendSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transactionId) navigateToSendSuccess,
  }) {
    return navigateToSendSuccess(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String transactionId)? navigateToSendSuccess,
  }) {
    return navigateToSendSuccess?.call(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transactionId)? navigateToSendSuccess,
    required TResult orElse(),
  }) {
    if (navigateToSendSuccess != null) {
      return navigateToSendSuccess(transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToSendSuccess value)
        navigateToSendSuccess,
  }) {
    return navigateToSendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToSendSuccess value)? navigateToSendSuccess,
  }) {
    return navigateToSendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToSendSuccess value)? navigateToSendSuccess,
    required TResult orElse(),
  }) {
    if (navigateToSendSuccess != null) {
      return navigateToSendSuccess(this);
    }
    return orElse();
  }
}

abstract class _NavigateToSendSuccess implements PageCommand {
  const factory _NavigateToSendSuccess(final String transactionId) =
      _$_NavigateToSendSuccess;

  @override
  String get transactionId;
  @override
  @JsonKey(ignore: true)
  _$$_NavigateToSendSuccessCopyWith<_$_NavigateToSendSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReceiveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onReceiveTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onReceiveTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onReceiveTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveEventCopyWith<$Res> {
  factory $ReceiveEventCopyWith(
          ReceiveEvent value, $Res Function(ReceiveEvent) then) =
      _$ReceiveEventCopyWithImpl<$Res, ReceiveEvent>;
}

/// @nodoc
class _$ReceiveEventCopyWithImpl<$Res, $Val extends ReceiveEvent>
    implements $ReceiveEventCopyWith<$Res> {
  _$ReceiveEventCopyWithImpl(this._value, this._then);

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
    extends _$ReceiveEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ReceiveEvent.initial()';
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
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onReceiveTapped,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onReceiveTapped,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onReceiveTapped,
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
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReceiveEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_OnRefreshCopyWith<$Res> {
  factory _$$_OnRefreshCopyWith(
          _$_OnRefresh value, $Res Function(_$_OnRefresh) then) =
      __$$_OnRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnRefreshCopyWithImpl<$Res>
    extends _$ReceiveEventCopyWithImpl<$Res, _$_OnRefresh>
    implements _$$_OnRefreshCopyWith<$Res> {
  __$$_OnRefreshCopyWithImpl(
      _$_OnRefresh _value, $Res Function(_$_OnRefresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnRefresh implements _OnRefresh {
  const _$_OnRefresh();

  @override
  String toString() {
    return 'ReceiveEvent.onRefresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onReceiveTapped,
  }) {
    return onRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onReceiveTapped,
  }) {
    return onRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onReceiveTapped,
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
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
  }) {
    return onRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
  }) {
    return onRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh(this);
    }
    return orElse();
  }
}

abstract class _OnRefresh implements ReceiveEvent {
  const factory _OnRefresh() = _$_OnRefresh;
}

/// @nodoc
abstract class _$$_ClearPageCommandCopyWith<$Res> {
  factory _$$_ClearPageCommandCopyWith(
          _$_ClearPageCommand value, $Res Function(_$_ClearPageCommand) then) =
      __$$_ClearPageCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearPageCommandCopyWithImpl<$Res>
    extends _$ReceiveEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'ReceiveEvent.clearPageCommand()';
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
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onReceiveTapped,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onReceiveTapped,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onReceiveTapped,
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
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements ReceiveEvent {
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
abstract class _$$_OnKeypadTappedCopyWith<$Res> {
  factory _$$_OnKeypadTappedCopyWith(
          _$_OnKeypadTapped value, $Res Function(_$_OnKeypadTapped) then) =
      __$$_OnKeypadTappedCopyWithImpl<$Res>;
  @useResult
  $Res call({KeypadKey tappedKey});
}

/// @nodoc
class __$$_OnKeypadTappedCopyWithImpl<$Res>
    extends _$ReceiveEventCopyWithImpl<$Res, _$_OnKeypadTapped>
    implements _$$_OnKeypadTappedCopyWith<$Res> {
  __$$_OnKeypadTappedCopyWithImpl(
      _$_OnKeypadTapped _value, $Res Function(_$_OnKeypadTapped) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tappedKey = null,
  }) {
    return _then(_$_OnKeypadTapped(
      null == tappedKey
          ? _value.tappedKey
          : tappedKey // ignore: cast_nullable_to_non_nullable
              as KeypadKey,
    ));
  }
}

/// @nodoc

class _$_OnKeypadTapped implements _OnKeypadTapped {
  const _$_OnKeypadTapped(this.tappedKey);

  @override
  final KeypadKey tappedKey;

  @override
  String toString() {
    return 'ReceiveEvent.onKeypadTapped(tappedKey: $tappedKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnKeypadTapped &&
            (identical(other.tappedKey, tappedKey) ||
                other.tappedKey == tappedKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tappedKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnKeypadTappedCopyWith<_$_OnKeypadTapped> get copyWith =>
      __$$_OnKeypadTappedCopyWithImpl<_$_OnKeypadTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onReceiveTapped,
  }) {
    return onKeypadTapped(tappedKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onReceiveTapped,
  }) {
    return onKeypadTapped?.call(tappedKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onReceiveTapped,
    required TResult orElse(),
  }) {
    if (onKeypadTapped != null) {
      return onKeypadTapped(tappedKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
  }) {
    return onKeypadTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
  }) {
    return onKeypadTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    required TResult orElse(),
  }) {
    if (onKeypadTapped != null) {
      return onKeypadTapped(this);
    }
    return orElse();
  }
}

abstract class _OnKeypadTapped implements ReceiveEvent {
  const factory _OnKeypadTapped(final KeypadKey tappedKey) = _$_OnKeypadTapped;

  KeypadKey get tappedKey;
  @JsonKey(ignore: true)
  _$$_OnKeypadTappedCopyWith<_$_OnKeypadTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnMemoEnteredCopyWith<$Res> {
  factory _$$_OnMemoEnteredCopyWith(
          _$_OnMemoEntered value, $Res Function(_$_OnMemoEntered) then) =
      __$$_OnMemoEnteredCopyWithImpl<$Res>;
  @useResult
  $Res call({String? memo});
}

/// @nodoc
class __$$_OnMemoEnteredCopyWithImpl<$Res>
    extends _$ReceiveEventCopyWithImpl<$Res, _$_OnMemoEntered>
    implements _$$_OnMemoEnteredCopyWith<$Res> {
  __$$_OnMemoEnteredCopyWithImpl(
      _$_OnMemoEntered _value, $Res Function(_$_OnMemoEntered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memo = freezed,
  }) {
    return _then(_$_OnMemoEntered(
      freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OnMemoEntered implements _OnMemoEntered {
  const _$_OnMemoEntered(this.memo);

  @override
  final String? memo;

  @override
  String toString() {
    return 'ReceiveEvent.onMemoEntered(memo: $memo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnMemoEntered &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnMemoEnteredCopyWith<_$_OnMemoEntered> get copyWith =>
      __$$_OnMemoEnteredCopyWithImpl<_$_OnMemoEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onReceiveTapped,
  }) {
    return onMemoEntered(memo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onReceiveTapped,
  }) {
    return onMemoEntered?.call(memo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onReceiveTapped,
    required TResult orElse(),
  }) {
    if (onMemoEntered != null) {
      return onMemoEntered(memo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
  }) {
    return onMemoEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
  }) {
    return onMemoEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    required TResult orElse(),
  }) {
    if (onMemoEntered != null) {
      return onMemoEntered(this);
    }
    return orElse();
  }
}

abstract class _OnMemoEntered implements ReceiveEvent {
  const factory _OnMemoEntered(final String? memo) = _$_OnMemoEntered;

  String? get memo;
  @JsonKey(ignore: true)
  _$$_OnMemoEnteredCopyWith<_$_OnMemoEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnReceiveTappedCopyWith<$Res> {
  factory _$$_OnReceiveTappedCopyWith(
          _$_OnReceiveTapped value, $Res Function(_$_OnReceiveTapped) then) =
      __$$_OnReceiveTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnReceiveTappedCopyWithImpl<$Res>
    extends _$ReceiveEventCopyWithImpl<$Res, _$_OnReceiveTapped>
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
    return 'ReceiveEvent.onReceiveTapped()';
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
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onReceiveTapped,
  }) {
    return onReceiveTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onReceiveTapped,
  }) {
    return onReceiveTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onReceiveTapped,
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
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnReceiveTapped value) onReceiveTapped,
  }) {
    return onReceiveTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnReceiveTapped value)? onReceiveTapped,
  }) {
    return onReceiveTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnReceiveTapped value)? onReceiveTapped,
    required TResult orElse(),
  }) {
    if (onReceiveTapped != null) {
      return onReceiveTapped(this);
    }
    return orElse();
  }
}

abstract class _OnReceiveTapped implements ReceiveEvent {
  const factory _OnReceiveTapped() = _$_OnReceiveTapped;
}

/// @nodoc
mixin _$ReceiveState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;
  String? get userEnteredAmount => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  WalletTokenData get tokenData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiveStateCopyWith<ReceiveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveStateCopyWith<$Res> {
  factory $ReceiveStateCopyWith(
          ReceiveState value, $Res Function(ReceiveState) then) =
      _$ReceiveStateCopyWithImpl<$Res, ReceiveState>;
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      String? userEnteredAmount,
      String? memo,
      WalletTokenData tokenData});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$ReceiveStateCopyWithImpl<$Res, $Val extends ReceiveState>
    implements $ReceiveStateCopyWith<$Res> {
  _$ReceiveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? userEnteredAmount = freezed,
    Object? memo = freezed,
    Object? tokenData = null,
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
      userEnteredAmount: freezed == userEnteredAmount
          ? _value.userEnteredAmount
          : userEnteredAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenData: null == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as WalletTokenData,
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
abstract class _$$_ReceiveStateCopyWith<$Res>
    implements $ReceiveStateCopyWith<$Res> {
  factory _$$_ReceiveStateCopyWith(
          _$_ReceiveState value, $Res Function(_$_ReceiveState) then) =
      __$$_ReceiveStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      String? userEnteredAmount,
      String? memo,
      WalletTokenData tokenData});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$_ReceiveStateCopyWithImpl<$Res>
    extends _$ReceiveStateCopyWithImpl<$Res, _$_ReceiveState>
    implements _$$_ReceiveStateCopyWith<$Res> {
  __$$_ReceiveStateCopyWithImpl(
      _$_ReceiveState _value, $Res Function(_$_ReceiveState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? userEnteredAmount = freezed,
    Object? memo = freezed,
    Object? tokenData = null,
  }) {
    return _then(_$_ReceiveState(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      userEnteredAmount: freezed == userEnteredAmount
          ? _value.userEnteredAmount
          : userEnteredAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenData: null == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as WalletTokenData,
    ));
  }
}

/// @nodoc

class _$_ReceiveState extends _ReceiveState {
  const _$_ReceiveState(
      {this.pageState = PageState.initial,
      this.command,
      this.userEnteredAmount = null,
      this.memo = null,
      required this.tokenData})
      : super._();

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final PageCommand? command;
  @override
  @JsonKey()
  final String? userEnteredAmount;
  @override
  @JsonKey()
  final String? memo;
  @override
  final WalletTokenData tokenData;

  @override
  String toString() {
    return 'ReceiveState(pageState: $pageState, command: $command, userEnteredAmount: $userEnteredAmount, memo: $memo, tokenData: $tokenData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiveState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.userEnteredAmount, userEnteredAmount) ||
                other.userEnteredAmount == userEnteredAmount) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.tokenData, tokenData) ||
                other.tokenData == tokenData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pageState, command, userEnteredAmount, memo, tokenData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiveStateCopyWith<_$_ReceiveState> get copyWith =>
      __$$_ReceiveStateCopyWithImpl<_$_ReceiveState>(this, _$identity);
}

abstract class _ReceiveState extends ReceiveState {
  const factory _ReceiveState(
      {final PageState pageState,
      final PageCommand? command,
      final String? userEnteredAmount,
      final String? memo,
      required final WalletTokenData tokenData}) = _$_ReceiveState;
  const _ReceiveState._() : super._();

  @override
  PageState get pageState;
  @override
  PageCommand? get command;
  @override
  String? get userEnteredAmount;
  @override
  String? get memo;
  @override
  WalletTokenData get tokenData;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiveStateCopyWith<_$_ReceiveState> get copyWith =>
      throw _privateConstructorUsedError;
}
