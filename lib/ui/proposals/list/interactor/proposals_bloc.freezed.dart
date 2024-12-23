// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proposals_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProposalsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh, FilterStatus filterStatus) initial,
    required TResult Function(Function callBack) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh, FilterStatus filterStatus)? initial,
    TResult? Function(Function callBack)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh, FilterStatus filterStatus)? initial,
    TResult Function(Function callBack)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Load value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Load value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalsEventCopyWith<$Res> {
  factory $ProposalsEventCopyWith(
          ProposalsEvent value, $Res Function(ProposalsEvent) then) =
      _$ProposalsEventCopyWithImpl<$Res, ProposalsEvent>;
}

/// @nodoc
class _$ProposalsEventCopyWithImpl<$Res, $Val extends ProposalsEvent>
    implements $ProposalsEventCopyWith<$Res> {
  _$ProposalsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool refresh, FilterStatus filterStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProposalsEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? filterStatus = null,
  }) {
    return _then(_$InitialImpl(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
      filterStatus: null == filterStatus
          ? _value.filterStatus
          : filterStatus // ignore: cast_nullable_to_non_nullable
              as FilterStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.refresh = false, this.filterStatus = FilterStatus.active});

  @override
  @JsonKey()
  final bool refresh;
  @override
  @JsonKey()
  final FilterStatus filterStatus;

  @override
  String toString() {
    return 'ProposalsEvent.initial(refresh: $refresh, filterStatus: $filterStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.filterStatus, filterStatus) ||
                other.filterStatus == filterStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refresh, filterStatus);

  /// Create a copy of ProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh, FilterStatus filterStatus) initial,
    required TResult Function(Function callBack) load,
  }) {
    return initial(refresh, filterStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh, FilterStatus filterStatus)? initial,
    TResult? Function(Function callBack)? load,
  }) {
    return initial?.call(refresh, filterStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh, FilterStatus filterStatus)? initial,
    TResult Function(Function callBack)? load,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(refresh, filterStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Load value) load,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Load value)? load,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProposalsEvent {
  const factory _Initial(
      {final bool refresh, final FilterStatus filterStatus}) = _$InitialImpl;

  bool get refresh;
  FilterStatus get filterStatus;

  /// Create a copy of ProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Function callBack});
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$ProposalsEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callBack = null,
  }) {
    return _then(_$LoadImpl(
      null == callBack
          ? _value.callBack
          : callBack // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl(this.callBack);

  @override
  final Function callBack;

  @override
  String toString() {
    return 'ProposalsEvent.load(callBack: $callBack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadImpl &&
            (identical(other.callBack, callBack) ||
                other.callBack == callBack));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callBack);

  /// Create a copy of ProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      __$$LoadImplCopyWithImpl<_$LoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh, FilterStatus filterStatus) initial,
    required TResult Function(Function callBack) load,
  }) {
    return load(callBack);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh, FilterStatus filterStatus)? initial,
    TResult? Function(Function callBack)? load,
  }) {
    return load?.call(callBack);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh, FilterStatus filterStatus)? initial,
    TResult Function(Function callBack)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(callBack);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Load value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Load value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ProposalsEvent {
  const factory _Load(final Function callBack) = _$LoadImpl;

  Function get callBack;

  /// Create a copy of ProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProposalsState {
  PageState get pageState => throw _privateConstructorUsedError;
  List<ProposalModel> get proposals => throw _privateConstructorUsedError;

  /// Create a copy of ProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProposalsStateCopyWith<ProposalsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalsStateCopyWith<$Res> {
  factory $ProposalsStateCopyWith(
          ProposalsState value, $Res Function(ProposalsState) then) =
      _$ProposalsStateCopyWithImpl<$Res, ProposalsState>;
  @useResult
  $Res call({PageState pageState, List<ProposalModel> proposals});
}

/// @nodoc
class _$ProposalsStateCopyWithImpl<$Res, $Val extends ProposalsState>
    implements $ProposalsStateCopyWith<$Res> {
  _$ProposalsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? proposals = null,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      proposals: null == proposals
          ? _value.proposals
          : proposals // ignore: cast_nullable_to_non_nullable
              as List<ProposalModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProposalsStateImplCopyWith<$Res>
    implements $ProposalsStateCopyWith<$Res> {
  factory _$$ProposalsStateImplCopyWith(_$ProposalsStateImpl value,
          $Res Function(_$ProposalsStateImpl) then) =
      __$$ProposalsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState pageState, List<ProposalModel> proposals});
}

/// @nodoc
class __$$ProposalsStateImplCopyWithImpl<$Res>
    extends _$ProposalsStateCopyWithImpl<$Res, _$ProposalsStateImpl>
    implements _$$ProposalsStateImplCopyWith<$Res> {
  __$$ProposalsStateImplCopyWithImpl(
      _$ProposalsStateImpl _value, $Res Function(_$ProposalsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? proposals = null,
  }) {
    return _then(_$ProposalsStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      proposals: null == proposals
          ? _value._proposals
          : proposals // ignore: cast_nullable_to_non_nullable
              as List<ProposalModel>,
    ));
  }
}

/// @nodoc

class _$ProposalsStateImpl implements _ProposalsState {
  const _$ProposalsStateImpl(
      {this.pageState = PageState.initial,
      final List<ProposalModel> proposals = const []})
      : _proposals = proposals;

  @override
  @JsonKey()
  final PageState pageState;
  final List<ProposalModel> _proposals;
  @override
  @JsonKey()
  List<ProposalModel> get proposals {
    if (_proposals is EqualUnmodifiableListView) return _proposals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_proposals);
  }

  @override
  String toString() {
    return 'ProposalsState(pageState: $pageState, proposals: $proposals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProposalsStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            const DeepCollectionEquality()
                .equals(other._proposals, _proposals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pageState, const DeepCollectionEquality().hash(_proposals));

  /// Create a copy of ProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProposalsStateImplCopyWith<_$ProposalsStateImpl> get copyWith =>
      __$$ProposalsStateImplCopyWithImpl<_$ProposalsStateImpl>(
          this, _$identity);
}

abstract class _ProposalsState implements ProposalsState {
  const factory _ProposalsState(
      {final PageState pageState,
      final List<ProposalModel> proposals}) = _$ProposalsStateImpl;

  @override
  PageState get pageState;
  @override
  List<ProposalModel> get proposals;

  /// Create a copy of ProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProposalsStateImplCopyWith<_$ProposalsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
