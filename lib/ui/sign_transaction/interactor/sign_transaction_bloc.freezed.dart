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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PageCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignSuccessTransactionType type)
        navigateToTransactionSuccess,
    required TResult Function(ErrorResult<String, HyphaError> errorResult)
        navigateToTransactionFailed,
    required TResult Function() navigateAway,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult? Function(ErrorResult<String, HyphaError> errorResult)?
        navigateToTransactionFailed,
    TResult? Function()? navigateAway,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult Function(ErrorResult<String, HyphaError> errorResult)?
        navigateToTransactionFailed,
    TResult Function()? navigateAway,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToTransactionSuccess value)
        navigateToTransactionSuccess,
    required TResult Function(_NavigateToTransactionFailed value)
        navigateToTransactionFailed,
    required TResult Function(_NavigateAway value) navigateAway,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult? Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
    TResult? Function(_NavigateAway value)? navigateAway,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
    TResult Function(_NavigateAway value)? navigateAway,
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
abstract class _$$NavigateToTransactionSuccessImplCopyWith<$Res> {
  factory _$$NavigateToTransactionSuccessImplCopyWith(
          _$NavigateToTransactionSuccessImpl value,
          $Res Function(_$NavigateToTransactionSuccessImpl) then) =
      __$$NavigateToTransactionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignSuccessTransactionType type});
}

/// @nodoc
class __$$NavigateToTransactionSuccessImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToTransactionSuccessImpl>
    implements _$$NavigateToTransactionSuccessImplCopyWith<$Res> {
  __$$NavigateToTransactionSuccessImplCopyWithImpl(
      _$NavigateToTransactionSuccessImpl _value,
      $Res Function(_$NavigateToTransactionSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$NavigateToTransactionSuccessImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SignSuccessTransactionType,
    ));
  }
}

/// @nodoc

class _$NavigateToTransactionSuccessImpl
    implements _NavigateToTransactionSuccess {
  const _$NavigateToTransactionSuccessImpl(this.type);

  @override
  final SignSuccessTransactionType type;

  @override
  String toString() {
    return 'PageCommand.navigateToTransactionSuccess(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToTransactionSuccessImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToTransactionSuccessImplCopyWith<
          _$NavigateToTransactionSuccessImpl>
      get copyWith => __$$NavigateToTransactionSuccessImplCopyWithImpl<
          _$NavigateToTransactionSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignSuccessTransactionType type)
        navigateToTransactionSuccess,
    required TResult Function(ErrorResult<String, HyphaError> errorResult)
        navigateToTransactionFailed,
    required TResult Function() navigateAway,
  }) {
    return navigateToTransactionSuccess(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult? Function(ErrorResult<String, HyphaError> errorResult)?
        navigateToTransactionFailed,
    TResult? Function()? navigateAway,
  }) {
    return navigateToTransactionSuccess?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult Function(ErrorResult<String, HyphaError> errorResult)?
        navigateToTransactionFailed,
    TResult Function()? navigateAway,
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
    required TResult Function(_NavigateAway value) navigateAway,
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
    TResult? Function(_NavigateAway value)? navigateAway,
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
    TResult Function(_NavigateAway value)? navigateAway,
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
          final SignSuccessTransactionType type) =
      _$NavigateToTransactionSuccessImpl;

  SignSuccessTransactionType get type;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToTransactionSuccessImplCopyWith<
          _$NavigateToTransactionSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateToTransactionFailedImplCopyWith<$Res> {
  factory _$$NavigateToTransactionFailedImplCopyWith(
          _$NavigateToTransactionFailedImpl value,
          $Res Function(_$NavigateToTransactionFailedImpl) then) =
      __$$NavigateToTransactionFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorResult<String, HyphaError> errorResult});
}

/// @nodoc
class __$$NavigateToTransactionFailedImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToTransactionFailedImpl>
    implements _$$NavigateToTransactionFailedImplCopyWith<$Res> {
  __$$NavigateToTransactionFailedImplCopyWithImpl(
      _$NavigateToTransactionFailedImpl _value,
      $Res Function(_$NavigateToTransactionFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorResult = null,
  }) {
    return _then(_$NavigateToTransactionFailedImpl(
      null == errorResult
          ? _value.errorResult
          : errorResult // ignore: cast_nullable_to_non_nullable
              as ErrorResult<String, HyphaError>,
    ));
  }
}

/// @nodoc

class _$NavigateToTransactionFailedImpl
    implements _NavigateToTransactionFailed {
  const _$NavigateToTransactionFailedImpl(this.errorResult);

  @override
  final ErrorResult<String, HyphaError> errorResult;

  @override
  String toString() {
    return 'PageCommand.navigateToTransactionFailed(errorResult: $errorResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToTransactionFailedImpl &&
            (identical(other.errorResult, errorResult) ||
                other.errorResult == errorResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorResult);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToTransactionFailedImplCopyWith<_$NavigateToTransactionFailedImpl>
      get copyWith => __$$NavigateToTransactionFailedImplCopyWithImpl<
          _$NavigateToTransactionFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignSuccessTransactionType type)
        navigateToTransactionSuccess,
    required TResult Function(ErrorResult<String, HyphaError> errorResult)
        navigateToTransactionFailed,
    required TResult Function() navigateAway,
  }) {
    return navigateToTransactionFailed(errorResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult? Function(ErrorResult<String, HyphaError> errorResult)?
        navigateToTransactionFailed,
    TResult? Function()? navigateAway,
  }) {
    return navigateToTransactionFailed?.call(errorResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult Function(ErrorResult<String, HyphaError> errorResult)?
        navigateToTransactionFailed,
    TResult Function()? navigateAway,
    required TResult orElse(),
  }) {
    if (navigateToTransactionFailed != null) {
      return navigateToTransactionFailed(errorResult);
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
    required TResult Function(_NavigateAway value) navigateAway,
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
    TResult? Function(_NavigateAway value)? navigateAway,
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
    TResult Function(_NavigateAway value)? navigateAway,
    required TResult orElse(),
  }) {
    if (navigateToTransactionFailed != null) {
      return navigateToTransactionFailed(this);
    }
    return orElse();
  }
}

abstract class _NavigateToTransactionFailed implements PageCommand {
  const factory _NavigateToTransactionFailed(
          final ErrorResult<String, HyphaError> errorResult) =
      _$NavigateToTransactionFailedImpl;

  ErrorResult<String, HyphaError> get errorResult;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToTransactionFailedImplCopyWith<_$NavigateToTransactionFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateAwayImplCopyWith<$Res> {
  factory _$$NavigateAwayImplCopyWith(
          _$NavigateAwayImpl value, $Res Function(_$NavigateAwayImpl) then) =
      __$$NavigateAwayImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateAwayImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateAwayImpl>
    implements _$$NavigateAwayImplCopyWith<$Res> {
  __$$NavigateAwayImplCopyWithImpl(
      _$NavigateAwayImpl _value, $Res Function(_$NavigateAwayImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateAwayImpl implements _NavigateAway {
  const _$NavigateAwayImpl();

  @override
  String toString() {
    return 'PageCommand.navigateAway()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateAwayImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignSuccessTransactionType type)
        navigateToTransactionSuccess,
    required TResult Function(ErrorResult<String, HyphaError> errorResult)
        navigateToTransactionFailed,
    required TResult Function() navigateAway,
  }) {
    return navigateAway();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult? Function(ErrorResult<String, HyphaError> errorResult)?
        navigateToTransactionFailed,
    TResult? Function()? navigateAway,
  }) {
    return navigateAway?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignSuccessTransactionType type)?
        navigateToTransactionSuccess,
    TResult Function(ErrorResult<String, HyphaError> errorResult)?
        navigateToTransactionFailed,
    TResult Function()? navigateAway,
    required TResult orElse(),
  }) {
    if (navigateAway != null) {
      return navigateAway();
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
    required TResult Function(_NavigateAway value) navigateAway,
  }) {
    return navigateAway(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult? Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
    TResult? Function(_NavigateAway value)? navigateAway,
  }) {
    return navigateAway?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToTransactionSuccess value)?
        navigateToTransactionSuccess,
    TResult Function(_NavigateToTransactionFailed value)?
        navigateToTransactionFailed,
    TResult Function(_NavigateAway value)? navigateAway,
    required TResult orElse(),
  }) {
    if (navigateAway != null) {
      return navigateAway(this);
    }
    return orElse();
  }
}

abstract class _NavigateAway implements PageCommand {
  const factory _NavigateAway() = _$NavigateAwayImpl;
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

  /// Create a copy of SignTransactionEvent
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
    extends _$SignTransactionEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignTransactionEvent.initial()';
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
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OnUserSlideCompletedImplCopyWith<$Res> {
  factory _$$OnUserSlideCompletedImplCopyWith(_$OnUserSlideCompletedImpl value,
          $Res Function(_$OnUserSlideCompletedImpl) then) =
      __$$OnUserSlideCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnUserSlideCompletedImplCopyWithImpl<$Res>
    extends _$SignTransactionEventCopyWithImpl<$Res, _$OnUserSlideCompletedImpl>
    implements _$$OnUserSlideCompletedImplCopyWith<$Res> {
  __$$OnUserSlideCompletedImplCopyWithImpl(_$OnUserSlideCompletedImpl _value,
      $Res Function(_$OnUserSlideCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnUserSlideCompletedImpl implements _OnUserSlideCompleted {
  const _$OnUserSlideCompletedImpl();

  @override
  String toString() {
    return 'SignTransactionEvent.onUserSlideCompleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUserSlideCompletedImpl);
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
  const factory _OnUserSlideCompleted() = _$OnUserSlideCompletedImpl;
}

/// @nodoc
abstract class _$$OnUserSlideCanceledImplCopyWith<$Res> {
  factory _$$OnUserSlideCanceledImplCopyWith(_$OnUserSlideCanceledImpl value,
          $Res Function(_$OnUserSlideCanceledImpl) then) =
      __$$OnUserSlideCanceledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnUserSlideCanceledImplCopyWithImpl<$Res>
    extends _$SignTransactionEventCopyWithImpl<$Res, _$OnUserSlideCanceledImpl>
    implements _$$OnUserSlideCanceledImplCopyWith<$Res> {
  __$$OnUserSlideCanceledImplCopyWithImpl(_$OnUserSlideCanceledImpl _value,
      $Res Function(_$OnUserSlideCanceledImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnUserSlideCanceledImpl implements _OnUserSlideCanceled {
  const _$OnUserSlideCanceledImpl();

  @override
  String toString() {
    return 'SignTransactionEvent.onUserSlideCanceled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUserSlideCanceledImpl);
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
  const factory _OnUserSlideCanceled() = _$OnUserSlideCanceledImpl;
}

/// @nodoc
abstract class _$$ClearPageCommandImplCopyWith<$Res> {
  factory _$$ClearPageCommandImplCopyWith(_$ClearPageCommandImpl value,
          $Res Function(_$ClearPageCommandImpl) then) =
      __$$ClearPageCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPageCommandImplCopyWithImpl<$Res>
    extends _$SignTransactionEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'SignTransactionEvent.clearPageCommand()';
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
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
mixin _$SignTransactionState {
  PageState get pageState => throw _privateConstructorUsedError;
  TransactionDetailsData get transactionDetailsData =>
      throw _privateConstructorUsedError;
  ScanQrCodeResultData get qrCodeData => throw _privateConstructorUsedError;
  String? get callback => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  /// Create a copy of SignTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of SignTransactionState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of SignTransactionState
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
abstract class _$$SignTransactionStateImplCopyWith<$Res>
    implements $SignTransactionStateCopyWith<$Res> {
  factory _$$SignTransactionStateImplCopyWith(_$SignTransactionStateImpl value,
          $Res Function(_$SignTransactionStateImpl) then) =
      __$$SignTransactionStateImplCopyWithImpl<$Res>;
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
class __$$SignTransactionStateImplCopyWithImpl<$Res>
    extends _$SignTransactionStateCopyWithImpl<$Res, _$SignTransactionStateImpl>
    implements _$$SignTransactionStateImplCopyWith<$Res> {
  __$$SignTransactionStateImplCopyWithImpl(_$SignTransactionStateImpl _value,
      $Res Function(_$SignTransactionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? transactionDetailsData = null,
    Object? qrCodeData = null,
    Object? callback = freezed,
    Object? command = freezed,
  }) {
    return _then(_$SignTransactionStateImpl(
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

class _$SignTransactionStateImpl implements _SignTransactionState {
  const _$SignTransactionStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignTransactionStateImpl &&
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

  /// Create a copy of SignTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignTransactionStateImplCopyWith<_$SignTransactionStateImpl>
      get copyWith =>
          __$$SignTransactionStateImplCopyWithImpl<_$SignTransactionStateImpl>(
              this, _$identity);
}

abstract class _SignTransactionState implements SignTransactionState {
  const factory _SignTransactionState(
      {final PageState pageState,
      required final TransactionDetailsData transactionDetailsData,
      required final ScanQrCodeResultData qrCodeData,
      final String? callback,
      final PageCommand? command}) = _$SignTransactionStateImpl;

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

  /// Create a copy of SignTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignTransactionStateImplCopyWith<_$SignTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
