// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

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
    required TResult Function() navigateBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToSuccess,
    TResult? Function()? navigateBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToSuccess,
    TResult Function()? navigateBack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToSuccess value) navigateToSuccess,
    required TResult Function(_NavigateBack value) navigateBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToSuccess value)? navigateToSuccess,
    TResult? Function(_NavigateBack value)? navigateBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToSuccess value)? navigateToSuccess,
    TResult Function(_NavigateBack value)? navigateBack,
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
abstract class _$$NavigateToSuccessImplCopyWith<$Res> {
  factory _$$NavigateToSuccessImplCopyWith(_$NavigateToSuccessImpl value,
          $Res Function(_$NavigateToSuccessImpl) then) =
      __$$NavigateToSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToSuccessImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToSuccessImpl>
    implements _$$NavigateToSuccessImplCopyWith<$Res> {
  __$$NavigateToSuccessImplCopyWithImpl(_$NavigateToSuccessImpl _value,
      $Res Function(_$NavigateToSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateToSuccessImpl implements _NavigateToSuccess {
  const _$NavigateToSuccessImpl();

  @override
  String toString() {
    return 'PageCommand.navigateToSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateToSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToSuccess,
    required TResult Function() navigateBack,
  }) {
    return navigateToSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToSuccess,
    TResult? Function()? navigateBack,
  }) {
    return navigateToSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToSuccess,
    TResult Function()? navigateBack,
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
    required TResult Function(_NavigateToSuccess value) navigateToSuccess,
    required TResult Function(_NavigateBack value) navigateBack,
  }) {
    return navigateToSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToSuccess value)? navigateToSuccess,
    TResult? Function(_NavigateBack value)? navigateBack,
  }) {
    return navigateToSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToSuccess value)? navigateToSuccess,
    TResult Function(_NavigateBack value)? navigateBack,
    required TResult orElse(),
  }) {
    if (navigateToSuccess != null) {
      return navigateToSuccess(this);
    }
    return orElse();
  }
}

abstract class _NavigateToSuccess implements PageCommand {
  const factory _NavigateToSuccess() = _$NavigateToSuccessImpl;
}

/// @nodoc
abstract class _$$NavigateBackImplCopyWith<$Res> {
  factory _$$NavigateBackImplCopyWith(
          _$NavigateBackImpl value, $Res Function(_$NavigateBackImpl) then) =
      __$$NavigateBackImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateBackImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateBackImpl>
    implements _$$NavigateBackImplCopyWith<$Res> {
  __$$NavigateBackImplCopyWithImpl(
      _$NavigateBackImpl _value, $Res Function(_$NavigateBackImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateBackImpl implements _NavigateBack {
  const _$NavigateBackImpl();

  @override
  String toString() {
    return 'PageCommand.navigateBack()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateBackImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToSuccess,
    required TResult Function() navigateBack,
  }) {
    return navigateBack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToSuccess,
    TResult? Function()? navigateBack,
  }) {
    return navigateBack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToSuccess,
    TResult Function()? navigateBack,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToSuccess value) navigateToSuccess,
    required TResult Function(_NavigateBack value) navigateBack,
  }) {
    return navigateBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToSuccess value)? navigateToSuccess,
    TResult? Function(_NavigateBack value)? navigateBack,
  }) {
    return navigateBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToSuccess value)? navigateToSuccess,
    TResult Function(_NavigateBack value)? navigateBack,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack(this);
    }
    return orElse();
  }
}

abstract class _NavigateBack implements PageCommand {
  const factory _NavigateBack() = _$NavigateBackImpl;
}

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(String name) setName,
    required TResult Function(String bio) setBio,
    required TResult Function(XFile image) setAvatarImage,
    required TResult Function() onRemoveImageTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String name)? setName,
    TResult? Function(String bio)? setBio,
    TResult? Function(XFile image)? setAvatarImage,
    TResult? Function()? onRemoveImageTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String name)? setName,
    TResult Function(String bio)? setBio,
    TResult Function(XFile image)? setAvatarImage,
    TResult Function()? onRemoveImageTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_SetName value) setName,
    required TResult Function(_SetBio value) setBio,
    required TResult Function(_SetAvatarImage value) setAvatarImage,
    required TResult Function(_OnRemoveImageTapped value) onRemoveImageTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_SetName value)? setName,
    TResult? Function(_SetBio value)? setBio,
    TResult? Function(_SetAvatarImage value)? setAvatarImage,
    TResult? Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_SetName value)? setName,
    TResult Function(_SetBio value)? setBio,
    TResult Function(_SetAvatarImage value)? setAvatarImage,
    TResult Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
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
    extends _$ProfileEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProfileEvent.initial()';
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
    required TResult Function(String name) setName,
    required TResult Function(String bio) setBio,
    required TResult Function(XFile image) setAvatarImage,
    required TResult Function() onRemoveImageTapped,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String name)? setName,
    TResult? Function(String bio)? setBio,
    TResult? Function(XFile image)? setAvatarImage,
    TResult? Function()? onRemoveImageTapped,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String name)? setName,
    TResult Function(String bio)? setBio,
    TResult Function(XFile image)? setAvatarImage,
    TResult Function()? onRemoveImageTapped,
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
    required TResult Function(_SetName value) setName,
    required TResult Function(_SetBio value) setBio,
    required TResult Function(_SetAvatarImage value) setAvatarImage,
    required TResult Function(_OnRemoveImageTapped value) onRemoveImageTapped,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_SetName value)? setName,
    TResult? Function(_SetBio value)? setBio,
    TResult? Function(_SetAvatarImage value)? setAvatarImage,
    TResult? Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_SetName value)? setName,
    TResult Function(_SetBio value)? setBio,
    TResult Function(_SetAvatarImage value)? setAvatarImage,
    TResult Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileEvent {
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
    extends _$ProfileEventCopyWithImpl<$Res, _$OnRefreshImpl>
    implements _$$OnRefreshImplCopyWith<$Res> {
  __$$OnRefreshImplCopyWithImpl(
      _$OnRefreshImpl _value, $Res Function(_$OnRefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnRefreshImpl implements _OnRefresh {
  const _$OnRefreshImpl();

  @override
  String toString() {
    return 'ProfileEvent.onRefresh()';
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
    required TResult Function(String name) setName,
    required TResult Function(String bio) setBio,
    required TResult Function(XFile image) setAvatarImage,
    required TResult Function() onRemoveImageTapped,
  }) {
    return onRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String name)? setName,
    TResult? Function(String bio)? setBio,
    TResult? Function(XFile image)? setAvatarImage,
    TResult? Function()? onRemoveImageTapped,
  }) {
    return onRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String name)? setName,
    TResult Function(String bio)? setBio,
    TResult Function(XFile image)? setAvatarImage,
    TResult Function()? onRemoveImageTapped,
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
    required TResult Function(_SetName value) setName,
    required TResult Function(_SetBio value) setBio,
    required TResult Function(_SetAvatarImage value) setAvatarImage,
    required TResult Function(_OnRemoveImageTapped value) onRemoveImageTapped,
  }) {
    return onRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_SetName value)? setName,
    TResult? Function(_SetBio value)? setBio,
    TResult? Function(_SetAvatarImage value)? setAvatarImage,
    TResult? Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
  }) {
    return onRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_SetName value)? setName,
    TResult Function(_SetBio value)? setBio,
    TResult Function(_SetAvatarImage value)? setAvatarImage,
    TResult Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh(this);
    }
    return orElse();
  }
}

abstract class _OnRefresh implements ProfileEvent {
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
    extends _$ProfileEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'ProfileEvent.clearPageCommand()';
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
    required TResult Function(String name) setName,
    required TResult Function(String bio) setBio,
    required TResult Function(XFile image) setAvatarImage,
    required TResult Function() onRemoveImageTapped,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String name)? setName,
    TResult? Function(String bio)? setBio,
    TResult? Function(XFile image)? setAvatarImage,
    TResult? Function()? onRemoveImageTapped,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String name)? setName,
    TResult Function(String bio)? setBio,
    TResult Function(XFile image)? setAvatarImage,
    TResult Function()? onRemoveImageTapped,
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
    required TResult Function(_SetName value) setName,
    required TResult Function(_SetBio value) setBio,
    required TResult Function(_SetAvatarImage value) setAvatarImage,
    required TResult Function(_OnRemoveImageTapped value) onRemoveImageTapped,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_SetName value)? setName,
    TResult? Function(_SetBio value)? setBio,
    TResult? Function(_SetAvatarImage value)? setAvatarImage,
    TResult? Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_SetName value)? setName,
    TResult Function(_SetBio value)? setBio,
    TResult Function(_SetAvatarImage value)? setAvatarImage,
    TResult Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements ProfileEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$SetNameImplCopyWith<$Res> {
  factory _$$SetNameImplCopyWith(
          _$SetNameImpl value, $Res Function(_$SetNameImpl) then) =
      __$$SetNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SetNameImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SetNameImpl>
    implements _$$SetNameImplCopyWith<$Res> {
  __$$SetNameImplCopyWithImpl(
      _$SetNameImpl _value, $Res Function(_$SetNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SetNameImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetNameImpl implements _SetName {
  const _$SetNameImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileEvent.setName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNameImplCopyWith<_$SetNameImpl> get copyWith =>
      __$$SetNameImplCopyWithImpl<_$SetNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(String name) setName,
    required TResult Function(String bio) setBio,
    required TResult Function(XFile image) setAvatarImage,
    required TResult Function() onRemoveImageTapped,
  }) {
    return setName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String name)? setName,
    TResult? Function(String bio)? setBio,
    TResult? Function(XFile image)? setAvatarImage,
    TResult? Function()? onRemoveImageTapped,
  }) {
    return setName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String name)? setName,
    TResult Function(String bio)? setBio,
    TResult Function(XFile image)? setAvatarImage,
    TResult Function()? onRemoveImageTapped,
    required TResult orElse(),
  }) {
    if (setName != null) {
      return setName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_SetName value) setName,
    required TResult Function(_SetBio value) setBio,
    required TResult Function(_SetAvatarImage value) setAvatarImage,
    required TResult Function(_OnRemoveImageTapped value) onRemoveImageTapped,
  }) {
    return setName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_SetName value)? setName,
    TResult? Function(_SetBio value)? setBio,
    TResult? Function(_SetAvatarImage value)? setAvatarImage,
    TResult? Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
  }) {
    return setName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_SetName value)? setName,
    TResult Function(_SetBio value)? setBio,
    TResult Function(_SetAvatarImage value)? setAvatarImage,
    TResult Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
    required TResult orElse(),
  }) {
    if (setName != null) {
      return setName(this);
    }
    return orElse();
  }
}

abstract class _SetName implements ProfileEvent {
  const factory _SetName(final String name) = _$SetNameImpl;

  String get name;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetNameImplCopyWith<_$SetNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetBioImplCopyWith<$Res> {
  factory _$$SetBioImplCopyWith(
          _$SetBioImpl value, $Res Function(_$SetBioImpl) then) =
      __$$SetBioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bio});
}

/// @nodoc
class __$$SetBioImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SetBioImpl>
    implements _$$SetBioImplCopyWith<$Res> {
  __$$SetBioImplCopyWithImpl(
      _$SetBioImpl _value, $Res Function(_$SetBioImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bio = null,
  }) {
    return _then(_$SetBioImpl(
      null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetBioImpl implements _SetBio {
  const _$SetBioImpl(this.bio);

  @override
  final String bio;

  @override
  String toString() {
    return 'ProfileEvent.setBio(bio: $bio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetBioImpl &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bio);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetBioImplCopyWith<_$SetBioImpl> get copyWith =>
      __$$SetBioImplCopyWithImpl<_$SetBioImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(String name) setName,
    required TResult Function(String bio) setBio,
    required TResult Function(XFile image) setAvatarImage,
    required TResult Function() onRemoveImageTapped,
  }) {
    return setBio(bio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String name)? setName,
    TResult? Function(String bio)? setBio,
    TResult? Function(XFile image)? setAvatarImage,
    TResult? Function()? onRemoveImageTapped,
  }) {
    return setBio?.call(bio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String name)? setName,
    TResult Function(String bio)? setBio,
    TResult Function(XFile image)? setAvatarImage,
    TResult Function()? onRemoveImageTapped,
    required TResult orElse(),
  }) {
    if (setBio != null) {
      return setBio(bio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_SetName value) setName,
    required TResult Function(_SetBio value) setBio,
    required TResult Function(_SetAvatarImage value) setAvatarImage,
    required TResult Function(_OnRemoveImageTapped value) onRemoveImageTapped,
  }) {
    return setBio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_SetName value)? setName,
    TResult? Function(_SetBio value)? setBio,
    TResult? Function(_SetAvatarImage value)? setAvatarImage,
    TResult? Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
  }) {
    return setBio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_SetName value)? setName,
    TResult Function(_SetBio value)? setBio,
    TResult Function(_SetAvatarImage value)? setAvatarImage,
    TResult Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
    required TResult orElse(),
  }) {
    if (setBio != null) {
      return setBio(this);
    }
    return orElse();
  }
}

abstract class _SetBio implements ProfileEvent {
  const factory _SetBio(final String bio) = _$SetBioImpl;

  String get bio;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetBioImplCopyWith<_$SetBioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetAvatarImageImplCopyWith<$Res> {
  factory _$$SetAvatarImageImplCopyWith(_$SetAvatarImageImpl value,
          $Res Function(_$SetAvatarImageImpl) then) =
      __$$SetAvatarImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile image});
}

/// @nodoc
class __$$SetAvatarImageImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SetAvatarImageImpl>
    implements _$$SetAvatarImageImplCopyWith<$Res> {
  __$$SetAvatarImageImplCopyWithImpl(
      _$SetAvatarImageImpl _value, $Res Function(_$SetAvatarImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$SetAvatarImageImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$SetAvatarImageImpl implements _SetAvatarImage {
  const _$SetAvatarImageImpl(this.image);

  @override
  final XFile image;

  @override
  String toString() {
    return 'ProfileEvent.setAvatarImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAvatarImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAvatarImageImplCopyWith<_$SetAvatarImageImpl> get copyWith =>
      __$$SetAvatarImageImplCopyWithImpl<_$SetAvatarImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(String name) setName,
    required TResult Function(String bio) setBio,
    required TResult Function(XFile image) setAvatarImage,
    required TResult Function() onRemoveImageTapped,
  }) {
    return setAvatarImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String name)? setName,
    TResult? Function(String bio)? setBio,
    TResult? Function(XFile image)? setAvatarImage,
    TResult? Function()? onRemoveImageTapped,
  }) {
    return setAvatarImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String name)? setName,
    TResult Function(String bio)? setBio,
    TResult Function(XFile image)? setAvatarImage,
    TResult Function()? onRemoveImageTapped,
    required TResult orElse(),
  }) {
    if (setAvatarImage != null) {
      return setAvatarImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_SetName value) setName,
    required TResult Function(_SetBio value) setBio,
    required TResult Function(_SetAvatarImage value) setAvatarImage,
    required TResult Function(_OnRemoveImageTapped value) onRemoveImageTapped,
  }) {
    return setAvatarImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_SetName value)? setName,
    TResult? Function(_SetBio value)? setBio,
    TResult? Function(_SetAvatarImage value)? setAvatarImage,
    TResult? Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
  }) {
    return setAvatarImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_SetName value)? setName,
    TResult Function(_SetBio value)? setBio,
    TResult Function(_SetAvatarImage value)? setAvatarImage,
    TResult Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
    required TResult orElse(),
  }) {
    if (setAvatarImage != null) {
      return setAvatarImage(this);
    }
    return orElse();
  }
}

abstract class _SetAvatarImage implements ProfileEvent {
  const factory _SetAvatarImage(final XFile image) = _$SetAvatarImageImpl;

  XFile get image;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetAvatarImageImplCopyWith<_$SetAvatarImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRemoveImageTappedImplCopyWith<$Res> {
  factory _$$OnRemoveImageTappedImplCopyWith(_$OnRemoveImageTappedImpl value,
          $Res Function(_$OnRemoveImageTappedImpl) then) =
      __$$OnRemoveImageTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnRemoveImageTappedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$OnRemoveImageTappedImpl>
    implements _$$OnRemoveImageTappedImplCopyWith<$Res> {
  __$$OnRemoveImageTappedImplCopyWithImpl(_$OnRemoveImageTappedImpl _value,
      $Res Function(_$OnRemoveImageTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnRemoveImageTappedImpl implements _OnRemoveImageTapped {
  const _$OnRemoveImageTappedImpl();

  @override
  String toString() {
    return 'ProfileEvent.onRemoveImageTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRemoveImageTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(String name) setName,
    required TResult Function(String bio) setBio,
    required TResult Function(XFile image) setAvatarImage,
    required TResult Function() onRemoveImageTapped,
  }) {
    return onRemoveImageTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String name)? setName,
    TResult? Function(String bio)? setBio,
    TResult? Function(XFile image)? setAvatarImage,
    TResult? Function()? onRemoveImageTapped,
  }) {
    return onRemoveImageTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String name)? setName,
    TResult Function(String bio)? setBio,
    TResult Function(XFile image)? setAvatarImage,
    TResult Function()? onRemoveImageTapped,
    required TResult orElse(),
  }) {
    if (onRemoveImageTapped != null) {
      return onRemoveImageTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_SetName value) setName,
    required TResult Function(_SetBio value) setBio,
    required TResult Function(_SetAvatarImage value) setAvatarImage,
    required TResult Function(_OnRemoveImageTapped value) onRemoveImageTapped,
  }) {
    return onRemoveImageTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_SetName value)? setName,
    TResult? Function(_SetBio value)? setBio,
    TResult? Function(_SetAvatarImage value)? setAvatarImage,
    TResult? Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
  }) {
    return onRemoveImageTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_SetName value)? setName,
    TResult Function(_SetBio value)? setBio,
    TResult Function(_SetAvatarImage value)? setAvatarImage,
    TResult Function(_OnRemoveImageTapped value)? onRemoveImageTapped,
    required TResult orElse(),
  }) {
    if (onRemoveImageTapped != null) {
      return onRemoveImageTapped(this);
    }
    return orElse();
  }
}

abstract class _OnRemoveImageTapped implements ProfileEvent {
  const factory _OnRemoveImageTapped() = _$OnRemoveImageTappedImpl;
}

/// @nodoc
mixin _$ProfileState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;
  ProfileData? get profileData => throw _privateConstructorUsedError;
  bool get showUpdateBioLoading => throw _privateConstructorUsedError;
  bool get showUpdateImageLoading => throw _privateConstructorUsedError;
  bool get showUpdateNameLoading => throw _privateConstructorUsedError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      ProfileData? profileData,
      bool showUpdateBioLoading,
      bool showUpdateImageLoading,
      bool showUpdateNameLoading});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? profileData = freezed,
    Object? showUpdateBioLoading = null,
    Object? showUpdateImageLoading = null,
    Object? showUpdateNameLoading = null,
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
      profileData: freezed == profileData
          ? _value.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
      showUpdateBioLoading: null == showUpdateBioLoading
          ? _value.showUpdateBioLoading
          : showUpdateBioLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showUpdateImageLoading: null == showUpdateImageLoading
          ? _value.showUpdateImageLoading
          : showUpdateImageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showUpdateNameLoading: null == showUpdateNameLoading
          ? _value.showUpdateNameLoading
          : showUpdateNameLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ProfileState
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
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      ProfileData? profileData,
      bool showUpdateBioLoading,
      bool showUpdateImageLoading,
      bool showUpdateNameLoading});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? profileData = freezed,
    Object? showUpdateBioLoading = null,
    Object? showUpdateImageLoading = null,
    Object? showUpdateNameLoading = null,
  }) {
    return _then(_$ProfileStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      profileData: freezed == profileData
          ? _value.profileData
          : profileData // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
      showUpdateBioLoading: null == showUpdateBioLoading
          ? _value.showUpdateBioLoading
          : showUpdateBioLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showUpdateImageLoading: null == showUpdateImageLoading
          ? _value.showUpdateImageLoading
          : showUpdateImageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showUpdateNameLoading: null == showUpdateNameLoading
          ? _value.showUpdateNameLoading
          : showUpdateNameLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl extends _ProfileState {
  const _$ProfileStateImpl(
      {this.pageState = PageState.initial,
      this.command,
      this.profileData,
      this.showUpdateBioLoading = false,
      this.showUpdateImageLoading = false,
      this.showUpdateNameLoading = false})
      : super._();

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final PageCommand? command;
  @override
  final ProfileData? profileData;
  @override
  @JsonKey()
  final bool showUpdateBioLoading;
  @override
  @JsonKey()
  final bool showUpdateImageLoading;
  @override
  @JsonKey()
  final bool showUpdateNameLoading;

  @override
  String toString() {
    return 'ProfileState(pageState: $pageState, command: $command, profileData: $profileData, showUpdateBioLoading: $showUpdateBioLoading, showUpdateImageLoading: $showUpdateImageLoading, showUpdateNameLoading: $showUpdateNameLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.profileData, profileData) ||
                other.profileData == profileData) &&
            (identical(other.showUpdateBioLoading, showUpdateBioLoading) ||
                other.showUpdateBioLoading == showUpdateBioLoading) &&
            (identical(other.showUpdateImageLoading, showUpdateImageLoading) ||
                other.showUpdateImageLoading == showUpdateImageLoading) &&
            (identical(other.showUpdateNameLoading, showUpdateNameLoading) ||
                other.showUpdateNameLoading == showUpdateNameLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, command, profileData,
      showUpdateBioLoading, showUpdateImageLoading, showUpdateNameLoading);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState extends ProfileState {
  const factory _ProfileState(
      {final PageState pageState,
      final PageCommand? command,
      final ProfileData? profileData,
      final bool showUpdateBioLoading,
      final bool showUpdateImageLoading,
      final bool showUpdateNameLoading}) = _$ProfileStateImpl;
  const _ProfileState._() : super._();

  @override
  PageState get pageState;
  @override
  PageCommand? get command;
  @override
  ProfileData? get profileData;
  @override
  bool get showUpdateBioLoading;
  @override
  bool get showUpdateImageLoading;
  @override
  bool get showUpdateNameLoading;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
