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
mixin _$PageCommand {
  ProposalModel get proposal => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProposalModel proposal) navigateToProposalDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProposalModel proposal)? navigateToProposalDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProposalModel proposal)? navigateToProposalDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToProposalDetails value)
        navigateToProposalDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToProposalDetails value)?
        navigateToProposalDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToProposalDetails value)?
        navigateToProposalDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageCommandCopyWith<PageCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCommandCopyWith<$Res> {
  factory $PageCommandCopyWith(
          PageCommand value, $Res Function(PageCommand) then) =
      _$PageCommandCopyWithImpl<$Res, PageCommand>;
  @useResult
  $Res call({ProposalModel proposal});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proposal = null,
  }) {
    return _then(_value.copyWith(
      proposal: null == proposal
          ? _value.proposal
          : proposal // ignore: cast_nullable_to_non_nullable
              as ProposalModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigateToProposalDetailsImplCopyWith<$Res>
    implements $PageCommandCopyWith<$Res> {
  factory _$$NavigateToProposalDetailsImplCopyWith(
          _$NavigateToProposalDetailsImpl value,
          $Res Function(_$NavigateToProposalDetailsImpl) then) =
      __$$NavigateToProposalDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProposalModel proposal});
}

/// @nodoc
class __$$NavigateToProposalDetailsImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToProposalDetailsImpl>
    implements _$$NavigateToProposalDetailsImplCopyWith<$Res> {
  __$$NavigateToProposalDetailsImplCopyWithImpl(
      _$NavigateToProposalDetailsImpl _value,
      $Res Function(_$NavigateToProposalDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proposal = null,
  }) {
    return _then(_$NavigateToProposalDetailsImpl(
      null == proposal
          ? _value.proposal
          : proposal // ignore: cast_nullable_to_non_nullable
              as ProposalModel,
    ));
  }
}

/// @nodoc

class _$NavigateToProposalDetailsImpl implements _NavigateToProposalDetails {
  const _$NavigateToProposalDetailsImpl(this.proposal);

  @override
  final ProposalModel proposal;

  @override
  String toString() {
    return 'PageCommand.navigateToProposalDetails(proposal: $proposal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToProposalDetailsImpl &&
            (identical(other.proposal, proposal) ||
                other.proposal == proposal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, proposal);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToProposalDetailsImplCopyWith<_$NavigateToProposalDetailsImpl>
      get copyWith => __$$NavigateToProposalDetailsImplCopyWithImpl<
          _$NavigateToProposalDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProposalModel proposal) navigateToProposalDetails,
  }) {
    return navigateToProposalDetails(proposal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProposalModel proposal)? navigateToProposalDetails,
  }) {
    return navigateToProposalDetails?.call(proposal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProposalModel proposal)? navigateToProposalDetails,
    required TResult orElse(),
  }) {
    if (navigateToProposalDetails != null) {
      return navigateToProposalDetails(proposal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToProposalDetails value)
        navigateToProposalDetails,
  }) {
    return navigateToProposalDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToProposalDetails value)?
        navigateToProposalDetails,
  }) {
    return navigateToProposalDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToProposalDetails value)?
        navigateToProposalDetails,
    required TResult orElse(),
  }) {
    if (navigateToProposalDetails != null) {
      return navigateToProposalDetails(this);
    }
    return orElse();
  }
}

abstract class _NavigateToProposalDetails implements PageCommand {
  const factory _NavigateToProposalDetails(final ProposalModel proposal) =
      _$NavigateToProposalDetailsImpl;

  @override
  ProposalModel get proposal;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToProposalDetailsImplCopyWith<_$NavigateToProposalDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProposalsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool refresh) initial,
    required TResult Function() clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh)? initial,
    TResult? Function()? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? initial,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
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
  $Res call({bool refresh});
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
    return 'ProposalsEvent.initial(refresh: $refresh)';
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
    required TResult Function(bool refresh) initial,
    required TResult Function() clearPageCommand,
  }) {
    return initial(refresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh)? initial,
    TResult? Function()? clearPageCommand,
  }) {
    return initial?.call(refresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? initial,
    TResult Function()? clearPageCommand,
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
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProposalsEvent {
  const factory _Initial({final bool refresh}) = _$InitialImpl;

  bool get refresh;

  /// Create a copy of ProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
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
    extends _$ProposalsEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'ProposalsEvent.clearPageCommand()';
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
    required TResult Function(bool refresh) initial,
    required TResult Function() clearPageCommand,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool refresh)? initial,
    TResult? Function()? clearPageCommand,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool refresh)? initial,
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
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements ProposalsEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
mixin _$ProposalsState {
  PageState get pageState => throw _privateConstructorUsedError;
  List<ProposalModel> get proposals => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

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
  $Res call(
      {PageState pageState,
      List<ProposalModel> proposals,
      PageCommand? command});

  $PageCommandCopyWith<$Res>? get command;
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
    Object? command = freezed,
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
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ) as $Val);
  }

  /// Create a copy of ProposalsState
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
abstract class _$$ProposalsStateImplCopyWith<$Res>
    implements $ProposalsStateCopyWith<$Res> {
  factory _$$ProposalsStateImplCopyWith(_$ProposalsStateImpl value,
          $Res Function(_$ProposalsStateImpl) then) =
      __$$ProposalsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      List<ProposalModel> proposals,
      PageCommand? command});

  @override
  $PageCommandCopyWith<$Res>? get command;
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
    Object? command = freezed,
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
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$ProposalsStateImpl implements _ProposalsState {
  const _$ProposalsStateImpl(
      {this.pageState = PageState.initial,
      final List<ProposalModel> proposals = const [],
      this.command})
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
  final PageCommand? command;

  @override
  String toString() {
    return 'ProposalsState(pageState: $pageState, proposals: $proposals, command: $command)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProposalsStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            const DeepCollectionEquality()
                .equals(other._proposals, _proposals) &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState,
      const DeepCollectionEquality().hash(_proposals), command);

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
      final List<ProposalModel> proposals,
      final PageCommand? command}) = _$ProposalsStateImpl;

  @override
  PageState get pageState;
  @override
  List<ProposalModel> get proposals;
  @override
  PageCommand? get command;

  /// Create a copy of ProposalsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProposalsStateImplCopyWith<_$ProposalsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
