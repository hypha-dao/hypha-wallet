// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_user_bloc.dart';

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
mixin _$SearchUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(String query) onSearchQueryChanged,
    required TResult Function() onClearIconTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String query)? onSearchQueryChanged,
    TResult? Function()? onClearIconTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String query)? onSearchQueryChanged,
    TResult Function()? onClearIconTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnSearchQueryChanged value) onSearchQueryChanged,
    required TResult Function(_OnClearIconTapped value) onClearIconTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSearchQueryChanged value)? onSearchQueryChanged,
    TResult? Function(_OnClearIconTapped value)? onClearIconTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSearchQueryChanged value)? onSearchQueryChanged,
    TResult Function(_OnClearIconTapped value)? onClearIconTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserEventCopyWith<$Res> {
  factory $SearchUserEventCopyWith(
          SearchUserEvent value, $Res Function(SearchUserEvent) then) =
      _$SearchUserEventCopyWithImpl<$Res, SearchUserEvent>;
}

/// @nodoc
class _$SearchUserEventCopyWithImpl<$Res, $Val extends SearchUserEvent>
    implements $SearchUserEventCopyWith<$Res> {
  _$SearchUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchUserEvent
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
    extends _$SearchUserEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchUserEvent.initial()';
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
    required TResult Function(String query) onSearchQueryChanged,
    required TResult Function() onClearIconTapped,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String query)? onSearchQueryChanged,
    TResult? Function()? onClearIconTapped,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String query)? onSearchQueryChanged,
    TResult Function()? onClearIconTapped,
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
    required TResult Function(_OnSearchQueryChanged value) onSearchQueryChanged,
    required TResult Function(_OnClearIconTapped value) onClearIconTapped,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSearchQueryChanged value)? onSearchQueryChanged,
    TResult? Function(_OnClearIconTapped value)? onClearIconTapped,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSearchQueryChanged value)? onSearchQueryChanged,
    TResult Function(_OnClearIconTapped value)? onClearIconTapped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchUserEvent {
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
    extends _$SearchUserEventCopyWithImpl<$Res, _$OnRefreshImpl>
    implements _$$OnRefreshImplCopyWith<$Res> {
  __$$OnRefreshImplCopyWithImpl(
      _$OnRefreshImpl _value, $Res Function(_$OnRefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnRefreshImpl implements _OnRefresh {
  const _$OnRefreshImpl();

  @override
  String toString() {
    return 'SearchUserEvent.onRefresh()';
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
    required TResult Function(String query) onSearchQueryChanged,
    required TResult Function() onClearIconTapped,
  }) {
    return onRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String query)? onSearchQueryChanged,
    TResult? Function()? onClearIconTapped,
  }) {
    return onRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String query)? onSearchQueryChanged,
    TResult Function()? onClearIconTapped,
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
    required TResult Function(_OnSearchQueryChanged value) onSearchQueryChanged,
    required TResult Function(_OnClearIconTapped value) onClearIconTapped,
  }) {
    return onRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSearchQueryChanged value)? onSearchQueryChanged,
    TResult? Function(_OnClearIconTapped value)? onClearIconTapped,
  }) {
    return onRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSearchQueryChanged value)? onSearchQueryChanged,
    TResult Function(_OnClearIconTapped value)? onClearIconTapped,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh(this);
    }
    return orElse();
  }
}

abstract class _OnRefresh implements SearchUserEvent {
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
    extends _$SearchUserEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'SearchUserEvent.clearPageCommand()';
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
    required TResult Function(String query) onSearchQueryChanged,
    required TResult Function() onClearIconTapped,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String query)? onSearchQueryChanged,
    TResult? Function()? onClearIconTapped,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String query)? onSearchQueryChanged,
    TResult Function()? onClearIconTapped,
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
    required TResult Function(_OnSearchQueryChanged value) onSearchQueryChanged,
    required TResult Function(_OnClearIconTapped value) onClearIconTapped,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSearchQueryChanged value)? onSearchQueryChanged,
    TResult? Function(_OnClearIconTapped value)? onClearIconTapped,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSearchQueryChanged value)? onSearchQueryChanged,
    TResult Function(_OnClearIconTapped value)? onClearIconTapped,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements SearchUserEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$OnSearchQueryChangedImplCopyWith<$Res> {
  factory _$$OnSearchQueryChangedImplCopyWith(_$OnSearchQueryChangedImpl value,
          $Res Function(_$OnSearchQueryChangedImpl) then) =
      __$$OnSearchQueryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$OnSearchQueryChangedImplCopyWithImpl<$Res>
    extends _$SearchUserEventCopyWithImpl<$Res, _$OnSearchQueryChangedImpl>
    implements _$$OnSearchQueryChangedImplCopyWith<$Res> {
  __$$OnSearchQueryChangedImplCopyWithImpl(_$OnSearchQueryChangedImpl _value,
      $Res Function(_$OnSearchQueryChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$OnSearchQueryChangedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSearchQueryChangedImpl implements _OnSearchQueryChanged {
  const _$OnSearchQueryChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchUserEvent.onSearchQueryChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSearchQueryChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSearchQueryChangedImplCopyWith<_$OnSearchQueryChangedImpl>
      get copyWith =>
          __$$OnSearchQueryChangedImplCopyWithImpl<_$OnSearchQueryChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(String query) onSearchQueryChanged,
    required TResult Function() onClearIconTapped,
  }) {
    return onSearchQueryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String query)? onSearchQueryChanged,
    TResult? Function()? onClearIconTapped,
  }) {
    return onSearchQueryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String query)? onSearchQueryChanged,
    TResult Function()? onClearIconTapped,
    required TResult orElse(),
  }) {
    if (onSearchQueryChanged != null) {
      return onSearchQueryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnSearchQueryChanged value) onSearchQueryChanged,
    required TResult Function(_OnClearIconTapped value) onClearIconTapped,
  }) {
    return onSearchQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSearchQueryChanged value)? onSearchQueryChanged,
    TResult? Function(_OnClearIconTapped value)? onClearIconTapped,
  }) {
    return onSearchQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSearchQueryChanged value)? onSearchQueryChanged,
    TResult Function(_OnClearIconTapped value)? onClearIconTapped,
    required TResult orElse(),
  }) {
    if (onSearchQueryChanged != null) {
      return onSearchQueryChanged(this);
    }
    return orElse();
  }
}

abstract class _OnSearchQueryChanged implements SearchUserEvent {
  const factory _OnSearchQueryChanged(final String query) =
      _$OnSearchQueryChangedImpl;

  String get query;

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSearchQueryChangedImplCopyWith<_$OnSearchQueryChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnClearIconTappedImplCopyWith<$Res> {
  factory _$$OnClearIconTappedImplCopyWith(_$OnClearIconTappedImpl value,
          $Res Function(_$OnClearIconTappedImpl) then) =
      __$$OnClearIconTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnClearIconTappedImplCopyWithImpl<$Res>
    extends _$SearchUserEventCopyWithImpl<$Res, _$OnClearIconTappedImpl>
    implements _$$OnClearIconTappedImplCopyWith<$Res> {
  __$$OnClearIconTappedImplCopyWithImpl(_$OnClearIconTappedImpl _value,
      $Res Function(_$OnClearIconTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnClearIconTappedImpl implements _OnClearIconTapped {
  const _$OnClearIconTappedImpl();

  @override
  String toString() {
    return 'SearchUserEvent.onClearIconTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnClearIconTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(String query) onSearchQueryChanged,
    required TResult Function() onClearIconTapped,
  }) {
    return onClearIconTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(String query)? onSearchQueryChanged,
    TResult? Function()? onClearIconTapped,
  }) {
    return onClearIconTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(String query)? onSearchQueryChanged,
    TResult Function()? onClearIconTapped,
    required TResult orElse(),
  }) {
    if (onClearIconTapped != null) {
      return onClearIconTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnSearchQueryChanged value) onSearchQueryChanged,
    required TResult Function(_OnClearIconTapped value) onClearIconTapped,
  }) {
    return onClearIconTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnSearchQueryChanged value)? onSearchQueryChanged,
    TResult? Function(_OnClearIconTapped value)? onClearIconTapped,
  }) {
    return onClearIconTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnSearchQueryChanged value)? onSearchQueryChanged,
    TResult Function(_OnClearIconTapped value)? onClearIconTapped,
    required TResult orElse(),
  }) {
    if (onClearIconTapped != null) {
      return onClearIconTapped(this);
    }
    return orElse();
  }
}

abstract class _OnClearIconTapped implements SearchUserEvent {
  const factory _OnClearIconTapped() = _$OnClearIconTappedImpl;
}

/// @nodoc
mixin _$SearchUserState {
  PageState get pageState => throw _privateConstructorUsedError;
  List<UserProfileData> get users => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  bool get showClearIcon => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchUserStateCopyWith<SearchUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserStateCopyWith<$Res> {
  factory $SearchUserStateCopyWith(
          SearchUserState value, $Res Function(SearchUserState) then) =
      _$SearchUserStateCopyWithImpl<$Res, SearchUserState>;
  @useResult
  $Res call(
      {PageState pageState,
      List<UserProfileData> users,
      String searchQuery,
      bool showClearIcon,
      PageCommand? command});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$SearchUserStateCopyWithImpl<$Res, $Val extends SearchUserState>
    implements $SearchUserStateCopyWith<$Res> {
  _$SearchUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? users = null,
    Object? searchQuery = null,
    Object? showClearIcon = null,
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserProfileData>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      showClearIcon: null == showClearIcon
          ? _value.showClearIcon
          : showClearIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ) as $Val);
  }

  /// Create a copy of SearchUserState
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
abstract class _$$SearchUserStateImplCopyWith<$Res>
    implements $SearchUserStateCopyWith<$Res> {
  factory _$$SearchUserStateImplCopyWith(_$SearchUserStateImpl value,
          $Res Function(_$SearchUserStateImpl) then) =
      __$$SearchUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      List<UserProfileData> users,
      String searchQuery,
      bool showClearIcon,
      PageCommand? command});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$SearchUserStateImplCopyWithImpl<$Res>
    extends _$SearchUserStateCopyWithImpl<$Res, _$SearchUserStateImpl>
    implements _$$SearchUserStateImplCopyWith<$Res> {
  __$$SearchUserStateImplCopyWithImpl(
      _$SearchUserStateImpl _value, $Res Function(_$SearchUserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? users = null,
    Object? searchQuery = null,
    Object? showClearIcon = null,
    Object? command = freezed,
  }) {
    return _then(_$SearchUserStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserProfileData>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      showClearIcon: null == showClearIcon
          ? _value.showClearIcon
          : showClearIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$SearchUserStateImpl extends _SearchUserState {
  const _$SearchUserStateImpl(
      {this.pageState = PageState.initial,
      final List<UserProfileData> users = const [],
      this.searchQuery = '',
      this.showClearIcon = false,
      this.command})
      : _users = users,
        super._();

  @override
  @JsonKey()
  final PageState pageState;
  final List<UserProfileData> _users;
  @override
  @JsonKey()
  List<UserProfileData> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final bool showClearIcon;
  @override
  final PageCommand? command;

  @override
  String toString() {
    return 'SearchUserState(pageState: $pageState, users: $users, searchQuery: $searchQuery, showClearIcon: $showClearIcon, command: $command)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUserStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.showClearIcon, showClearIcon) ||
                other.showClearIcon == showClearIcon) &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageState,
      const DeepCollectionEquality().hash(_users),
      searchQuery,
      showClearIcon,
      command);

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUserStateImplCopyWith<_$SearchUserStateImpl> get copyWith =>
      __$$SearchUserStateImplCopyWithImpl<_$SearchUserStateImpl>(
          this, _$identity);
}

abstract class _SearchUserState extends SearchUserState {
  const factory _SearchUserState(
      {final PageState pageState,
      final List<UserProfileData> users,
      final String searchQuery,
      final bool showClearIcon,
      final PageCommand? command}) = _$SearchUserStateImpl;
  const _SearchUserState._() : super._();

  @override
  PageState get pageState;
  @override
  List<UserProfileData> get users;
  @override
  String get searchQuery;
  @override
  bool get showClearIcon;
  @override
  PageCommand? get command;

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchUserStateImplCopyWith<_$SearchUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
