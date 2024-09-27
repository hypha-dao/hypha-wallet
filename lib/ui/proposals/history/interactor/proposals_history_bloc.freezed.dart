// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proposals_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProposalsHistoryEvent {
  bool get refresh => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProposalsHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProposalsHistoryEventCopyWith<ProposalsHistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalsHistoryEventCopyWith<$Res> {
  factory $ProposalsHistoryEventCopyWith(ProposalsHistoryEvent value,
          $Res Function(ProposalsHistoryEvent) then) =
      _$ProposalsHistoryEventCopyWithImpl<$Res, ProposalsHistoryEvent>;
  @useResult
  $Res call({bool refresh});
}

/// @nodoc
class _$ProposalsHistoryEventCopyWithImpl<$Res,
        $Val extends ProposalsHistoryEvent>
    implements $ProposalsHistoryEventCopyWith<$Res> {
  _$ProposalsHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProposalsHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProposalsHistoryEventCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool refresh});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProposalsHistoryEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalsHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
  }) {
    return _then(_$InitialImpl(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.refresh = false});

  @override
  @JsonKey()
  final bool refresh;

  @override
  String toString() {
    return 'ProposalsHistoryEvent.initial(refresh: $refresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refresh);

  /// Create a copy of ProposalsHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh) initial,
  }) {
    return initial(refresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh)? initial,
  }) {
    return initial?.call(refresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(refresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProposalsHistoryEvent {
  const factory _Initial({final bool refresh}) = _$InitialImpl;

  @override
  bool get refresh;

  /// Create a copy of ProposalsHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProposalsHistoryState {
  PageState get pageState => throw _privateConstructorUsedError;
  List<ProposalModel> get proposals => throw _privateConstructorUsedError;

  /// Create a copy of ProposalsHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProposalsHistoryStateCopyWith<ProposalsHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalsHistoryStateCopyWith<$Res> {
  factory $ProposalsHistoryStateCopyWith(ProposalsHistoryState value,
          $Res Function(ProposalsHistoryState) then) =
      _$ProposalsHistoryStateCopyWithImpl<$Res, ProposalsHistoryState>;
  @useResult
  $Res call({PageState pageState, List<ProposalModel> proposals});
}

/// @nodoc
class _$ProposalsHistoryStateCopyWithImpl<$Res,
        $Val extends ProposalsHistoryState>
    implements $ProposalsHistoryStateCopyWith<$Res> {
  _$ProposalsHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProposalsHistoryState
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
abstract class _$$ProposalsHistoryStateImplCopyWith<$Res>
    implements $ProposalsHistoryStateCopyWith<$Res> {
  factory _$$ProposalsHistoryStateImplCopyWith(
          _$ProposalsHistoryStateImpl value,
          $Res Function(_$ProposalsHistoryStateImpl) then) =
      __$$ProposalsHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState pageState, List<ProposalModel> proposals});
}

/// @nodoc
class __$$ProposalsHistoryStateImplCopyWithImpl<$Res>
    extends _$ProposalsHistoryStateCopyWithImpl<$Res,
        _$ProposalsHistoryStateImpl>
    implements _$$ProposalsHistoryStateImplCopyWith<$Res> {
  __$$ProposalsHistoryStateImplCopyWithImpl(_$ProposalsHistoryStateImpl _value,
      $Res Function(_$ProposalsHistoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalsHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? proposals = null,
  }) {
    return _then(_$ProposalsHistoryStateImpl(
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

class _$ProposalsHistoryStateImpl implements _ProposalsHistoryState {
  const _$ProposalsHistoryStateImpl(
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
    return 'ProposalsHistoryState(pageState: $pageState, proposals: $proposals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProposalsHistoryStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            const DeepCollectionEquality()
                .equals(other._proposals, _proposals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pageState, const DeepCollectionEquality().hash(_proposals));

  /// Create a copy of ProposalsHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProposalsHistoryStateImplCopyWith<_$ProposalsHistoryStateImpl>
      get copyWith => __$$ProposalsHistoryStateImplCopyWithImpl<
          _$ProposalsHistoryStateImpl>(this, _$identity);
}

abstract class _ProposalsHistoryState implements ProposalsHistoryState {
  const factory _ProposalsHistoryState(
      {final PageState pageState,
      final List<ProposalModel> proposals}) = _$ProposalsHistoryStateImpl;

  @override
  PageState get pageState;
  @override
  List<ProposalModel> get proposals;

  /// Create a copy of ProposalsHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProposalsHistoryStateImplCopyWith<_$ProposalsHistoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
