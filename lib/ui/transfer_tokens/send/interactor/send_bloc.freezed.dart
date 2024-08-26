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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$NavigateToSendSuccessImplCopyWith<$Res>
    implements $PageCommandCopyWith<$Res> {
  factory _$$NavigateToSendSuccessImplCopyWith(
          _$NavigateToSendSuccessImpl value,
          $Res Function(_$NavigateToSendSuccessImpl) then) =
      __$$NavigateToSendSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionId});
}

/// @nodoc
class __$$NavigateToSendSuccessImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToSendSuccessImpl>
    implements _$$NavigateToSendSuccessImplCopyWith<$Res> {
  __$$NavigateToSendSuccessImplCopyWithImpl(_$NavigateToSendSuccessImpl _value,
      $Res Function(_$NavigateToSendSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
  }) {
    return _then(_$NavigateToSendSuccessImpl(
      null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NavigateToSendSuccessImpl implements _NavigateToSendSuccess {
  const _$NavigateToSendSuccessImpl(this.transactionId);

  @override
  final String transactionId;

  @override
  String toString() {
    return 'PageCommand.navigateToSendSuccess(transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToSendSuccessImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionId);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToSendSuccessImplCopyWith<_$NavigateToSendSuccessImpl>
      get copyWith => __$$NavigateToSendSuccessImplCopyWithImpl<
          _$NavigateToSendSuccessImpl>(this, _$identity);

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
      _$NavigateToSendSuccessImpl;

  @override
  String get transactionId;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToSendSuccessImplCopyWith<_$NavigateToSendSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
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

  /// Create a copy of SendEvent
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
    extends _$SendEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SendEvent.initial()';
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
    extends _$SendEventCopyWithImpl<$Res, _$OnRefreshImpl>
    implements _$$OnRefreshImplCopyWith<$Res> {
  __$$OnRefreshImplCopyWithImpl(
      _$OnRefreshImpl _value, $Res Function(_$OnRefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnRefreshImpl implements _OnRefresh {
  const _$OnRefreshImpl();

  @override
  String toString() {
    return 'SendEvent.onRefresh()';
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
    extends _$SendEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'SendEvent.clearPageCommand()';
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
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$OnPercentageTappedImplCopyWith<$Res> {
  factory _$$OnPercentageTappedImplCopyWith(_$OnPercentageTappedImpl value,
          $Res Function(_$OnPercentageTappedImpl) then) =
      __$$OnPercentageTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AmountPercentage amountPercentage});
}

/// @nodoc
class __$$OnPercentageTappedImplCopyWithImpl<$Res>
    extends _$SendEventCopyWithImpl<$Res, _$OnPercentageTappedImpl>
    implements _$$OnPercentageTappedImplCopyWith<$Res> {
  __$$OnPercentageTappedImplCopyWithImpl(_$OnPercentageTappedImpl _value,
      $Res Function(_$OnPercentageTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountPercentage = null,
  }) {
    return _then(_$OnPercentageTappedImpl(
      null == amountPercentage
          ? _value.amountPercentage
          : amountPercentage // ignore: cast_nullable_to_non_nullable
              as AmountPercentage,
    ));
  }
}

/// @nodoc

class _$OnPercentageTappedImpl implements _OnPercentageTapped {
  const _$OnPercentageTappedImpl(this.amountPercentage);

  @override
  final AmountPercentage amountPercentage;

  @override
  String toString() {
    return 'SendEvent.onPercentageTapped(amountPercentage: $amountPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPercentageTappedImpl &&
            (identical(other.amountPercentage, amountPercentage) ||
                other.amountPercentage == amountPercentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountPercentage);

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPercentageTappedImplCopyWith<_$OnPercentageTappedImpl> get copyWith =>
      __$$OnPercentageTappedImplCopyWithImpl<_$OnPercentageTappedImpl>(
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
      _$OnPercentageTappedImpl;

  AmountPercentage get amountPercentage;

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPercentageTappedImplCopyWith<_$OnPercentageTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnKeypadTappedImplCopyWith<$Res> {
  factory _$$OnKeypadTappedImplCopyWith(_$OnKeypadTappedImpl value,
          $Res Function(_$OnKeypadTappedImpl) then) =
      __$$OnKeypadTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KeypadKey tappedKey});
}

/// @nodoc
class __$$OnKeypadTappedImplCopyWithImpl<$Res>
    extends _$SendEventCopyWithImpl<$Res, _$OnKeypadTappedImpl>
    implements _$$OnKeypadTappedImplCopyWith<$Res> {
  __$$OnKeypadTappedImplCopyWithImpl(
      _$OnKeypadTappedImpl _value, $Res Function(_$OnKeypadTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tappedKey = null,
  }) {
    return _then(_$OnKeypadTappedImpl(
      null == tappedKey
          ? _value.tappedKey
          : tappedKey // ignore: cast_nullable_to_non_nullable
              as KeypadKey,
    ));
  }
}

/// @nodoc

class _$OnKeypadTappedImpl implements _OnKeypadTapped {
  const _$OnKeypadTappedImpl(this.tappedKey);

  @override
  final KeypadKey tappedKey;

  @override
  String toString() {
    return 'SendEvent.onKeypadTapped(tappedKey: $tappedKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnKeypadTappedImpl &&
            (identical(other.tappedKey, tappedKey) ||
                other.tappedKey == tappedKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tappedKey);

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnKeypadTappedImplCopyWith<_$OnKeypadTappedImpl> get copyWith =>
      __$$OnKeypadTappedImplCopyWithImpl<_$OnKeypadTappedImpl>(
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
  const factory _OnKeypadTapped(final KeypadKey tappedKey) =
      _$OnKeypadTappedImpl;

  KeypadKey get tappedKey;

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnKeypadTappedImplCopyWith<_$OnKeypadTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnMemoEnteredImplCopyWith<$Res> {
  factory _$$OnMemoEnteredImplCopyWith(
          _$OnMemoEnteredImpl value, $Res Function(_$OnMemoEnteredImpl) then) =
      __$$OnMemoEnteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? memo});
}

/// @nodoc
class __$$OnMemoEnteredImplCopyWithImpl<$Res>
    extends _$SendEventCopyWithImpl<$Res, _$OnMemoEnteredImpl>
    implements _$$OnMemoEnteredImplCopyWith<$Res> {
  __$$OnMemoEnteredImplCopyWithImpl(
      _$OnMemoEnteredImpl _value, $Res Function(_$OnMemoEnteredImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memo = freezed,
  }) {
    return _then(_$OnMemoEnteredImpl(
      freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnMemoEnteredImpl implements _OnMemoEntered {
  const _$OnMemoEnteredImpl(this.memo);

  @override
  final String? memo;

  @override
  String toString() {
    return 'SendEvent.onMemoEntered(memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMemoEnteredImpl &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memo);

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMemoEnteredImplCopyWith<_$OnMemoEnteredImpl> get copyWith =>
      __$$OnMemoEnteredImplCopyWithImpl<_$OnMemoEnteredImpl>(this, _$identity);

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
  const factory _OnMemoEntered(final String? memo) = _$OnMemoEnteredImpl;

  String? get memo;

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnMemoEnteredImplCopyWith<_$OnMemoEnteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSendTappedImplCopyWith<$Res> {
  factory _$$OnSendTappedImplCopyWith(
          _$OnSendTappedImpl value, $Res Function(_$OnSendTappedImpl) then) =
      __$$OnSendTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSendTappedImplCopyWithImpl<$Res>
    extends _$SendEventCopyWithImpl<$Res, _$OnSendTappedImpl>
    implements _$$OnSendTappedImplCopyWith<$Res> {
  __$$OnSendTappedImplCopyWithImpl(
      _$OnSendTappedImpl _value, $Res Function(_$OnSendTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSendTappedImpl implements _OnSendTapped {
  const _$OnSendTappedImpl();

  @override
  String toString() {
    return 'SendEvent.onSendTapped()';
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
  const factory _OnSendTapped() = _$OnSendTappedImpl;
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

  /// Create a copy of SendState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of SendState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of SendState
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

  /// Create a copy of SendState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res> get receiverUser {
    return $UserProfileDataCopyWith<$Res>(_value.receiverUser, (value) {
      return _then(_value.copyWith(receiverUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendStateImplCopyWith<$Res>
    implements $SendStateCopyWith<$Res> {
  factory _$$SendStateImplCopyWith(
          _$SendStateImpl value, $Res Function(_$SendStateImpl) then) =
      __$$SendStateImplCopyWithImpl<$Res>;
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
class __$$SendStateImplCopyWithImpl<$Res>
    extends _$SendStateCopyWithImpl<$Res, _$SendStateImpl>
    implements _$$SendStateImplCopyWith<$Res> {
  __$$SendStateImplCopyWithImpl(
      _$SendStateImpl _value, $Res Function(_$SendStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendState
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$SendStateImpl(
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

class _$SendStateImpl extends _SendState {
  const _$SendStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendStateImpl &&
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

  /// Create a copy of SendState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendStateImplCopyWith<_$SendStateImpl> get copyWith =>
      __$$SendStateImplCopyWithImpl<_$SendStateImpl>(this, _$identity);
}

abstract class _SendState extends SendState {
  const factory _SendState(
      {final PageState pageState,
      final PageCommand? command,
      final String? userEnteredAmount,
      final String? memo,
      required final UserProfileData receiverUser,
      required final WalletTokenData tokenData,
      final bool isSendButtonLoading}) = _$SendStateImpl;
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

  /// Create a copy of SendState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendStateImplCopyWith<_$SendStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
