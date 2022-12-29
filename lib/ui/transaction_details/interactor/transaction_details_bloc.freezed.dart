// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_details_bloc.dart';

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
    required TResult Function() transactionCancelled,
    required TResult Function() navigateToTransactionSuccess,
    required TResult Function() navigateToTransactionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? transactionCancelled,
    TResult? Function()? navigateToTransactionSuccess,
    TResult? Function()? navigateToTransactionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? transactionCancelled,
    TResult Function()? navigateToTransactionSuccess,
    TResult Function()? navigateToTransactionFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionCancelled value) transactionCancelled,
    required TResult Function(_NavigateToTransactionSuccess value)
        navigateToTransactionSuccess,
    required TResult Function(_NavigateToTransactionFailed value)
        navigateToTransactionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransactionCancelled value)? transactionCancelled,
    TResult? Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult? Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionCancelled value)? transactionCancelled,
    TResult Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
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
abstract class _$$_TransactionCancelledCopyWith<$Res> {
  factory _$$_TransactionCancelledCopyWith(_$_TransactionCancelled value,
          $Res Function(_$_TransactionCancelled) then) =
      __$$_TransactionCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TransactionCancelledCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_TransactionCancelled>
    implements _$$_TransactionCancelledCopyWith<$Res> {
  __$$_TransactionCancelledCopyWithImpl(_$_TransactionCancelled _value,
      $Res Function(_$_TransactionCancelled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TransactionCancelled implements _TransactionCancelled {
  const _$_TransactionCancelled();

  @override
  String toString() {
    return 'PageCommand.transactionCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TransactionCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() transactionCancelled,
    required TResult Function() navigateToTransactionSuccess,
    required TResult Function() navigateToTransactionFailed,
  }) {
    return transactionCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? transactionCancelled,
    TResult? Function()? navigateToTransactionSuccess,
    TResult? Function()? navigateToTransactionFailed,
  }) {
    return transactionCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? transactionCancelled,
    TResult Function()? navigateToTransactionSuccess,
    TResult Function()? navigateToTransactionFailed,
    required TResult orElse(),
  }) {
    if (transactionCancelled != null) {
      return transactionCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionCancelled value) transactionCancelled,
    required TResult Function(_NavigateToTransactionSuccess value)
        navigateToTransactionSuccess,
    required TResult Function(_NavigateToTransactionFailed value)
        navigateToTransactionFailed,
  }) {
    return transactionCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransactionCancelled value)? transactionCancelled,
    TResult? Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult? Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
  }) {
    return transactionCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionCancelled value)? transactionCancelled,
    TResult Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
    required TResult orElse(),
  }) {
    if (transactionCancelled != null) {
      return transactionCancelled(this);
    }
    return orElse();
  }
}

abstract class _TransactionCancelled implements PageCommand {
  const factory _TransactionCancelled() = _$_TransactionCancelled;
}

/// @nodoc
abstract class _$$_NavigateToTransactionSuccessCopyWith<$Res> {
  factory _$$_NavigateToTransactionSuccessCopyWith(
          _$_NavigateToTransactionSuccess value,
          $Res Function(_$_NavigateToTransactionSuccess) then) =
      __$$_NavigateToTransactionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NavigateToTransactionSuccessCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_NavigateToTransactionSuccess>
    implements _$$_NavigateToTransactionSuccessCopyWith<$Res> {
  __$$_NavigateToTransactionSuccessCopyWithImpl(
      _$_NavigateToTransactionSuccess _value,
      $Res Function(_$_NavigateToTransactionSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NavigateToTransactionSuccess implements _NavigateToTransactionSuccess {
  const _$_NavigateToTransactionSuccess();

  @override
  String toString() {
    return 'PageCommand.navigateToTransactionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigateToTransactionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() transactionCancelled,
    required TResult Function() navigateToTransactionSuccess,
    required TResult Function() navigateToTransactionFailed,
  }) {
    return navigateToTransactionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? transactionCancelled,
    TResult? Function()? navigateToTransactionSuccess,
    TResult? Function()? navigateToTransactionFailed,
  }) {
    return navigateToTransactionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? transactionCancelled,
    TResult Function()? navigateToTransactionSuccess,
    TResult Function()? navigateToTransactionFailed,
    required TResult orElse(),
  }) {
    if (navigateToTransactionSuccess != null) {
      return navigateToTransactionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionCancelled value) transactionCancelled,
    required TResult Function(_NavigateToTransactionSuccess value)
        navigateToTransactionSuccess,
    required TResult Function(_NavigateToTransactionFailed value)
        navigateToTransactionFailed,
  }) {
    return navigateToTransactionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransactionCancelled value)? transactionCancelled,
    TResult? Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult? Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
  }) {
    return navigateToTransactionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionCancelled value)? transactionCancelled,
    TResult Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
    required TResult orElse(),
  }) {
    if (navigateToTransactionSuccess != null) {
      return navigateToTransactionSuccess(this);
    }
    return orElse();
  }
}

abstract class _NavigateToTransactionSuccess implements PageCommand {
  const factory _NavigateToTransactionSuccess() =
      _$_NavigateToTransactionSuccess;
}

/// @nodoc
abstract class _$$_NavigateToTransactionFailedCopyWith<$Res> {
  factory _$$_NavigateToTransactionFailedCopyWith(
          _$_NavigateToTransactionFailed value,
          $Res Function(_$_NavigateToTransactionFailed) then) =
      __$$_NavigateToTransactionFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NavigateToTransactionFailedCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_NavigateToTransactionFailed>
    implements _$$_NavigateToTransactionFailedCopyWith<$Res> {
  __$$_NavigateToTransactionFailedCopyWithImpl(
      _$_NavigateToTransactionFailed _value,
      $Res Function(_$_NavigateToTransactionFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NavigateToTransactionFailed implements _NavigateToTransactionFailed {
  const _$_NavigateToTransactionFailed();

  @override
  String toString() {
    return 'PageCommand.navigateToTransactionFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigateToTransactionFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() transactionCancelled,
    required TResult Function() navigateToTransactionSuccess,
    required TResult Function() navigateToTransactionFailed,
  }) {
    return navigateToTransactionFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? transactionCancelled,
    TResult? Function()? navigateToTransactionSuccess,
    TResult? Function()? navigateToTransactionFailed,
  }) {
    return navigateToTransactionFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? transactionCancelled,
    TResult Function()? navigateToTransactionSuccess,
    TResult Function()? navigateToTransactionFailed,
    required TResult orElse(),
  }) {
    if (navigateToTransactionFailed != null) {
      return navigateToTransactionFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionCancelled value) transactionCancelled,
    required TResult Function(_NavigateToTransactionSuccess value)
        navigateToTransactionSuccess,
    required TResult Function(_NavigateToTransactionFailed value)
        navigateToTransactionFailed,
  }) {
    return navigateToTransactionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransactionCancelled value)? transactionCancelled,
    TResult? Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult? Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
  }) {
    return navigateToTransactionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionCancelled value)? transactionCancelled,
    TResult Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
    required TResult orElse(),
  }) {
    if (navigateToTransactionFailed != null) {
      return navigateToTransactionFailed(this);
    }
    return orElse();
  }
}

abstract class _NavigateToTransactionFailed implements PageCommand {
  const factory _NavigateToTransactionFailed() = _$_NavigateToTransactionFailed;
}

/// @nodoc
mixin _$TransactionDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onUserSlideCompleted,
    required TResult Function() onCancelTransactionTapped,
    required TResult Function() clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onUserSlideCompleted,
    TResult? Function()? onCancelTransactionTapped,
    TResult? Function()? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onUserSlideCompleted,
    TResult Function()? onCancelTransactionTapped,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnUserSlideCompleted value) onUserSlideCompleted,
    required TResult Function(_OnCancelTransactionTapped value)
        onCancelTransactionTapped,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult? Function(_OnCancelTransactionTapped value)?
        onCancelTransactionTapped,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult Function(_OnCancelTransactionTapped value)?
        onCancelTransactionTapped,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailsEventCopyWith<$Res> {
  factory $TransactionDetailsEventCopyWith(TransactionDetailsEvent value,
          $Res Function(TransactionDetailsEvent) then) =
      _$TransactionDetailsEventCopyWithImpl<$Res, TransactionDetailsEvent>;
}

/// @nodoc
class _$TransactionDetailsEventCopyWithImpl<$Res,
        $Val extends TransactionDetailsEvent>
    implements $TransactionDetailsEventCopyWith<$Res> {
  _$TransactionDetailsEventCopyWithImpl(this._value, this._then);

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
    extends _$TransactionDetailsEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TransactionDetailsEvent.initial()';
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
    required TResult Function() onUserSlideCompleted,
    required TResult Function() onCancelTransactionTapped,
    required TResult Function() clearPageCommand,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onUserSlideCompleted,
    TResult? Function()? onCancelTransactionTapped,
    TResult? Function()? clearPageCommand,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onUserSlideCompleted,
    TResult Function()? onCancelTransactionTapped,
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
    required TResult Function(_OnUserSlideCompleted value) onUserSlideCompleted,
    required TResult Function(_OnCancelTransactionTapped value)
        onCancelTransactionTapped,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult? Function(_OnCancelTransactionTapped value)?
        onCancelTransactionTapped,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult Function(_OnCancelTransactionTapped value)?
        onCancelTransactionTapped,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransactionDetailsEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_OnUserSlideCompletedCopyWith<$Res> {
  factory _$$_OnUserSlideCompletedCopyWith(_$_OnUserSlideCompleted value,
          $Res Function(_$_OnUserSlideCompleted) then) =
      __$$_OnUserSlideCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnUserSlideCompletedCopyWithImpl<$Res>
    extends _$TransactionDetailsEventCopyWithImpl<$Res, _$_OnUserSlideCompleted>
    implements _$$_OnUserSlideCompletedCopyWith<$Res> {
  __$$_OnUserSlideCompletedCopyWithImpl(_$_OnUserSlideCompleted _value,
      $Res Function(_$_OnUserSlideCompleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnUserSlideCompleted implements _OnUserSlideCompleted {
  const _$_OnUserSlideCompleted();

  @override
  String toString() {
    return 'TransactionDetailsEvent.onUserSlideCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnUserSlideCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onUserSlideCompleted,
    required TResult Function() onCancelTransactionTapped,
    required TResult Function() clearPageCommand,
  }) {
    return onUserSlideCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onUserSlideCompleted,
    TResult? Function()? onCancelTransactionTapped,
    TResult? Function()? clearPageCommand,
  }) {
    return onUserSlideCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onUserSlideCompleted,
    TResult Function()? onCancelTransactionTapped,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) {
    if (onUserSlideCompleted != null) {
      return onUserSlideCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnUserSlideCompleted value) onUserSlideCompleted,
    required TResult Function(_OnCancelTransactionTapped value)
        onCancelTransactionTapped,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return onUserSlideCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult? Function(_OnCancelTransactionTapped value)?
        onCancelTransactionTapped,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return onUserSlideCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult Function(_OnCancelTransactionTapped value)?
        onCancelTransactionTapped,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (onUserSlideCompleted != null) {
      return onUserSlideCompleted(this);
    }
    return orElse();
  }
}

abstract class _OnUserSlideCompleted implements TransactionDetailsEvent {
  const factory _OnUserSlideCompleted() = _$_OnUserSlideCompleted;
}

/// @nodoc
abstract class _$$_OnCancelTransactionTappedCopyWith<$Res> {
  factory _$$_OnCancelTransactionTappedCopyWith(
          _$_OnCancelTransactionTapped value,
          $Res Function(_$_OnCancelTransactionTapped) then) =
      __$$_OnCancelTransactionTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnCancelTransactionTappedCopyWithImpl<$Res>
    extends _$TransactionDetailsEventCopyWithImpl<$Res,
        _$_OnCancelTransactionTapped>
    implements _$$_OnCancelTransactionTappedCopyWith<$Res> {
  __$$_OnCancelTransactionTappedCopyWithImpl(
      _$_OnCancelTransactionTapped _value,
      $Res Function(_$_OnCancelTransactionTapped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnCancelTransactionTapped implements _OnCancelTransactionTapped {
  const _$_OnCancelTransactionTapped();

  @override
  String toString() {
    return 'TransactionDetailsEvent.onCancelTransactionTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnCancelTransactionTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onUserSlideCompleted,
    required TResult Function() onCancelTransactionTapped,
    required TResult Function() clearPageCommand,
  }) {
    return onCancelTransactionTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onUserSlideCompleted,
    TResult? Function()? onCancelTransactionTapped,
    TResult? Function()? clearPageCommand,
  }) {
    return onCancelTransactionTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onUserSlideCompleted,
    TResult Function()? onCancelTransactionTapped,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) {
    if (onCancelTransactionTapped != null) {
      return onCancelTransactionTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnUserSlideCompleted value) onUserSlideCompleted,
    required TResult Function(_OnCancelTransactionTapped value)
        onCancelTransactionTapped,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return onCancelTransactionTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult? Function(_OnCancelTransactionTapped value)?
        onCancelTransactionTapped,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return onCancelTransactionTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult Function(_OnCancelTransactionTapped value)?
        onCancelTransactionTapped,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (onCancelTransactionTapped != null) {
      return onCancelTransactionTapped(this);
    }
    return orElse();
  }
}

abstract class _OnCancelTransactionTapped implements TransactionDetailsEvent {
  const factory _OnCancelTransactionTapped() = _$_OnCancelTransactionTapped;
}

/// @nodoc
abstract class _$$_ClearPageCommandCopyWith<$Res> {
  factory _$$_ClearPageCommandCopyWith(
          _$_ClearPageCommand value, $Res Function(_$_ClearPageCommand) then) =
      __$$_ClearPageCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearPageCommandCopyWithImpl<$Res>
    extends _$TransactionDetailsEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'TransactionDetailsEvent.clearPageCommand()';
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
    required TResult Function() onUserSlideCompleted,
    required TResult Function() onCancelTransactionTapped,
    required TResult Function() clearPageCommand,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onUserSlideCompleted,
    TResult? Function()? onCancelTransactionTapped,
    TResult? Function()? clearPageCommand,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onUserSlideCompleted,
    TResult Function()? onCancelTransactionTapped,
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
    required TResult Function(_OnUserSlideCompleted value) onUserSlideCompleted,
    required TResult Function(_OnCancelTransactionTapped value)
        onCancelTransactionTapped,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult? Function(_OnCancelTransactionTapped value)?
        onCancelTransactionTapped,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult Function(_OnCancelTransactionTapped value)?
        onCancelTransactionTapped,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements TransactionDetailsEvent {
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
mixin _$TransactionDetailsState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionDetailsStateCopyWith<TransactionDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailsStateCopyWith<$Res> {
  factory $TransactionDetailsStateCopyWith(TransactionDetailsState value,
          $Res Function(TransactionDetailsState) then) =
      _$TransactionDetailsStateCopyWithImpl<$Res, TransactionDetailsState>;
  @useResult
  $Res call({PageState pageState, PageCommand? command});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$TransactionDetailsStateCopyWithImpl<$Res,
        $Val extends TransactionDetailsState>
    implements $TransactionDetailsStateCopyWith<$Res> {
  _$TransactionDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
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
abstract class _$$_TransactionDetailsStateCopyWith<$Res>
    implements $TransactionDetailsStateCopyWith<$Res> {
  factory _$$_TransactionDetailsStateCopyWith(_$_TransactionDetailsState value,
          $Res Function(_$_TransactionDetailsState) then) =
      __$$_TransactionDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState pageState, PageCommand? command});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$_TransactionDetailsStateCopyWithImpl<$Res>
    extends _$TransactionDetailsStateCopyWithImpl<$Res,
        _$_TransactionDetailsState>
    implements _$$_TransactionDetailsStateCopyWith<$Res> {
  __$$_TransactionDetailsStateCopyWithImpl(_$_TransactionDetailsState _value,
      $Res Function(_$_TransactionDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
  }) {
    return _then(_$_TransactionDetailsState(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$_TransactionDetailsState implements _TransactionDetailsState {
  const _$_TransactionDetailsState(
      {this.pageState = PageState.initial, this.command});

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final PageCommand? command;

  @override
  String toString() {
    return 'TransactionDetailsState(pageState: $pageState, command: $command)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionDetailsState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionDetailsStateCopyWith<_$_TransactionDetailsState>
      get copyWith =>
          __$$_TransactionDetailsStateCopyWithImpl<_$_TransactionDetailsState>(
              this, _$identity);
}

abstract class _TransactionDetailsState implements TransactionDetailsState {
  const factory _TransactionDetailsState(
      {final PageState pageState,
      final PageCommand? command}) = _$_TransactionDetailsState;

  @override
  PageState get pageState;
  @override
  PageCommand? get command;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionDetailsStateCopyWith<_$_TransactionDetailsState>
      get copyWith => throw _privateConstructorUsedError;
}
