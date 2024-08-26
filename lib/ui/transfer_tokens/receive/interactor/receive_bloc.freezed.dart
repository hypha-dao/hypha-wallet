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
mixin _$ReceiveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onNextTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onNextTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onNextTapped,
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
    required TResult Function(_OnNextTapped value) onNextTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnNextTapped value)? onNextTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnNextTapped value)? onNextTapped,
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

  /// Create a copy of ReceiveEvent
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
    extends _$ReceiveEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiveEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ReceiveEvent.initial()';
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
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onNextTapped,
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
    TResult? Function()? onNextTapped,
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
    TResult Function()? onNextTapped,
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
    required TResult Function(_OnNextTapped value) onNextTapped,
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
    TResult? Function(_OnNextTapped value)? onNextTapped,
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
    TResult Function(_OnNextTapped value)? onNextTapped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReceiveEvent {
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
    extends _$ReceiveEventCopyWithImpl<$Res, _$OnRefreshImpl>
    implements _$$OnRefreshImplCopyWith<$Res> {
  __$$OnRefreshImplCopyWithImpl(
      _$OnRefreshImpl _value, $Res Function(_$OnRefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiveEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnRefreshImpl implements _OnRefresh {
  const _$OnRefreshImpl();

  @override
  String toString() {
    return 'ReceiveEvent.onRefresh()';
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
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onNextTapped,
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
    TResult? Function()? onNextTapped,
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
    TResult Function()? onNextTapped,
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
    required TResult Function(_OnNextTapped value) onNextTapped,
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
    TResult? Function(_OnNextTapped value)? onNextTapped,
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
    TResult Function(_OnNextTapped value)? onNextTapped,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh(this);
    }
    return orElse();
  }
}

abstract class _OnRefresh implements ReceiveEvent {
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
    extends _$ReceiveEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiveEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'ReceiveEvent.clearPageCommand()';
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
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onNextTapped,
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
    TResult? Function()? onNextTapped,
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
    TResult Function()? onNextTapped,
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
    required TResult Function(_OnNextTapped value) onNextTapped,
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
    TResult? Function(_OnNextTapped value)? onNextTapped,
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
    TResult Function(_OnNextTapped value)? onNextTapped,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements ReceiveEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
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
    extends _$ReceiveEventCopyWithImpl<$Res, _$OnKeypadTappedImpl>
    implements _$$OnKeypadTappedImplCopyWith<$Res> {
  __$$OnKeypadTappedImplCopyWithImpl(
      _$OnKeypadTappedImpl _value, $Res Function(_$OnKeypadTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiveEvent
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
    return 'ReceiveEvent.onKeypadTapped(tappedKey: $tappedKey)';
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

  /// Create a copy of ReceiveEvent
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
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onNextTapped,
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
    TResult? Function()? onNextTapped,
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
    TResult Function()? onNextTapped,
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
    required TResult Function(_OnNextTapped value) onNextTapped,
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
    TResult? Function(_OnNextTapped value)? onNextTapped,
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
    TResult Function(_OnNextTapped value)? onNextTapped,
    required TResult orElse(),
  }) {
    if (onKeypadTapped != null) {
      return onKeypadTapped(this);
    }
    return orElse();
  }
}

abstract class _OnKeypadTapped implements ReceiveEvent {
  const factory _OnKeypadTapped(final KeypadKey tappedKey) =
      _$OnKeypadTappedImpl;

  KeypadKey get tappedKey;

  /// Create a copy of ReceiveEvent
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
    extends _$ReceiveEventCopyWithImpl<$Res, _$OnMemoEnteredImpl>
    implements _$$OnMemoEnteredImplCopyWith<$Res> {
  __$$OnMemoEnteredImplCopyWithImpl(
      _$OnMemoEnteredImpl _value, $Res Function(_$OnMemoEnteredImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiveEvent
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
    return 'ReceiveEvent.onMemoEntered(memo: $memo)';
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

  /// Create a copy of ReceiveEvent
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
    required TResult Function(KeypadKey tappedKey) onKeypadTapped,
    required TResult Function(String? memo) onMemoEntered,
    required TResult Function() onNextTapped,
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
    TResult? Function()? onNextTapped,
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
    TResult Function()? onNextTapped,
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
    required TResult Function(_OnNextTapped value) onNextTapped,
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
    TResult? Function(_OnNextTapped value)? onNextTapped,
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
    TResult Function(_OnNextTapped value)? onNextTapped,
    required TResult orElse(),
  }) {
    if (onMemoEntered != null) {
      return onMemoEntered(this);
    }
    return orElse();
  }
}

abstract class _OnMemoEntered implements ReceiveEvent {
  const factory _OnMemoEntered(final String? memo) = _$OnMemoEnteredImpl;

  String? get memo;

  /// Create a copy of ReceiveEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnMemoEnteredImplCopyWith<_$OnMemoEnteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnNextTappedImplCopyWith<$Res> {
  factory _$$OnNextTappedImplCopyWith(
          _$OnNextTappedImpl value, $Res Function(_$OnNextTappedImpl) then) =
      __$$OnNextTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnNextTappedImplCopyWithImpl<$Res>
    extends _$ReceiveEventCopyWithImpl<$Res, _$OnNextTappedImpl>
    implements _$$OnNextTappedImplCopyWith<$Res> {
  __$$OnNextTappedImplCopyWithImpl(
      _$OnNextTappedImpl _value, $Res Function(_$OnNextTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiveEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnNextTappedImpl implements _OnNextTapped {
  const _$OnNextTappedImpl();

  @override
  String toString() {
    return 'ReceiveEvent.onNextTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnNextTappedImpl);
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
    required TResult Function() onNextTapped,
  }) {
    return onNextTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult? Function(String? memo)? onMemoEntered,
    TResult? Function()? onNextTapped,
  }) {
    return onNextTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(KeypadKey tappedKey)? onKeypadTapped,
    TResult Function(String? memo)? onMemoEntered,
    TResult Function()? onNextTapped,
    required TResult orElse(),
  }) {
    if (onNextTapped != null) {
      return onNextTapped();
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
    required TResult Function(_OnNextTapped value) onNextTapped,
  }) {
    return onNextTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult? Function(_OnMemoEntered value)? onMemoEntered,
    TResult? Function(_OnNextTapped value)? onNextTapped,
  }) {
    return onNextTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    TResult Function(_OnMemoEntered value)? onMemoEntered,
    TResult Function(_OnNextTapped value)? onNextTapped,
    required TResult orElse(),
  }) {
    if (onNextTapped != null) {
      return onNextTapped(this);
    }
    return orElse();
  }
}

abstract class _OnNextTapped implements ReceiveEvent {
  const factory _OnNextTapped() = _$OnNextTappedImpl;
}

/// @nodoc
mixin _$ReceiveState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;
  String? get userEnteredAmount => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  WalletTokenData get tokenData => throw _privateConstructorUsedError;

  /// Create a copy of ReceiveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ReceiveState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ReceiveState
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
abstract class _$$ReceiveStateImplCopyWith<$Res>
    implements $ReceiveStateCopyWith<$Res> {
  factory _$$ReceiveStateImplCopyWith(
          _$ReceiveStateImpl value, $Res Function(_$ReceiveStateImpl) then) =
      __$$ReceiveStateImplCopyWithImpl<$Res>;
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
class __$$ReceiveStateImplCopyWithImpl<$Res>
    extends _$ReceiveStateCopyWithImpl<$Res, _$ReceiveStateImpl>
    implements _$$ReceiveStateImplCopyWith<$Res> {
  __$$ReceiveStateImplCopyWithImpl(
      _$ReceiveStateImpl _value, $Res Function(_$ReceiveStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? userEnteredAmount = freezed,
    Object? memo = freezed,
    Object? tokenData = null,
  }) {
    return _then(_$ReceiveStateImpl(
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

class _$ReceiveStateImpl extends _ReceiveState {
  const _$ReceiveStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveStateImpl &&
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

  /// Create a copy of ReceiveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveStateImplCopyWith<_$ReceiveStateImpl> get copyWith =>
      __$$ReceiveStateImplCopyWithImpl<_$ReceiveStateImpl>(this, _$identity);
}

abstract class _ReceiveState extends ReceiveState {
  const factory _ReceiveState(
      {final PageState pageState,
      final PageCommand? command,
      final String? userEnteredAmount,
      final String? memo,
      required final WalletTokenData tokenData}) = _$ReceiveStateImpl;
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

  /// Create a copy of ReceiveState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiveStateImplCopyWith<_$ReceiveStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
