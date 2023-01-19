// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_transaction_bloc.dart';

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
    required TResult Function(SignSuccessTransactionType type)
        navigateToTransactionSuccess,
    required TResult Function() navigateToTransactionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult? Function()? navigateToTransactionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult Function()? navigateToTransactionFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToTransactionSuccess value)
        navigateToTransactionSuccess,
    required TResult Function(_NavigateToTransactionFailed value)
        navigateToTransactionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult? Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
abstract class _$$_NavigateToTransactionSuccessCopyWith<$Res> {
  factory _$$_NavigateToTransactionSuccessCopyWith(
          _$_NavigateToTransactionSuccess value,
          $Res Function(_$_NavigateToTransactionSuccess) then) =
      __$$_NavigateToTransactionSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({SignSuccessTransactionType type});
}

/// @nodoc
class __$$_NavigateToTransactionSuccessCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_NavigateToTransactionSuccess>
    implements _$$_NavigateToTransactionSuccessCopyWith<$Res> {
  __$$_NavigateToTransactionSuccessCopyWithImpl(
      _$_NavigateToTransactionSuccess _value,
      $Res Function(_$_NavigateToTransactionSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_NavigateToTransactionSuccess(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SignSuccessTransactionType,
    ));
  }
}

/// @nodoc

class _$_NavigateToTransactionSuccess implements _NavigateToTransactionSuccess {
  const _$_NavigateToTransactionSuccess(this.type);

  @override
  final SignSuccessTransactionType type;

  @override
  String toString() {
    return 'PageCommand.navigateToTransactionSuccess(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigateToTransactionSuccess &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigateToTransactionSuccessCopyWith<_$_NavigateToTransactionSuccess>
      get copyWith => __$$_NavigateToTransactionSuccessCopyWithImpl<
          _$_NavigateToTransactionSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignSuccessTransactionType type)
        navigateToTransactionSuccess,
    required TResult Function() navigateToTransactionFailed,
  }) {
    return navigateToTransactionSuccess(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult? Function()? navigateToTransactionFailed,
  }) {
    return navigateToTransactionSuccess?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult Function()? navigateToTransactionFailed,
    required TResult orElse(),
  }) {
    if (navigateToTransactionSuccess != null) {
      return navigateToTransactionSuccess(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
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
  const factory _NavigateToTransactionSuccess(
      final SignSuccessTransactionType type) = _$_NavigateToTransactionSuccess;

  SignSuccessTransactionType get type;
  @JsonKey(ignore: true)
  _$$_NavigateToTransactionSuccessCopyWith<_$_NavigateToTransactionSuccess>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(SignSuccessTransactionType type)
        navigateToTransactionSuccess,
    required TResult Function() navigateToTransactionFailed,
  }) {
    return navigateToTransactionFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult? Function()? navigateToTransactionFailed,
  }) {
    return navigateToTransactionFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
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
mixin _$SignTransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onUserSlideCompleted,
    required TResult Function() onUserSlideCanceled,
    required TResult Function() clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onUserSlideCompleted,
    TResult? Function()? onUserSlideCanceled,
    TResult? Function()? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onUserSlideCompleted,
    TResult Function()? onUserSlideCanceled,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnUserSlideCompleted value) onUserSlideCompleted,
    required TResult Function(_OnUserSlideCanceled value) onUserSlideCanceled,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult? Function(_OnUserSlideCanceled value)? onUserSlideCanceled,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult Function(_OnUserSlideCanceled value)? onUserSlideCanceled,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignTransactionEventCopyWith<$Res> {
  factory $SignTransactionEventCopyWith(SignTransactionEvent value,
          $Res Function(SignTransactionEvent) then) =
      _$SignTransactionEventCopyWithImpl<$Res, SignTransactionEvent>;
}

/// @nodoc
class _$SignTransactionEventCopyWithImpl<$Res,
        $Val extends SignTransactionEvent>
    implements $SignTransactionEventCopyWith<$Res> {
  _$SignTransactionEventCopyWithImpl(this._value, this._then);

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
    extends _$SignTransactionEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SignTransactionEvent.initial()';
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
    required TResult Function() onUserSlideCanceled,
    required TResult Function() clearPageCommand,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onUserSlideCompleted,
    TResult? Function()? onUserSlideCanceled,
    TResult? Function()? clearPageCommand,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onUserSlideCompleted,
    TResult Function()? onUserSlideCanceled,
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
    required TResult Function(_OnUserSlideCanceled value) onUserSlideCanceled,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult? Function(_OnUserSlideCanceled value)? onUserSlideCanceled,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult Function(_OnUserSlideCanceled value)? onUserSlideCanceled,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignTransactionEvent {
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
    extends _$SignTransactionEventCopyWithImpl<$Res, _$_OnUserSlideCompleted>
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
    return 'SignTransactionEvent.onUserSlideCompleted()';
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
    required TResult Function() onUserSlideCanceled,
    required TResult Function() clearPageCommand,
  }) {
    return onUserSlideCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onUserSlideCompleted,
    TResult? Function()? onUserSlideCanceled,
    TResult? Function()? clearPageCommand,
  }) {
    return onUserSlideCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onUserSlideCompleted,
    TResult Function()? onUserSlideCanceled,
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
    required TResult Function(_OnUserSlideCanceled value) onUserSlideCanceled,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return onUserSlideCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult? Function(_OnUserSlideCanceled value)? onUserSlideCanceled,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return onUserSlideCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult Function(_OnUserSlideCanceled value)? onUserSlideCanceled,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (onUserSlideCompleted != null) {
      return onUserSlideCompleted(this);
    }
    return orElse();
  }
}

abstract class _OnUserSlideCompleted implements SignTransactionEvent {
  const factory _OnUserSlideCompleted() = _$_OnUserSlideCompleted;
}

/// @nodoc
abstract class _$$_OnUserSlideCanceledCopyWith<$Res> {
  factory _$$_OnUserSlideCanceledCopyWith(_$_OnUserSlideCanceled value,
          $Res Function(_$_OnUserSlideCanceled) then) =
      __$$_OnUserSlideCanceledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnUserSlideCanceledCopyWithImpl<$Res>
    extends _$SignTransactionEventCopyWithImpl<$Res, _$_OnUserSlideCanceled>
    implements _$$_OnUserSlideCanceledCopyWith<$Res> {
  __$$_OnUserSlideCanceledCopyWithImpl(_$_OnUserSlideCanceled _value,
      $Res Function(_$_OnUserSlideCanceled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnUserSlideCanceled implements _OnUserSlideCanceled {
  const _$_OnUserSlideCanceled();

  @override
  String toString() {
    return 'SignTransactionEvent.onUserSlideCanceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnUserSlideCanceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onUserSlideCompleted,
    required TResult Function() onUserSlideCanceled,
    required TResult Function() clearPageCommand,
  }) {
    return onUserSlideCanceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onUserSlideCompleted,
    TResult? Function()? onUserSlideCanceled,
    TResult? Function()? clearPageCommand,
  }) {
    return onUserSlideCanceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onUserSlideCompleted,
    TResult Function()? onUserSlideCanceled,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) {
    if (onUserSlideCanceled != null) {
      return onUserSlideCanceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnUserSlideCompleted value) onUserSlideCompleted,
    required TResult Function(_OnUserSlideCanceled value) onUserSlideCanceled,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return onUserSlideCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult? Function(_OnUserSlideCanceled value)? onUserSlideCanceled,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return onUserSlideCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult Function(_OnUserSlideCanceled value)? onUserSlideCanceled,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (onUserSlideCanceled != null) {
      return onUserSlideCanceled(this);
    }
    return orElse();
  }
}

abstract class _OnUserSlideCanceled implements SignTransactionEvent {
  const factory _OnUserSlideCanceled() = _$_OnUserSlideCanceled;
}

/// @nodoc
abstract class _$$_ClearPageCommandCopyWith<$Res> {
  factory _$$_ClearPageCommandCopyWith(
          _$_ClearPageCommand value, $Res Function(_$_ClearPageCommand) then) =
      __$$_ClearPageCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearPageCommandCopyWithImpl<$Res>
    extends _$SignTransactionEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'SignTransactionEvent.clearPageCommand()';
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
    required TResult Function() onUserSlideCanceled,
    required TResult Function() clearPageCommand,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onUserSlideCompleted,
    TResult? Function()? onUserSlideCanceled,
    TResult? Function()? clearPageCommand,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onUserSlideCompleted,
    TResult Function()? onUserSlideCanceled,
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
    required TResult Function(_OnUserSlideCanceled value) onUserSlideCanceled,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult? Function(_OnUserSlideCanceled value)? onUserSlideCanceled,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnUserSlideCompleted value)? onUserSlideCompleted,
    TResult Function(_OnUserSlideCanceled value)? onUserSlideCanceled,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements SignTransactionEvent {
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
mixin _$SignTransactionState {
  PageState get pageState => throw _privateConstructorUsedError;
  TransactionDetailsData get transactionDetailsData =>
      throw _privateConstructorUsedError;
  ScanQrCodeResultData get qrCodeData => throw _privateConstructorUsedError;
  String? get callback => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignTransactionStateCopyWith<SignTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignTransactionStateCopyWith<$Res> {
  factory $SignTransactionStateCopyWith(SignTransactionState value,
          $Res Function(SignTransactionState) then) =
      _$SignTransactionStateCopyWithImpl<$Res, SignTransactionState>;
  @useResult
  $Res call(
      {PageState pageState,
      TransactionDetailsData transactionDetailsData,
      ScanQrCodeResultData qrCodeData,
      String? callback,
      PageCommand? command});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$SignTransactionStateCopyWithImpl<$Res,
        $Val extends SignTransactionState>
    implements $SignTransactionStateCopyWith<$Res> {
  _$SignTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? transactionDetailsData = null,
    Object? qrCodeData = null,
    Object? callback = freezed,
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      transactionDetailsData: null == transactionDetailsData
          ? _value.transactionDetailsData
          : transactionDetailsData // ignore: cast_nullable_to_non_nullable
              as TransactionDetailsData,
      qrCodeData: null == qrCodeData
          ? _value.qrCodeData
          : qrCodeData // ignore: cast_nullable_to_non_nullable
              as ScanQrCodeResultData,
      callback: freezed == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_SignTransactionStateCopyWith<$Res>
    implements $SignTransactionStateCopyWith<$Res> {
  factory _$$_SignTransactionStateCopyWith(_$_SignTransactionState value,
          $Res Function(_$_SignTransactionState) then) =
      __$$_SignTransactionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      TransactionDetailsData transactionDetailsData,
      ScanQrCodeResultData qrCodeData,
      String? callback,
      PageCommand? command});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$_SignTransactionStateCopyWithImpl<$Res>
    extends _$SignTransactionStateCopyWithImpl<$Res, _$_SignTransactionState>
    implements _$$_SignTransactionStateCopyWith<$Res> {
  __$$_SignTransactionStateCopyWithImpl(_$_SignTransactionState _value,
      $Res Function(_$_SignTransactionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? transactionDetailsData = null,
    Object? qrCodeData = null,
    Object? callback = freezed,
    Object? command = freezed,
  }) {
    return _then(_$_SignTransactionState(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      transactionDetailsData: null == transactionDetailsData
          ? _value.transactionDetailsData
          : transactionDetailsData // ignore: cast_nullable_to_non_nullable
              as TransactionDetailsData,
      qrCodeData: null == qrCodeData
          ? _value.qrCodeData
          : qrCodeData // ignore: cast_nullable_to_non_nullable
              as ScanQrCodeResultData,
      callback: freezed == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as String?,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$_SignTransactionState implements _SignTransactionState {
  const _$_SignTransactionState(
      {this.pageState = PageState.initial,
      required this.transactionDetailsData,
      required this.qrCodeData,
      this.callback,
      this.command});

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final TransactionDetailsData transactionDetailsData;
  @override
  final ScanQrCodeResultData qrCodeData;
  @override
  final String? callback;
  @override
  final PageCommand? command;

  @override
  String toString() {
    return 'SignTransactionState(pageState: $pageState, transactionDetailsData: $transactionDetailsData, qrCodeData: $qrCodeData, callback: $callback, command: $command)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignTransactionState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.transactionDetailsData, transactionDetailsData) ||
                other.transactionDetailsData == transactionDetailsData) &&
            (identical(other.qrCodeData, qrCodeData) ||
                other.qrCodeData == qrCodeData) &&
            (identical(other.callback, callback) ||
                other.callback == callback) &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState,
      transactionDetailsData, qrCodeData, callback, command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignTransactionStateCopyWith<_$_SignTransactionState> get copyWith =>
      __$$_SignTransactionStateCopyWithImpl<_$_SignTransactionState>(
          this, _$identity);
}

abstract class _SignTransactionState implements SignTransactionState {
  const factory _SignTransactionState(
      {final PageState pageState,
      required final TransactionDetailsData transactionDetailsData,
      required final ScanQrCodeResultData qrCodeData,
      final String? callback,
      final PageCommand? command}) = _$_SignTransactionState;

  @override
  PageState get pageState;
  @override
  TransactionDetailsData get transactionDetailsData;
  @override
  ScanQrCodeResultData get qrCodeData;
  @override
  String? get callback;
  @override
  PageCommand? get command;
  @override
  @JsonKey(ignore: true)
  _$$_SignTransactionStateCopyWith<_$_SignTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
