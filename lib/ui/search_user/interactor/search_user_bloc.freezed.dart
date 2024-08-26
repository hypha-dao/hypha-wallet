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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$_NavigateToCopyWith<$Res> {
  factory _$$_NavigateToCopyWith(
          _$_NavigateTo value, $Res Function(_$_NavigateTo) then) =
      __$$_NavigateToCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NavigateToCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_NavigateTo>
    implements _$$_NavigateToCopyWith<$Res> {
  __$$_NavigateToCopyWithImpl(
      _$_NavigateTo _value, $Res Function(_$_NavigateTo) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NavigateTo implements _NavigateTo {
  const _$_NavigateTo();

  @override
  String toString() {
    return 'PageCommand.navigateToSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NavigateTo);
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
  const factory _NavigateTo() = _$_NavigateTo;
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
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SearchUserEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SearchUserEvent.initial()';
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
    extends _$SearchUserEventCopyWithImpl<$Res, _$_OnRefresh>
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
    return 'SearchUserEvent.onRefresh()';
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
    extends _$SearchUserEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'SearchUserEvent.clearPageCommand()';
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
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
abstract class _$$_OnSearchQueryChangedCopyWith<$Res> {
  factory _$$_OnSearchQueryChangedCopyWith(_$_OnSearchQueryChanged value,
          $Res Function(_$_OnSearchQueryChanged) then) =
      __$$_OnSearchQueryChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_OnSearchQueryChangedCopyWithImpl<$Res>
    extends _$SearchUserEventCopyWithImpl<$Res, _$_OnSearchQueryChanged>
    implements _$$_OnSearchQueryChangedCopyWith<$Res> {
  __$$_OnSearchQueryChangedCopyWithImpl(_$_OnSearchQueryChanged _value,
      $Res Function(_$_OnSearchQueryChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_OnSearchQueryChanged(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnSearchQueryChanged implements _OnSearchQueryChanged {
  const _$_OnSearchQueryChanged(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchUserEvent.onSearchQueryChanged(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSearchQueryChanged &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSearchQueryChangedCopyWith<_$_OnSearchQueryChanged> get copyWith =>
      __$$_OnSearchQueryChangedCopyWithImpl<_$_OnSearchQueryChanged>(
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
      _$_OnSearchQueryChanged;

  String get query;
  @JsonKey(ignore: true)
  _$$_OnSearchQueryChangedCopyWith<_$_OnSearchQueryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnClearIconTappedCopyWith<$Res> {
  factory _$$_OnClearIconTappedCopyWith(_$_OnClearIconTapped value,
          $Res Function(_$_OnClearIconTapped) then) =
      __$$_OnClearIconTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnClearIconTappedCopyWithImpl<$Res>
    extends _$SearchUserEventCopyWithImpl<$Res, _$_OnClearIconTapped>
    implements _$$_OnClearIconTappedCopyWith<$Res> {
  __$$_OnClearIconTappedCopyWithImpl(
      _$_OnClearIconTapped _value, $Res Function(_$_OnClearIconTapped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnClearIconTapped implements _OnClearIconTapped {
  const _$_OnClearIconTapped();

  @override
  String toString() {
    return 'SearchUserEvent.onClearIconTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnClearIconTapped);
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
  const factory _OnClearIconTapped() = _$_OnClearIconTapped;
}

/// @nodoc
mixin _$SearchUserState {
  PageState get pageState => throw _privateConstructorUsedError;
  List<UserProfileData> get users => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  bool get showClearIcon => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_SearchUserStateCopyWith<$Res>
    implements $SearchUserStateCopyWith<$Res> {
  factory _$$_SearchUserStateCopyWith(
          _$_SearchUserState value, $Res Function(_$_SearchUserState) then) =
      __$$_SearchUserStateCopyWithImpl<$Res>;
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
class __$$_SearchUserStateCopyWithImpl<$Res>
    extends _$SearchUserStateCopyWithImpl<$Res, _$_SearchUserState>
    implements _$$_SearchUserStateCopyWith<$Res> {
  __$$_SearchUserStateCopyWithImpl(
      _$_SearchUserState _value, $Res Function(_$_SearchUserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? users = null,
    Object? searchQuery = null,
    Object? showClearIcon = null,
    Object? command = freezed,
  }) {
    return _then(_$_SearchUserState(
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

class _$_SearchUserState extends _SearchUserState {
  const _$_SearchUserState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchUserState &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchUserStateCopyWith<_$_SearchUserState> get copyWith =>
      __$$_SearchUserStateCopyWithImpl<_$_SearchUserState>(this, _$identity);
}

abstract class _SearchUserState extends SearchUserState {
  const factory _SearchUserState(
      {final PageState pageState,
      final List<UserProfileData> users,
      final String searchQuery,
      final bool showClearIcon,
      final PageCommand? command}) = _$_SearchUserState;
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
  @override
  @JsonKey(ignore: true)
  _$$_SearchUserStateCopyWith<_$_SearchUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
