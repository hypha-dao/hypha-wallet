// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proposal_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProposalDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VoteStatus vote) castVote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VoteStatus vote)? castVote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VoteStatus vote)? castVote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CastVote value) castVote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CastVote value)? castVote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CastVote value)? castVote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalDetailEventCopyWith<$Res> {
  factory $ProposalDetailEventCopyWith(
          ProposalDetailEvent value, $Res Function(ProposalDetailEvent) then) =
      _$ProposalDetailEventCopyWithImpl<$Res, ProposalDetailEvent>;
}

/// @nodoc
class _$ProposalDetailEventCopyWithImpl<$Res, $Val extends ProposalDetailEvent>
    implements $ProposalDetailEventCopyWith<$Res> {
  _$ProposalDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProposalDetailEvent
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
    extends _$ProposalDetailEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProposalDetailEvent.initial()';
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
    required TResult Function(VoteStatus vote) castVote,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VoteStatus vote)? castVote,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VoteStatus vote)? castVote,
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
    required TResult Function(_CastVote value) castVote,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CastVote value)? castVote,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CastVote value)? castVote,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProposalDetailEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CastVoteImplCopyWith<$Res> {
  factory _$$CastVoteImplCopyWith(
          _$CastVoteImpl value, $Res Function(_$CastVoteImpl) then) =
      __$$CastVoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoteStatus vote});
}

/// @nodoc
class __$$CastVoteImplCopyWithImpl<$Res>
    extends _$ProposalDetailEventCopyWithImpl<$Res, _$CastVoteImpl>
    implements _$$CastVoteImplCopyWith<$Res> {
  __$$CastVoteImplCopyWithImpl(
      _$CastVoteImpl _value, $Res Function(_$CastVoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vote = null,
  }) {
    return _then(_$CastVoteImpl(
      null == vote
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as VoteStatus,
    ));
  }
}

/// @nodoc

class _$CastVoteImpl implements _CastVote {
  const _$CastVoteImpl(this.vote);

  @override
  final VoteStatus vote;

  @override
  String toString() {
    return 'ProposalDetailEvent.castVote(vote: $vote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastVoteImpl &&
            (identical(other.vote, vote) || other.vote == vote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vote);

  /// Create a copy of ProposalDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CastVoteImplCopyWith<_$CastVoteImpl> get copyWith =>
      __$$CastVoteImplCopyWithImpl<_$CastVoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VoteStatus vote) castVote,
  }) {
    return castVote(vote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VoteStatus vote)? castVote,
  }) {
    return castVote?.call(vote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VoteStatus vote)? castVote,
    required TResult orElse(),
  }) {
    if (castVote != null) {
      return castVote(vote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CastVote value) castVote,
  }) {
    return castVote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CastVote value)? castVote,
  }) {
    return castVote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CastVote value)? castVote,
    required TResult orElse(),
  }) {
    if (castVote != null) {
      return castVote(this);
    }
    return orElse();
  }
}

abstract class _CastVote implements ProposalDetailEvent {
  const factory _CastVote(final VoteStatus vote) = _$CastVoteImpl;

  VoteStatus get vote;

  /// Create a copy of ProposalDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CastVoteImplCopyWith<_$CastVoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProposalDetailState {
  PageState get pageState => throw _privateConstructorUsedError;
  ProposalDetailsModel? get proposalDetailsModel =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProposalDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProposalDetailStateCopyWith<ProposalDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalDetailStateCopyWith<$Res> {
  factory $ProposalDetailStateCopyWith(
          ProposalDetailState value, $Res Function(ProposalDetailState) then) =
      _$ProposalDetailStateCopyWithImpl<$Res, ProposalDetailState>;
  @useResult
  $Res call({PageState pageState, ProposalDetailsModel? proposalDetailsModel});
}

/// @nodoc
class _$ProposalDetailStateCopyWithImpl<$Res, $Val extends ProposalDetailState>
    implements $ProposalDetailStateCopyWith<$Res> {
  _$ProposalDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProposalDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? proposalDetailsModel = freezed,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      proposalDetailsModel: freezed == proposalDetailsModel
          ? _value.proposalDetailsModel
          : proposalDetailsModel // ignore: cast_nullable_to_non_nullable
              as ProposalDetailsModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProposalDetailStateImplCopyWith<$Res>
    implements $ProposalDetailStateCopyWith<$Res> {
  factory _$$ProposalDetailStateImplCopyWith(_$ProposalDetailStateImpl value,
          $Res Function(_$ProposalDetailStateImpl) then) =
      __$$ProposalDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState pageState, ProposalDetailsModel? proposalDetailsModel});
}

/// @nodoc
class __$$ProposalDetailStateImplCopyWithImpl<$Res>
    extends _$ProposalDetailStateCopyWithImpl<$Res, _$ProposalDetailStateImpl>
    implements _$$ProposalDetailStateImplCopyWith<$Res> {
  __$$ProposalDetailStateImplCopyWithImpl(_$ProposalDetailStateImpl _value,
      $Res Function(_$ProposalDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? proposalDetailsModel = freezed,
  }) {
    return _then(_$ProposalDetailStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      proposalDetailsModel: freezed == proposalDetailsModel
          ? _value.proposalDetailsModel
          : proposalDetailsModel // ignore: cast_nullable_to_non_nullable
              as ProposalDetailsModel?,
    ));
  }
}

/// @nodoc

class _$ProposalDetailStateImpl implements _ProposalDetailState {
  const _$ProposalDetailStateImpl(
      {this.pageState = PageState.initial, this.proposalDetailsModel});

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final ProposalDetailsModel? proposalDetailsModel;

  @override
  String toString() {
    return 'ProposalDetailState(pageState: $pageState, proposalDetailsModel: $proposalDetailsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProposalDetailStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.proposalDetailsModel, proposalDetailsModel) ||
                other.proposalDetailsModel == proposalDetailsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, proposalDetailsModel);

  /// Create a copy of ProposalDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProposalDetailStateImplCopyWith<_$ProposalDetailStateImpl> get copyWith =>
      __$$ProposalDetailStateImplCopyWithImpl<_$ProposalDetailStateImpl>(
          this, _$identity);
}

abstract class _ProposalDetailState implements ProposalDetailState {
  const factory _ProposalDetailState(
          {final PageState pageState,
          final ProposalDetailsModel? proposalDetailsModel}) =
      _$ProposalDetailStateImpl;

  @override
  PageState get pageState;
  @override
  ProposalDetailsModel? get proposalDetailsModel;

  /// Create a copy of ProposalDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProposalDetailStateImplCopyWith<_$ProposalDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
