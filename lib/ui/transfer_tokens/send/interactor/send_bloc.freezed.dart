// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_bloc.dart';

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
mixin _$SendEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onSendTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onSendTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onSendTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnSendTapped value) onSendTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnSendTapped value)? onSendTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnSendTapped value)? onSendTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendEventCopyWith<$Res> {
  factory $SendEventCopyWith(SendEvent value, $Res Function(SendEvent) then) =
      _$SendEventCopyWithImpl<$Res, SendEvent>;
}

/// @nodoc
class _$SendEventCopyWithImpl<$Res, $Val extends SendEvent>
    implements $SendEventCopyWith<$Res> {
  _$SendEventCopyWithImpl(this._value, this._then);

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
    extends _$SendEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SendEvent.initial()';
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
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onSendTapped,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onSendTapped,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onSendTapped,
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
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnSendTapped value) onSendTapped,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnSendTapped value)? onSendTapped,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnSendTapped value)? onSendTapped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SendEvent {
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
    extends _$SendEventCopyWithImpl<$Res, _$_OnRefresh>
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
    return 'SendEvent.onRefresh()';
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
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onSendTapped,
  }) {
    return onRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onSendTapped,
  }) {
    return onRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onSendTapped,
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
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnSendTapped value) onSendTapped,
  }) {
    return onRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnSendTapped value)? onSendTapped,
  }) {
    return onRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnSendTapped value)? onSendTapped,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh(this);
    }
    return orElse();
  }
}

abstract class _OnRefresh implements SendEvent {
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
    extends _$SendEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'SendEvent.clearPageCommand()';
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
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onSendTapped,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onSendTapped,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onSendTapped,
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
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnSendTapped value) onSendTapped,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnSendTapped value)? onSendTapped,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnSendTapped value)? onSendTapped,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements SendEvent {
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
abstract class _$$_OnPercentageTappedCopyWith<$Res> {
  factory _$$_OnPercentageTappedCopyWith(_$_OnPercentageTapped value,
          $Res Function(_$_OnPercentageTapped) then) =
      __$$_OnPercentageTappedCopyWithImpl<$Res>;
  @useResult
  $Res call({AmountPercentage amountPercentage});
}

/// @nodoc
class __$$_OnPercentageTappedCopyWithImpl<$Res>
    extends _$SendEventCopyWithImpl<$Res, _$_OnPercentageTapped>
    implements _$$_OnPercentageTappedCopyWith<$Res> {
  __$$_OnPercentageTappedCopyWithImpl(
      _$_OnPercentageTapped _value, $Res Function(_$_OnPercentageTapped) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountPercentage = freezed,
  }) {
    return _then(_$_OnPercentageTapped(
      freezed == amountPercentage
          ? _value.amountPercentage
          : amountPercentage // ignore: cast_nullable_to_non_nullable
              as AmountPercentage,
    ));
  }
}

/// @nodoc

class _$_OnPercentageTapped implements _OnPercentageTapped {
  const _$_OnPercentageTapped(this.amountPercentage);

  @override
  final AmountPercentage amountPercentage;

  @override
  String toString() {
    return 'SendEvent.onPercentageTapped(amountPercentage: $amountPercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnPercentageTapped &&
            const DeepCollectionEquality()
                .equals(other.amountPercentage, amountPercentage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(amountPercentage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnPercentageTappedCopyWith<_$_OnPercentageTapped> get copyWith =>
      __$$_OnPercentageTappedCopyWithImpl<_$_OnPercentageTapped>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onSendTapped,
  }) {
    return onPercentageTapped(amountPercentage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onSendTapped,
  }) {
    return onPercentageTapped?.call(amountPercentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onSendTapped,
    required TResult orElse(),
  }) {
    if (onPercentageTapped != null) {
      return onPercentageTapped(amountPercentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnSendTapped value) onSendTapped,
  }) {
    return onPercentageTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnSendTapped value)? onSendTapped,
  }) {
    return onPercentageTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnSendTapped value)? onSendTapped,
    required TResult orElse(),
  }) {
    if (onPercentageTapped != null) {
      return onPercentageTapped(this);
    }
    return orElse();
  }
}

abstract class _OnPercentageTapped implements SendEvent {
  const factory _OnPercentageTapped(final AmountPercentage amountPercentage) =
      _$_OnPercentageTapped;

  AmountPercentage get amountPercentage;
  @JsonKey(ignore: true)
  _$$_OnPercentageTappedCopyWith<_$_OnPercentageTapped> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$SendEventCopyWithImpl<$Res, _$_OnKeypadTapped>
    implements _$$_OnKeypadTappedCopyWith<$Res> {
  __$$_OnKeypadTappedCopyWithImpl(
      _$_OnKeypadTapped _value, $Res Function(_$_OnKeypadTapped) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tappedKey = freezed,
  }) {
    return _then(_$_OnKeypadTapped(
      freezed == tappedKey
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
    return 'SendEvent.onKeypadTapped(tappedKey: $tappedKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnKeypadTapped &&
            const DeepCollectionEquality().equals(other.tappedKey, tappedKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tappedKey));

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
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onSendTapped,
  }) {
    return onKeypadTapped(tappedKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onSendTapped,
  }) {
    return onKeypadTapped?.call(tappedKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onSendTapped,
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
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnSendTapped value) onSendTapped,
  }) {
    return onKeypadTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnSendTapped value)? onSendTapped,
  }) {
    return onKeypadTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnSendTapped value)? onSendTapped,
    required TResult orElse(),
  }) {
    if (onKeypadTapped != null) {
      return onKeypadTapped(this);
    }
    return orElse();
  }
}

abstract class _OnKeypadTapped implements SendEvent {
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
    extends _$SendEventCopyWithImpl<$Res, _$_OnMemoEntered>
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
    return 'SendEvent.onMemoEntered(memo: $memo)';
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
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onSendTapped,
  }) {
    return onMemoEntered(memo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onSendTapped,
  }) {
    return onMemoEntered?.call(memo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onSendTapped,
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
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnSendTapped value) onSendTapped,
  }) {
    return onMemoEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnSendTapped value)? onSendTapped,
  }) {
    return onMemoEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnSendTapped value)? onSendTapped,
    required TResult orElse(),
  }) {
    if (onMemoEntered != null) {
      return onMemoEntered(this);
    }
    return orElse();
  }
}

abstract class _OnMemoEntered implements SendEvent {
  const factory _OnMemoEntered(final String? memo) = _$_OnMemoEntered;

  String? get memo;
  @JsonKey(ignore: true)
  _$$_OnMemoEnteredCopyWith<_$_OnMemoEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSendTappedCopyWith<$Res> {
  factory _$$_OnSendTappedCopyWith(
          _$_OnSendTapped value, $Res Function(_$_OnSendTapped) then) =
      __$$_OnSendTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnSendTappedCopyWithImpl<$Res>
    extends _$SendEventCopyWithImpl<$Res, _$_OnSendTapped>
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
    return 'SendEvent.onSendTapped()';
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
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onSendTapped,
  }) {
    return onSendTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onSendTapped,
  }) {
    return onSendTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onSendTapped,
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
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
    required TResult Function(_OnMemoEntered value) onMemoEntered,
    required TResult Function(_OnSendTapped value) onSendTapped,
  }) {
    return onSendTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnSendTapped value)? onSendTapped,
  }) {
    return onSendTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnSendTapped value)? onSendTapped,
    required TResult orElse(),
  }) {
    if (onSendTapped != null) {
      return onSendTapped(this);
    }
    return orElse();
  }
}

abstract class _OnSendTapped implements SendEvent {
  const factory _OnSendTapped() = _$_OnSendTapped;
}

/// @nodoc
mixin _$SendState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;
  String? get userEnteredAmount => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  UserProfileData get receiverUser => throw _privateConstructorUsedError;
  WalletTokenData get tokenData => throw _privateConstructorUsedError;
  bool get isSendButtonLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendStateCopyWith<SendState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendStateCopyWith<$Res> {
  factory $SendStateCopyWith(SendState value, $Res Function(SendState) then) =
      _$SendStateCopyWithImpl<$Res, SendState>;
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      String? userEnteredAmount,
      String? memo,
      UserProfileData receiverUser,
      WalletTokenData tokenData,
      bool isSendButtonLoading});

  $PageCommandCopyWith<$Res>? get command;
  $UserProfileDataCopyWith<$Res> get receiverUser;
}

/// @nodoc
class _$SendStateCopyWithImpl<$Res, $Val extends SendState>
    implements $SendStateCopyWith<$Res> {
  _$SendStateCopyWithImpl(this._value, this._then);

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
    Object? receiverUser = null,
    Object? tokenData = null,
    Object? isSendButtonLoading = null,
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
      receiverUser: null == receiverUser
          ? _value.receiverUser
          : receiverUser // ignore: cast_nullable_to_non_nullable
              as UserProfileData,
      tokenData: null == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as WalletTokenData,
      isSendButtonLoading: null == isSendButtonLoading
          ? _value.isSendButtonLoading
          : isSendButtonLoading // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res> get receiverUser {
    return $UserProfileDataCopyWith<$Res>(_value.receiverUser, (value) {
      return _then(_value.copyWith(receiverUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SendStateCopyWith<$Res> implements $SendStateCopyWith<$Res> {
  factory _$$_SendStateCopyWith(
          _$_SendState value, $Res Function(_$_SendState) then) =
      __$$_SendStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      String? userEnteredAmount,
      String? memo,
      UserProfileData receiverUser,
      WalletTokenData tokenData,
      bool isSendButtonLoading});

  @override
  $PageCommandCopyWith<$Res>? get command;
  @override
  $UserProfileDataCopyWith<$Res> get receiverUser;
}

/// @nodoc
class __$$_SendStateCopyWithImpl<$Res>
    extends _$SendStateCopyWithImpl<$Res, _$_SendState>
    implements _$$_SendStateCopyWith<$Res> {
  __$$_SendStateCopyWithImpl(
      _$_SendState _value, $Res Function(_$_SendState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? userEnteredAmount = freezed,
    Object? memo = freezed,
    Object? receiverUser = null,
    Object? tokenData = null,
    Object? isSendButtonLoading = null,
  }) {
    return _then(_$_SendState(
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
      receiverUser: null == receiverUser
          ? _value.receiverUser
          : receiverUser // ignore: cast_nullable_to_non_nullable
              as UserProfileData,
      tokenData: null == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as WalletTokenData,
      isSendButtonLoading: null == isSendButtonLoading
          ? _value.isSendButtonLoading
          : isSendButtonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SendState extends _SendState {
  const _$_SendState(
      {this.pageState = PageState.initial,
      this.command,
      this.userEnteredAmount = null,
      this.memo = null,
      required this.receiverUser,
      required this.tokenData,
      this.isSendButtonLoading = false})
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
  final UserProfileData receiverUser;
  @override
  final WalletTokenData tokenData;
  @override
  @JsonKey()
  final bool isSendButtonLoading;

  @override
  String toString() {
    return 'SendState(pageState: $pageState, command: $command, userEnteredAmount: $userEnteredAmount, memo: $memo, receiverUser: $receiverUser, tokenData: $tokenData, isSendButtonLoading: $isSendButtonLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.userEnteredAmount, userEnteredAmount) ||
                other.userEnteredAmount == userEnteredAmount) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.receiverUser, receiverUser) ||
                other.receiverUser == receiverUser) &&
            (identical(other.tokenData, tokenData) ||
                other.tokenData == tokenData) &&
            (identical(other.isSendButtonLoading, isSendButtonLoading) ||
                other.isSendButtonLoading == isSendButtonLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, command,
      userEnteredAmount, memo, receiverUser, tokenData, isSendButtonLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendStateCopyWith<_$_SendState> get copyWith =>
      __$$_SendStateCopyWithImpl<_$_SendState>(this, _$identity);
}

abstract class _SendState extends SendState {
  const factory _SendState(
      {final PageState pageState,
      final PageCommand? command,
      final String? userEnteredAmount,
      final String? memo,
      required final UserProfileData receiverUser,
      required final WalletTokenData tokenData,
      final bool isSendButtonLoading}) = _$_SendState;
  const _SendState._() : super._();

  @override
  PageState get pageState;
  @override
  PageCommand? get command;
  @override
  String? get userEnteredAmount;
  @override
  String? get memo;
  @override
  UserProfileData get receiverUser;
  @override
  WalletTokenData get tokenData;
  @override
  bool get isSendButtonLoading;
  @override
  @JsonKey(ignore: true)
  _$$_SendStateCopyWith<_$_SendState> get copyWith =>
      throw _privateConstructorUsedError;
}
