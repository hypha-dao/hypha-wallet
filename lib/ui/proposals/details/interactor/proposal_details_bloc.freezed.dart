// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proposal_details_bloc.dart';

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
    required TResult Function() navigateToSuccessPage,
    required TResult Function(HyphaError hyphaError) navigateToFailurePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToSuccessPage,
    TResult? Function(HyphaError hyphaError)? navigateToFailurePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToSuccessPage,
    TResult Function(HyphaError hyphaError)? navigateToFailurePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToSuccessPage value)
        navigateToSuccessPage,
    required TResult Function(_NavigateToFailurePage value)
        navigateToFailurePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToSuccessPage value)? navigateToSuccessPage,
    TResult? Function(_NavigateToFailurePage value)? navigateToFailurePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToSuccessPage value)? navigateToSuccessPage,
    TResult Function(_NavigateToFailurePage value)? navigateToFailurePage,
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
abstract class _$$NavigateToSuccessPageImplCopyWith<$Res> {
  factory _$$NavigateToSuccessPageImplCopyWith(
          _$NavigateToSuccessPageImpl value,
          $Res Function(_$NavigateToSuccessPageImpl) then) =
      __$$NavigateToSuccessPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToSuccessPageImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToSuccessPageImpl>
    implements _$$NavigateToSuccessPageImplCopyWith<$Res> {
  __$$NavigateToSuccessPageImplCopyWithImpl(_$NavigateToSuccessPageImpl _value,
      $Res Function(_$NavigateToSuccessPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateToSuccessPageImpl implements _NavigateToSuccessPage {
  const _$NavigateToSuccessPageImpl();

  @override
  String toString() {
    return 'PageCommand.navigateToSuccessPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToSuccessPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToSuccessPage,
    required TResult Function(HyphaError hyphaError) navigateToFailurePage,
  }) {
    return navigateToSuccessPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToSuccessPage,
    TResult? Function(HyphaError hyphaError)? navigateToFailurePage,
  }) {
    return navigateToSuccessPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToSuccessPage,
    TResult Function(HyphaError hyphaError)? navigateToFailurePage,
    required TResult orElse(),
  }) {
    if (navigateToSuccessPage != null) {
      return navigateToSuccessPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToSuccessPage value)
        navigateToSuccessPage,
    required TResult Function(_NavigateToFailurePage value)
        navigateToFailurePage,
  }) {
    return navigateToSuccessPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToSuccessPage value)? navigateToSuccessPage,
    TResult? Function(_NavigateToFailurePage value)? navigateToFailurePage,
  }) {
    return navigateToSuccessPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToSuccessPage value)? navigateToSuccessPage,
    TResult Function(_NavigateToFailurePage value)? navigateToFailurePage,
    required TResult orElse(),
  }) {
    if (navigateToSuccessPage != null) {
      return navigateToSuccessPage(this);
    }
    return orElse();
  }
}

abstract class _NavigateToSuccessPage implements PageCommand {
  const factory _NavigateToSuccessPage() = _$NavigateToSuccessPageImpl;
}

/// @nodoc
abstract class _$$NavigateToFailurePageImplCopyWith<$Res> {
  factory _$$NavigateToFailurePageImplCopyWith(
          _$NavigateToFailurePageImpl value,
          $Res Function(_$NavigateToFailurePageImpl) then) =
      __$$NavigateToFailurePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HyphaError hyphaError});
}

/// @nodoc
class __$$NavigateToFailurePageImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToFailurePageImpl>
    implements _$$NavigateToFailurePageImplCopyWith<$Res> {
  __$$NavigateToFailurePageImplCopyWithImpl(_$NavigateToFailurePageImpl _value,
      $Res Function(_$NavigateToFailurePageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hyphaError = null,
  }) {
    return _then(_$NavigateToFailurePageImpl(
      null == hyphaError
          ? _value.hyphaError
          : hyphaError // ignore: cast_nullable_to_non_nullable
              as HyphaError,
    ));
  }
}

/// @nodoc

class _$NavigateToFailurePageImpl implements _NavigateToFailurePage {
  const _$NavigateToFailurePageImpl(this.hyphaError);

  @override
  final HyphaError hyphaError;

  @override
  String toString() {
    return 'PageCommand.navigateToFailurePage(hyphaError: $hyphaError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToFailurePageImpl &&
            (identical(other.hyphaError, hyphaError) ||
                other.hyphaError == hyphaError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hyphaError);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToFailurePageImplCopyWith<_$NavigateToFailurePageImpl>
      get copyWith => __$$NavigateToFailurePageImplCopyWithImpl<
          _$NavigateToFailurePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToSuccessPage,
    required TResult Function(HyphaError hyphaError) navigateToFailurePage,
  }) {
    return navigateToFailurePage(hyphaError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToSuccessPage,
    TResult? Function(HyphaError hyphaError)? navigateToFailurePage,
  }) {
    return navigateToFailurePage?.call(hyphaError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToSuccessPage,
    TResult Function(HyphaError hyphaError)? navigateToFailurePage,
    required TResult orElse(),
  }) {
    if (navigateToFailurePage != null) {
      return navigateToFailurePage(hyphaError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToSuccessPage value)
        navigateToSuccessPage,
    required TResult Function(_NavigateToFailurePage value)
        navigateToFailurePage,
  }) {
    return navigateToFailurePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToSuccessPage value)? navigateToSuccessPage,
    TResult? Function(_NavigateToFailurePage value)? navigateToFailurePage,
  }) {
    return navigateToFailurePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToSuccessPage value)? navigateToSuccessPage,
    TResult Function(_NavigateToFailurePage value)? navigateToFailurePage,
    required TResult orElse(),
  }) {
    if (navigateToFailurePage != null) {
      return navigateToFailurePage(this);
    }
    return orElse();
  }
}

abstract class _NavigateToFailurePage implements PageCommand {
  const factory _NavigateToFailurePage(final HyphaError hyphaError) =
      _$NavigateToFailurePageImpl;

  HyphaError get hyphaError;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToFailurePageImplCopyWith<_$NavigateToFailurePageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProposalDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VoteStatus voteStatus) castVote,
    required TResult Function() clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VoteStatus voteStatus)? castVote,
    TResult? Function()? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VoteStatus voteStatus)? castVote,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CastVote value) castVote,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CastVote value)? castVote,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CastVote value)? castVote,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalDetailsEventCopyWith<$Res> {
  factory $ProposalDetailsEventCopyWith(ProposalDetailsEvent value,
          $Res Function(ProposalDetailsEvent) then) =
      _$ProposalDetailsEventCopyWithImpl<$Res, ProposalDetailsEvent>;
}

/// @nodoc
class _$ProposalDetailsEventCopyWithImpl<$Res,
        $Val extends ProposalDetailsEvent>
    implements $ProposalDetailsEventCopyWith<$Res> {
  _$ProposalDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProposalDetailsEvent
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
    extends _$ProposalDetailsEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProposalDetailsEvent.initial()';
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
    required TResult Function(VoteStatus voteStatus) castVote,
    required TResult Function() clearPageCommand,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VoteStatus voteStatus)? castVote,
    TResult? Function()? clearPageCommand,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VoteStatus voteStatus)? castVote,
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
    required TResult Function(_CastVote value) castVote,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CastVote value)? castVote,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CastVote value)? castVote,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProposalDetailsEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CastVoteImplCopyWith<$Res> {
  factory _$$CastVoteImplCopyWith(
          _$CastVoteImpl value, $Res Function(_$CastVoteImpl) then) =
      __$$CastVoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoteStatus voteStatus});
}

/// @nodoc
class __$$CastVoteImplCopyWithImpl<$Res>
    extends _$ProposalDetailsEventCopyWithImpl<$Res, _$CastVoteImpl>
    implements _$$CastVoteImplCopyWith<$Res> {
  __$$CastVoteImplCopyWithImpl(
      _$CastVoteImpl _value, $Res Function(_$CastVoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voteStatus = null,
  }) {
    return _then(_$CastVoteImpl(
      null == voteStatus
          ? _value.voteStatus
          : voteStatus // ignore: cast_nullable_to_non_nullable
              as VoteStatus,
    ));
  }
}

/// @nodoc

class _$CastVoteImpl implements _CastVote {
  const _$CastVoteImpl(this.voteStatus);

  @override
  final VoteStatus voteStatus;

  @override
  String toString() {
    return 'ProposalDetailsEvent.castVote(voteStatus: $voteStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastVoteImpl &&
            (identical(other.voteStatus, voteStatus) ||
                other.voteStatus == voteStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voteStatus);

  /// Create a copy of ProposalDetailsEvent
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
    required TResult Function(VoteStatus voteStatus) castVote,
    required TResult Function() clearPageCommand,
  }) {
    return castVote(voteStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VoteStatus voteStatus)? castVote,
    TResult? Function()? clearPageCommand,
  }) {
    return castVote?.call(voteStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VoteStatus voteStatus)? castVote,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) {
    if (castVote != null) {
      return castVote(voteStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CastVote value) castVote,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return castVote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CastVote value)? castVote,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return castVote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CastVote value)? castVote,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (castVote != null) {
      return castVote(this);
    }
    return orElse();
  }
}

abstract class _CastVote implements ProposalDetailsEvent {
  const factory _CastVote(final VoteStatus voteStatus) = _$CastVoteImpl;

  VoteStatus get voteStatus;

  /// Create a copy of ProposalDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CastVoteImplCopyWith<_$CastVoteImpl> get copyWith =>
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
    extends _$ProposalDetailsEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'ProposalDetailsEvent.clearPageCommand()';
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
    required TResult Function(VoteStatus voteStatus) castVote,
    required TResult Function() clearPageCommand,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VoteStatus voteStatus)? castVote,
    TResult? Function()? clearPageCommand,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VoteStatus voteStatus)? castVote,
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
    required TResult Function(_CastVote value) castVote,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CastVote value)? castVote,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CastVote value)? castVote,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements ProposalDetailsEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
mixin _$ProposalDetailsState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageState get votingState => throw _privateConstructorUsedError;
  ProposalDetailsModel? get proposalDetailsModel =>
      throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  /// Create a copy of ProposalDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProposalDetailsStateCopyWith<ProposalDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalDetailsStateCopyWith<$Res> {
  factory $ProposalDetailsStateCopyWith(ProposalDetailsState value,
          $Res Function(ProposalDetailsState) then) =
      _$ProposalDetailsStateCopyWithImpl<$Res, ProposalDetailsState>;
  @useResult
  $Res call(
      {PageState pageState,
      PageState votingState,
      ProposalDetailsModel? proposalDetailsModel,
      PageCommand? command});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$ProposalDetailsStateCopyWithImpl<$Res,
        $Val extends ProposalDetailsState>
    implements $ProposalDetailsStateCopyWith<$Res> {
  _$ProposalDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProposalDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? votingState = null,
    Object? proposalDetailsModel = freezed,
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      votingState: null == votingState
          ? _value.votingState
          : votingState // ignore: cast_nullable_to_non_nullable
              as PageState,
      proposalDetailsModel: freezed == proposalDetailsModel
          ? _value.proposalDetailsModel
          : proposalDetailsModel // ignore: cast_nullable_to_non_nullable
              as ProposalDetailsModel?,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ) as $Val);
  }

  /// Create a copy of ProposalDetailsState
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
abstract class _$$ProposalDetailsStateImplCopyWith<$Res>
    implements $ProposalDetailsStateCopyWith<$Res> {
  factory _$$ProposalDetailsStateImplCopyWith(_$ProposalDetailsStateImpl value,
          $Res Function(_$ProposalDetailsStateImpl) then) =
      __$$ProposalDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      PageState votingState,
      ProposalDetailsModel? proposalDetailsModel,
      PageCommand? command});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$ProposalDetailsStateImplCopyWithImpl<$Res>
    extends _$ProposalDetailsStateCopyWithImpl<$Res, _$ProposalDetailsStateImpl>
    implements _$$ProposalDetailsStateImplCopyWith<$Res> {
  __$$ProposalDetailsStateImplCopyWithImpl(_$ProposalDetailsStateImpl _value,
      $Res Function(_$ProposalDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? votingState = null,
    Object? proposalDetailsModel = freezed,
    Object? command = freezed,
  }) {
    return _then(_$ProposalDetailsStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      votingState: null == votingState
          ? _value.votingState
          : votingState // ignore: cast_nullable_to_non_nullable
              as PageState,
      proposalDetailsModel: freezed == proposalDetailsModel
          ? _value.proposalDetailsModel
          : proposalDetailsModel // ignore: cast_nullable_to_non_nullable
              as ProposalDetailsModel?,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$ProposalDetailsStateImpl implements _ProposalDetailsState {
  const _$ProposalDetailsStateImpl(
      {this.pageState = PageState.initial,
      this.votingState = PageState.initial,
      this.proposalDetailsModel,
      this.command});

  @override
  @JsonKey()
  final PageState pageState;
  @override
  @JsonKey()
  final PageState votingState;
  @override
  final ProposalDetailsModel? proposalDetailsModel;
  @override
  final PageCommand? command;

  @override
  String toString() {
    return 'ProposalDetailsState(pageState: $pageState, votingState: $votingState, proposalDetailsModel: $proposalDetailsModel, command: $command)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProposalDetailsStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.votingState, votingState) ||
                other.votingState == votingState) &&
            (identical(other.proposalDetailsModel, proposalDetailsModel) ||
                other.proposalDetailsModel == proposalDetailsModel) &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pageState, votingState, proposalDetailsModel, command);

  /// Create a copy of ProposalDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProposalDetailsStateImplCopyWith<_$ProposalDetailsStateImpl>
      get copyWith =>
          __$$ProposalDetailsStateImplCopyWithImpl<_$ProposalDetailsStateImpl>(
              this, _$identity);
}

abstract class _ProposalDetailsState implements ProposalDetailsState {
  const factory _ProposalDetailsState(
      {final PageState pageState,
      final PageState votingState,
      final ProposalDetailsModel? proposalDetailsModel,
      final PageCommand? command}) = _$ProposalDetailsStateImpl;

  @override
  PageState get pageState;
  @override
  PageState get votingState;
  @override
  ProposalDetailsModel? get proposalDetailsModel;
  @override
  PageCommand? get command;

  /// Create a copy of ProposalDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProposalDetailsStateImplCopyWith<_$ProposalDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
