// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_proposals_bloc.dart';

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
    required TResult Function() navigateToProposals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToProposals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToProposals,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToProposals value) navigateToProposals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToProposals value)? navigateToProposals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToProposals value)? navigateToProposals,
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
abstract class _$$NavigateToProposalsImplCopyWith<$Res> {
  factory _$$NavigateToProposalsImplCopyWith(_$NavigateToProposalsImpl value,
          $Res Function(_$NavigateToProposalsImpl) then) =
      __$$NavigateToProposalsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToProposalsImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToProposalsImpl>
    implements _$$NavigateToProposalsImplCopyWith<$Res> {
  __$$NavigateToProposalsImplCopyWithImpl(_$NavigateToProposalsImpl _value,
      $Res Function(_$NavigateToProposalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateToProposalsImpl implements _NavigateToProposals {
  const _$NavigateToProposalsImpl();

  @override
  String toString() {
    return 'PageCommand.navigateToProposals()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToProposalsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToProposals,
  }) {
    return navigateToProposals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToProposals,
  }) {
    return navigateToProposals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToProposals,
    required TResult orElse(),
  }) {
    if (navigateToProposals != null) {
      return navigateToProposals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToProposals value) navigateToProposals,
  }) {
    return navigateToProposals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToProposals value)? navigateToProposals,
  }) {
    return navigateToProposals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToProposals value)? navigateToProposals,
    required TResult orElse(),
  }) {
    if (navigateToProposals != null) {
      return navigateToProposals(this);
    }
    return orElse();
  }
}

abstract class _NavigateToProposals implements PageCommand {
  const factory _NavigateToProposals() = _$NavigateToProposalsImpl;
}

/// @nodoc
mixin _$FilterProposalsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<DaoProposalCountEntity> daoProposalCounts,
            FilterStatus filterStatus)
        saveFilters,
    required TResult Function() clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<DaoProposalCountEntity> daoProposalCounts,
            FilterStatus filterStatus)?
        saveFilters,
    TResult? Function()? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<DaoProposalCountEntity> daoProposalCounts,
            FilterStatus filterStatus)?
        saveFilters,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SaveFilters value) saveFilters,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SaveFilters value)? saveFilters,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SaveFilters value)? saveFilters,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterProposalsEventCopyWith<$Res> {
  factory $FilterProposalsEventCopyWith(FilterProposalsEvent value,
          $Res Function(FilterProposalsEvent) then) =
      _$FilterProposalsEventCopyWithImpl<$Res, FilterProposalsEvent>;
}

/// @nodoc
class _$FilterProposalsEventCopyWithImpl<$Res,
        $Val extends FilterProposalsEvent>
    implements $FilterProposalsEventCopyWith<$Res> {
  _$FilterProposalsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterProposalsEvent
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
    extends _$FilterProposalsEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FilterProposalsEvent.initial()';
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
    required TResult Function(List<DaoProposalCountEntity> daoProposalCounts,
            FilterStatus filterStatus)
        saveFilters,
    required TResult Function() clearPageCommand,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<DaoProposalCountEntity> daoProposalCounts,
            FilterStatus filterStatus)?
        saveFilters,
    TResult? Function()? clearPageCommand,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<DaoProposalCountEntity> daoProposalCounts,
            FilterStatus filterStatus)?
        saveFilters,
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
    required TResult Function(_SaveFilters value) saveFilters,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SaveFilters value)? saveFilters,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SaveFilters value)? saveFilters,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FilterProposalsEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SaveFiltersImplCopyWith<$Res> {
  factory _$$SaveFiltersImplCopyWith(
          _$SaveFiltersImpl value, $Res Function(_$SaveFiltersImpl) then) =
      __$$SaveFiltersImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<DaoProposalCountEntity> daoProposalCounts,
      FilterStatus filterStatus});
}

/// @nodoc
class __$$SaveFiltersImplCopyWithImpl<$Res>
    extends _$FilterProposalsEventCopyWithImpl<$Res, _$SaveFiltersImpl>
    implements _$$SaveFiltersImplCopyWith<$Res> {
  __$$SaveFiltersImplCopyWithImpl(
      _$SaveFiltersImpl _value, $Res Function(_$SaveFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daoProposalCounts = null,
    Object? filterStatus = null,
  }) {
    return _then(_$SaveFiltersImpl(
      null == daoProposalCounts
          ? _value._daoProposalCounts
          : daoProposalCounts // ignore: cast_nullable_to_non_nullable
              as List<DaoProposalCountEntity>,
      null == filterStatus
          ? _value.filterStatus
          : filterStatus // ignore: cast_nullable_to_non_nullable
              as FilterStatus,
    ));
  }
}

/// @nodoc

class _$SaveFiltersImpl implements _SaveFilters {
  const _$SaveFiltersImpl(
      final List<DaoProposalCountEntity> daoProposalCounts, this.filterStatus)
      : _daoProposalCounts = daoProposalCounts;

  final List<DaoProposalCountEntity> _daoProposalCounts;
  @override
  List<DaoProposalCountEntity> get daoProposalCounts {
    if (_daoProposalCounts is EqualUnmodifiableListView)
      return _daoProposalCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daoProposalCounts);
  }

  @override
  final FilterStatus filterStatus;

  @override
  String toString() {
    return 'FilterProposalsEvent.saveFilters(daoProposalCounts: $daoProposalCounts, filterStatus: $filterStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFiltersImpl &&
            const DeepCollectionEquality()
                .equals(other._daoProposalCounts, _daoProposalCounts) &&
            (identical(other.filterStatus, filterStatus) ||
                other.filterStatus == filterStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_daoProposalCounts), filterStatus);

  /// Create a copy of FilterProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFiltersImplCopyWith<_$SaveFiltersImpl> get copyWith =>
      __$$SaveFiltersImplCopyWithImpl<_$SaveFiltersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<DaoProposalCountEntity> daoProposalCounts,
            FilterStatus filterStatus)
        saveFilters,
    required TResult Function() clearPageCommand,
  }) {
    return saveFilters(daoProposalCounts, filterStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<DaoProposalCountEntity> daoProposalCounts,
            FilterStatus filterStatus)?
        saveFilters,
    TResult? Function()? clearPageCommand,
  }) {
    return saveFilters?.call(daoProposalCounts, filterStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<DaoProposalCountEntity> daoProposalCounts,
            FilterStatus filterStatus)?
        saveFilters,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) {
    if (saveFilters != null) {
      return saveFilters(daoProposalCounts, filterStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SaveFilters value) saveFilters,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return saveFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SaveFilters value)? saveFilters,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return saveFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SaveFilters value)? saveFilters,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (saveFilters != null) {
      return saveFilters(this);
    }
    return orElse();
  }
}

abstract class _SaveFilters implements FilterProposalsEvent {
  const factory _SaveFilters(
      final List<DaoProposalCountEntity> daoProposalCounts,
      final FilterStatus filterStatus) = _$SaveFiltersImpl;

  List<DaoProposalCountEntity> get daoProposalCounts;
  FilterStatus get filterStatus;

  /// Create a copy of FilterProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveFiltersImplCopyWith<_$SaveFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPageCommandImplCopyWith<$Res> {
  factory _$$ClearPageCommandImplCopyWith(_$ClearPageCommandImpl value,
          $Res Function(_$ClearPageCommandImpl) then) =
      __$$ClearPageCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPageCommandImplCopyWithImpl<$Res>
    extends _$FilterProposalsEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'FilterProposalsEvent.clearPageCommand()';
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
    required TResult Function(List<DaoProposalCountEntity> daoProposalCounts,
            FilterStatus filterStatus)
        saveFilters,
    required TResult Function() clearPageCommand,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<DaoProposalCountEntity> daoProposalCounts,
            FilterStatus filterStatus)?
        saveFilters,
    TResult? Function()? clearPageCommand,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<DaoProposalCountEntity> daoProposalCounts,
            FilterStatus filterStatus)?
        saveFilters,
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
    required TResult Function(_SaveFilters value) saveFilters,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SaveFilters value)? saveFilters,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SaveFilters value)? saveFilters,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements FilterProposalsEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
mixin _$FilterProposalsState {
  PageState get pageState => throw _privateConstructorUsedError;
  List<DaoProposalCountEntity> get daoProposalCounts =>
      throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  /// Create a copy of FilterProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterProposalsStateCopyWith<FilterProposalsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterProposalsStateCopyWith<$Res> {
  factory $FilterProposalsStateCopyWith(FilterProposalsState value,
          $Res Function(FilterProposalsState) then) =
      _$FilterProposalsStateCopyWithImpl<$Res, FilterProposalsState>;
  @useResult
  $Res call(
      {PageState pageState,
      List<DaoProposalCountEntity> daoProposalCounts,
      PageCommand? command});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$FilterProposalsStateCopyWithImpl<$Res,
        $Val extends FilterProposalsState>
    implements $FilterProposalsStateCopyWith<$Res> {
  _$FilterProposalsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? daoProposalCounts = null,
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      daoProposalCounts: null == daoProposalCounts
          ? _value.daoProposalCounts
          : daoProposalCounts // ignore: cast_nullable_to_non_nullable
              as List<DaoProposalCountEntity>,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ) as $Val);
  }

  /// Create a copy of FilterProposalsState
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
abstract class _$$FilterProposalsStateImplCopyWith<$Res>
    implements $FilterProposalsStateCopyWith<$Res> {
  factory _$$FilterProposalsStateImplCopyWith(_$FilterProposalsStateImpl value,
          $Res Function(_$FilterProposalsStateImpl) then) =
      __$$FilterProposalsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      List<DaoProposalCountEntity> daoProposalCounts,
      PageCommand? command});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$FilterProposalsStateImplCopyWithImpl<$Res>
    extends _$FilterProposalsStateCopyWithImpl<$Res, _$FilterProposalsStateImpl>
    implements _$$FilterProposalsStateImplCopyWith<$Res> {
  __$$FilterProposalsStateImplCopyWithImpl(_$FilterProposalsStateImpl _value,
      $Res Function(_$FilterProposalsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? daoProposalCounts = null,
    Object? command = freezed,
  }) {
    return _then(_$FilterProposalsStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      daoProposalCounts: null == daoProposalCounts
          ? _value._daoProposalCounts
          : daoProposalCounts // ignore: cast_nullable_to_non_nullable
              as List<DaoProposalCountEntity>,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$FilterProposalsStateImpl implements _FilterProposalsState {
  const _$FilterProposalsStateImpl(
      {this.pageState = PageState.initial,
      final List<DaoProposalCountEntity> daoProposalCounts = const [],
      this.command})
      : _daoProposalCounts = daoProposalCounts;

  @override
  @JsonKey()
  final PageState pageState;
  final List<DaoProposalCountEntity> _daoProposalCounts;
  @override
  @JsonKey()
  List<DaoProposalCountEntity> get daoProposalCounts {
    if (_daoProposalCounts is EqualUnmodifiableListView)
      return _daoProposalCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daoProposalCounts);
  }

  @override
  final PageCommand? command;

  @override
  String toString() {
    return 'FilterProposalsState(pageState: $pageState, daoProposalCounts: $daoProposalCounts, command: $command)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterProposalsStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            const DeepCollectionEquality()
                .equals(other._daoProposalCounts, _daoProposalCounts) &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState,
      const DeepCollectionEquality().hash(_daoProposalCounts), command);

  /// Create a copy of FilterProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterProposalsStateImplCopyWith<_$FilterProposalsStateImpl>
      get copyWith =>
          __$$FilterProposalsStateImplCopyWithImpl<_$FilterProposalsStateImpl>(
              this, _$identity);
}

abstract class _FilterProposalsState implements FilterProposalsState {
  const factory _FilterProposalsState(
      {final PageState pageState,
      final List<DaoProposalCountEntity> daoProposalCounts,
      final PageCommand? command}) = _$FilterProposalsStateImpl;

  @override
  PageState get pageState;
  @override
  List<DaoProposalCountEntity> get daoProposalCounts;
  @override
  PageCommand? get command;

  /// Create a copy of FilterProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterProposalsStateImplCopyWith<_$FilterProposalsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
