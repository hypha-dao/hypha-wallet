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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$_NavigateToSuccessCopyWith<$Res> {
  factory _$$_NavigateToSuccessCopyWith(_$_NavigateToSuccess value,
          $Res Function(_$_NavigateToSuccess) then) =
      __$$_NavigateToSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NavigateToSuccessCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_NavigateToSuccess>
    implements _$$_NavigateToSuccessCopyWith<$Res> {
  __$$_NavigateToSuccessCopyWithImpl(
      _$_NavigateToSuccess _value, $Res Function(_$_NavigateToSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NavigateToSuccess implements _NavigateToSuccess {
  const _$_NavigateToSuccess();

  @override
  String toString() {
    return 'PageCommand.navigateToSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NavigateToSuccess);
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
  const factory _NavigateToSuccess() = _$_NavigateToSuccess;
}

/// @nodoc
abstract class _$$_NavigateBackCopyWith<$Res> {
  factory _$$_NavigateBackCopyWith(
          _$_NavigateBack value, $Res Function(_$_NavigateBack) then) =
      __$$_NavigateBackCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NavigateBackCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_NavigateBack>
    implements _$$_NavigateBackCopyWith<$Res> {
  __$$_NavigateBackCopyWithImpl(
      _$_NavigateBack _value, $Res Function(_$_NavigateBack) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NavigateBack implements _NavigateBack {
  const _$_NavigateBack();

  @override
  String toString() {
    return 'PageCommand.navigateBack()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NavigateBack);
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
  const factory _NavigateBack() = _$_NavigateBack;
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
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProfileEvent.initial()';
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
    extends _$ProfileEventCopyWithImpl<$Res, _$_OnRefresh>
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
    return 'ProfileEvent.onRefresh()';
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
    extends _$ProfileEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'ProfileEvent.clearPageCommand()';
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
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
abstract class _$$_SetNameCopyWith<$Res> {
  factory _$$_SetNameCopyWith(
          _$_SetName value, $Res Function(_$_SetName) then) =
      __$$_SetNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_SetNameCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_SetName>
    implements _$$_SetNameCopyWith<$Res> {
  __$$_SetNameCopyWithImpl(_$_SetName _value, $Res Function(_$_SetName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_SetName(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetName implements _SetName {
  const _$_SetName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileEvent.setName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetNameCopyWith<_$_SetName> get copyWith =>
      __$$_SetNameCopyWithImpl<_$_SetName>(this, _$identity);

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
  const factory _SetName(final String name) = _$_SetName;

  String get name;
  @JsonKey(ignore: true)
  _$$_SetNameCopyWith<_$_SetName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetBioCopyWith<$Res> {
  factory _$$_SetBioCopyWith(_$_SetBio value, $Res Function(_$_SetBio) then) =
      __$$_SetBioCopyWithImpl<$Res>;
  @useResult
  $Res call({String bio});
}

/// @nodoc
class __$$_SetBioCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_SetBio>
    implements _$$_SetBioCopyWith<$Res> {
  __$$_SetBioCopyWithImpl(_$_SetBio _value, $Res Function(_$_SetBio) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bio = null,
  }) {
    return _then(_$_SetBio(
      null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetBio implements _SetBio {
  const _$_SetBio(this.bio);

  @override
  final String bio;

  @override
  String toString() {
    return 'ProfileEvent.setBio(bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetBio &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetBioCopyWith<_$_SetBio> get copyWith =>
      __$$_SetBioCopyWithImpl<_$_SetBio>(this, _$identity);

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
  const factory _SetBio(final String bio) = _$_SetBio;

  String get bio;
  @JsonKey(ignore: true)
  _$$_SetBioCopyWith<_$_SetBio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetAvatarImageCopyWith<$Res> {
  factory _$$_SetAvatarImageCopyWith(
          _$_SetAvatarImage value, $Res Function(_$_SetAvatarImage) then) =
      __$$_SetAvatarImageCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile image});
}

/// @nodoc
class __$$_SetAvatarImageCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_SetAvatarImage>
    implements _$$_SetAvatarImageCopyWith<$Res> {
  __$$_SetAvatarImageCopyWithImpl(
      _$_SetAvatarImage _value, $Res Function(_$_SetAvatarImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_SetAvatarImage(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$_SetAvatarImage implements _SetAvatarImage {
  const _$_SetAvatarImage(this.image);

  @override
  final XFile image;

  @override
  String toString() {
    return 'ProfileEvent.setAvatarImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetAvatarImage &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetAvatarImageCopyWith<_$_SetAvatarImage> get copyWith =>
      __$$_SetAvatarImageCopyWithImpl<_$_SetAvatarImage>(this, _$identity);

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
  const factory _SetAvatarImage(final XFile image) = _$_SetAvatarImage;

  XFile get image;
  @JsonKey(ignore: true)
  _$$_SetAvatarImageCopyWith<_$_SetAvatarImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnRemoveImageTappedCopyWith<$Res> {
  factory _$$_OnRemoveImageTappedCopyWith(_$_OnRemoveImageTapped value,
          $Res Function(_$_OnRemoveImageTapped) then) =
      __$$_OnRemoveImageTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnRemoveImageTappedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_OnRemoveImageTapped>
    implements _$$_OnRemoveImageTappedCopyWith<$Res> {
  __$$_OnRemoveImageTappedCopyWithImpl(_$_OnRemoveImageTapped _value,
      $Res Function(_$_OnRemoveImageTapped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnRemoveImageTapped implements _OnRemoveImageTapped {
  const _$_OnRemoveImageTapped();

  @override
  String toString() {
    return 'ProfileEvent.onRemoveImageTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnRemoveImageTapped);
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
  const factory _OnRemoveImageTapped() = _$_OnRemoveImageTapped;
}

/// @nodoc
mixin _$ProfileState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;
  ProfileData? get profileData => throw _privateConstructorUsedError;
  bool get doesNotHaveProfile => throw _privateConstructorUsedError;
  bool get showUpdateBioLoading => throw _privateConstructorUsedError;
  bool get showUpdateImageLoading => throw _privateConstructorUsedError;
  bool get showUpdateNameLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
      bool doesNotHaveProfile,
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? profileData = freezed,
    Object? doesNotHaveProfile = null,
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
      doesNotHaveProfile: null == doesNotHaveProfile
          ? _value.doesNotHaveProfile
          : doesNotHaveProfile // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      ProfileData? profileData,
      bool doesNotHaveProfile,
      bool showUpdateBioLoading,
      bool showUpdateImageLoading,
      bool showUpdateNameLoading});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? profileData = freezed,
    Object? doesNotHaveProfile = null,
    Object? showUpdateBioLoading = null,
    Object? showUpdateImageLoading = null,
    Object? showUpdateNameLoading = null,
  }) {
    return _then(_$_ProfileState(
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
      doesNotHaveProfile: null == doesNotHaveProfile
          ? _value.doesNotHaveProfile
          : doesNotHaveProfile // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_ProfileState extends _ProfileState {
  const _$_ProfileState(
      {this.pageState = PageState.initial,
      this.command,
      this.profileData,
      this.doesNotHaveProfile = false,
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
  final bool doesNotHaveProfile;
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
    return 'ProfileState(pageState: $pageState, command: $command, profileData: $profileData, doesNotHaveProfile: $doesNotHaveProfile, showUpdateBioLoading: $showUpdateBioLoading, showUpdateImageLoading: $showUpdateImageLoading, showUpdateNameLoading: $showUpdateNameLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.profileData, profileData) ||
                other.profileData == profileData) &&
            (identical(other.doesNotHaveProfile, doesNotHaveProfile) ||
                other.doesNotHaveProfile == doesNotHaveProfile) &&
            (identical(other.showUpdateBioLoading, showUpdateBioLoading) ||
                other.showUpdateBioLoading == showUpdateBioLoading) &&
            (identical(other.showUpdateImageLoading, showUpdateImageLoading) ||
                other.showUpdateImageLoading == showUpdateImageLoading) &&
            (identical(other.showUpdateNameLoading, showUpdateNameLoading) ||
                other.showUpdateNameLoading == showUpdateNameLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageState,
      command,
      profileData,
      doesNotHaveProfile,
      showUpdateBioLoading,
      showUpdateImageLoading,
      showUpdateNameLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState extends ProfileState {
  const factory _ProfileState(
      {final PageState pageState,
      final PageCommand? command,
      final ProfileData? profileData,
      final bool doesNotHaveProfile,
      final bool showUpdateBioLoading,
      final bool showUpdateImageLoading,
      final bool showUpdateNameLoading}) = _$_ProfileState;
  const _ProfileState._() : super._();

  @override
  PageState get pageState;
  @override
  PageCommand? get command;
  @override
  ProfileData? get profileData;
  @override
  bool get doesNotHaveProfile;
  @override
  bool get showUpdateBioLoading;
  @override
  bool get showUpdateImageLoading;
  @override
  bool get showUpdateNameLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
