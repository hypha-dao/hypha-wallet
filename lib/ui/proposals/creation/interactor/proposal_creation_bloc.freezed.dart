// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proposal_creation_bloc.dart';

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
    required TResult Function() navigateBackToProposals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateBackToProposals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateBackToProposals,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateBackToProposals value)
        navigateBackToProposals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateBackToProposals value)? navigateBackToProposals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateBackToProposals value)? navigateBackToProposals,
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
abstract class _$$NavigateBackToProposalsImplCopyWith<$Res> {
  factory _$$NavigateBackToProposalsImplCopyWith(
          _$NavigateBackToProposalsImpl value,
          $Res Function(_$NavigateBackToProposalsImpl) then) =
      __$$NavigateBackToProposalsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateBackToProposalsImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateBackToProposalsImpl>
    implements _$$NavigateBackToProposalsImplCopyWith<$Res> {
  __$$NavigateBackToProposalsImplCopyWithImpl(
      _$NavigateBackToProposalsImpl _value,
      $Res Function(_$NavigateBackToProposalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateBackToProposalsImpl implements _NavigateBackToProposals {
  const _$NavigateBackToProposalsImpl();

  @override
  String toString() {
    return 'PageCommand.navigateBackToProposals()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateBackToProposalsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateBackToProposals,
  }) {
    return navigateBackToProposals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateBackToProposals,
  }) {
    return navigateBackToProposals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateBackToProposals,
    required TResult orElse(),
  }) {
    if (navigateBackToProposals != null) {
      return navigateBackToProposals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateBackToProposals value)
        navigateBackToProposals,
  }) {
    return navigateBackToProposals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateBackToProposals value)? navigateBackToProposals,
  }) {
    return navigateBackToProposals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateBackToProposals value)? navigateBackToProposals,
    required TResult orElse(),
  }) {
    if (navigateBackToProposals != null) {
      return navigateBackToProposals(this);
    }
    return orElse();
  }
}

abstract class _NavigateBackToProposals implements PageCommand {
  const factory _NavigateBackToProposals() = _$NavigateBackToProposalsImpl;
}

/// @nodoc
mixin _$ProposalCreationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int nextViewIndex) updateCurrentView,
    required TResult Function(Map<String, dynamic> updates) updateProposal,
    required TResult Function() clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int nextViewIndex)? updateCurrentView,
    TResult? Function(Map<String, dynamic> updates)? updateProposal,
    TResult? Function()? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int nextViewIndex)? updateCurrentView,
    TResult Function(Map<String, dynamic> updates)? updateProposal,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCurrentView value) updateCurrentView,
    required TResult Function(_UpdateProposal value) updateProposal,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCurrentView value)? updateCurrentView,
    TResult? Function(_UpdateProposal value)? updateProposal,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCurrentView value)? updateCurrentView,
    TResult Function(_UpdateProposal value)? updateProposal,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalCreationEventCopyWith<$Res> {
  factory $ProposalCreationEventCopyWith(ProposalCreationEvent value,
          $Res Function(ProposalCreationEvent) then) =
      _$ProposalCreationEventCopyWithImpl<$Res, ProposalCreationEvent>;
}

/// @nodoc
class _$ProposalCreationEventCopyWithImpl<$Res,
        $Val extends ProposalCreationEvent>
    implements $ProposalCreationEventCopyWith<$Res> {
  _$ProposalCreationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProposalCreationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateCurrentViewImplCopyWith<$Res> {
  factory _$$UpdateCurrentViewImplCopyWith(_$UpdateCurrentViewImpl value,
          $Res Function(_$UpdateCurrentViewImpl) then) =
      __$$UpdateCurrentViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int nextViewIndex});
}

/// @nodoc
class __$$UpdateCurrentViewImplCopyWithImpl<$Res>
    extends _$ProposalCreationEventCopyWithImpl<$Res, _$UpdateCurrentViewImpl>
    implements _$$UpdateCurrentViewImplCopyWith<$Res> {
  __$$UpdateCurrentViewImplCopyWithImpl(_$UpdateCurrentViewImpl _value,
      $Res Function(_$UpdateCurrentViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextViewIndex = null,
  }) {
    return _then(_$UpdateCurrentViewImpl(
      null == nextViewIndex
          ? _value.nextViewIndex
          : nextViewIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCurrentViewImpl implements _UpdateCurrentView {
  const _$UpdateCurrentViewImpl(this.nextViewIndex);

  @override
  final int nextViewIndex;

  @override
  String toString() {
    return 'ProposalCreationEvent.updateCurrentView(nextViewIndex: $nextViewIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentViewImpl &&
            (identical(other.nextViewIndex, nextViewIndex) ||
                other.nextViewIndex == nextViewIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nextViewIndex);

  /// Create a copy of ProposalCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentViewImplCopyWith<_$UpdateCurrentViewImpl> get copyWith =>
      __$$UpdateCurrentViewImplCopyWithImpl<_$UpdateCurrentViewImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int nextViewIndex) updateCurrentView,
    required TResult Function(Map<String, dynamic> updates) updateProposal,
    required TResult Function() clearPageCommand,
  }) {
    return updateCurrentView(nextViewIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int nextViewIndex)? updateCurrentView,
    TResult? Function(Map<String, dynamic> updates)? updateProposal,
    TResult? Function()? clearPageCommand,
  }) {
    return updateCurrentView?.call(nextViewIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int nextViewIndex)? updateCurrentView,
    TResult Function(Map<String, dynamic> updates)? updateProposal,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) {
    if (updateCurrentView != null) {
      return updateCurrentView(nextViewIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCurrentView value) updateCurrentView,
    required TResult Function(_UpdateProposal value) updateProposal,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return updateCurrentView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCurrentView value)? updateCurrentView,
    TResult? Function(_UpdateProposal value)? updateProposal,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return updateCurrentView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCurrentView value)? updateCurrentView,
    TResult Function(_UpdateProposal value)? updateProposal,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (updateCurrentView != null) {
      return updateCurrentView(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentView implements ProposalCreationEvent {
  const factory _UpdateCurrentView(final int nextViewIndex) =
      _$UpdateCurrentViewImpl;

  int get nextViewIndex;

  /// Create a copy of ProposalCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCurrentViewImplCopyWith<_$UpdateCurrentViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProposalImplCopyWith<$Res> {
  factory _$$UpdateProposalImplCopyWith(_$UpdateProposalImpl value,
          $Res Function(_$UpdateProposalImpl) then) =
      __$$UpdateProposalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> updates});
}

/// @nodoc
class __$$UpdateProposalImplCopyWithImpl<$Res>
    extends _$ProposalCreationEventCopyWithImpl<$Res, _$UpdateProposalImpl>
    implements _$$UpdateProposalImplCopyWith<$Res> {
  __$$UpdateProposalImplCopyWithImpl(
      _$UpdateProposalImpl _value, $Res Function(_$UpdateProposalImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updates = null,
  }) {
    return _then(_$UpdateProposalImpl(
      null == updates
          ? _value._updates
          : updates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UpdateProposalImpl implements _UpdateProposal {
  const _$UpdateProposalImpl(final Map<String, dynamic> updates)
      : _updates = updates;

  final Map<String, dynamic> _updates;
  @override
  Map<String, dynamic> get updates {
    if (_updates is EqualUnmodifiableMapView) return _updates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_updates);
  }

  @override
  String toString() {
    return 'ProposalCreationEvent.updateProposal(updates: $updates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProposalImpl &&
            const DeepCollectionEquality().equals(other._updates, _updates));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_updates));

  /// Create a copy of ProposalCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProposalImplCopyWith<_$UpdateProposalImpl> get copyWith =>
      __$$UpdateProposalImplCopyWithImpl<_$UpdateProposalImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int nextViewIndex) updateCurrentView,
    required TResult Function(Map<String, dynamic> updates) updateProposal,
    required TResult Function() clearPageCommand,
  }) {
    return updateProposal(updates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int nextViewIndex)? updateCurrentView,
    TResult? Function(Map<String, dynamic> updates)? updateProposal,
    TResult? Function()? clearPageCommand,
  }) {
    return updateProposal?.call(updates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int nextViewIndex)? updateCurrentView,
    TResult Function(Map<String, dynamic> updates)? updateProposal,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) {
    if (updateProposal != null) {
      return updateProposal(updates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCurrentView value) updateCurrentView,
    required TResult Function(_UpdateProposal value) updateProposal,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return updateProposal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCurrentView value)? updateCurrentView,
    TResult? Function(_UpdateProposal value)? updateProposal,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return updateProposal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCurrentView value)? updateCurrentView,
    TResult Function(_UpdateProposal value)? updateProposal,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (updateProposal != null) {
      return updateProposal(this);
    }
    return orElse();
  }
}

abstract class _UpdateProposal implements ProposalCreationEvent {
  const factory _UpdateProposal(final Map<String, dynamic> updates) =
      _$UpdateProposalImpl;

  Map<String, dynamic> get updates;

  /// Create a copy of ProposalCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProposalImplCopyWith<_$UpdateProposalImpl> get copyWith =>
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
    extends _$ProposalCreationEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalCreationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'ProposalCreationEvent.clearPageCommand()';
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
    required TResult Function(int nextViewIndex) updateCurrentView,
    required TResult Function(Map<String, dynamic> updates) updateProposal,
    required TResult Function() clearPageCommand,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int nextViewIndex)? updateCurrentView,
    TResult? Function(Map<String, dynamic> updates)? updateProposal,
    TResult? Function()? clearPageCommand,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int nextViewIndex)? updateCurrentView,
    TResult Function(Map<String, dynamic> updates)? updateProposal,
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
    required TResult Function(_UpdateCurrentView value) updateCurrentView,
    required TResult Function(_UpdateProposal value) updateProposal,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCurrentView value)? updateCurrentView,
    TResult? Function(_UpdateProposal value)? updateProposal,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCurrentView value)? updateCurrentView,
    TResult Function(_UpdateProposal value)? updateProposal,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements ProposalCreationEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
mixin _$ProposalCreationState {
  PageState get pageState => throw _privateConstructorUsedError;
  ProposalCreationModel? get proposal => throw _privateConstructorUsedError;
  int get currentViewIndex => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  /// Create a copy of ProposalCreationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProposalCreationStateCopyWith<ProposalCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalCreationStateCopyWith<$Res> {
  factory $ProposalCreationStateCopyWith(ProposalCreationState value,
          $Res Function(ProposalCreationState) then) =
      _$ProposalCreationStateCopyWithImpl<$Res, ProposalCreationState>;
  @useResult
  $Res call(
      {PageState pageState,
      ProposalCreationModel? proposal,
      int currentViewIndex,
      PageCommand? command});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$ProposalCreationStateCopyWithImpl<$Res,
        $Val extends ProposalCreationState>
    implements $ProposalCreationStateCopyWith<$Res> {
  _$ProposalCreationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProposalCreationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? proposal = freezed,
    Object? currentViewIndex = null,
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      proposal: freezed == proposal
          ? _value.proposal
          : proposal // ignore: cast_nullable_to_non_nullable
              as ProposalCreationModel?,
      currentViewIndex: null == currentViewIndex
          ? _value.currentViewIndex
          : currentViewIndex // ignore: cast_nullable_to_non_nullable
              as int,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ) as $Val);
  }

  /// Create a copy of ProposalCreationState
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
abstract class _$$ProposalCreationStateImplCopyWith<$Res>
    implements $ProposalCreationStateCopyWith<$Res> {
  factory _$$ProposalCreationStateImplCopyWith(
          _$ProposalCreationStateImpl value,
          $Res Function(_$ProposalCreationStateImpl) then) =
      __$$ProposalCreationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      ProposalCreationModel? proposal,
      int currentViewIndex,
      PageCommand? command});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$ProposalCreationStateImplCopyWithImpl<$Res>
    extends _$ProposalCreationStateCopyWithImpl<$Res,
        _$ProposalCreationStateImpl>
    implements _$$ProposalCreationStateImplCopyWith<$Res> {
  __$$ProposalCreationStateImplCopyWithImpl(_$ProposalCreationStateImpl _value,
      $Res Function(_$ProposalCreationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProposalCreationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? proposal = freezed,
    Object? currentViewIndex = null,
    Object? command = freezed,
  }) {
    return _then(_$ProposalCreationStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      proposal: freezed == proposal
          ? _value.proposal
          : proposal // ignore: cast_nullable_to_non_nullable
              as ProposalCreationModel?,
      currentViewIndex: null == currentViewIndex
          ? _value.currentViewIndex
          : currentViewIndex // ignore: cast_nullable_to_non_nullable
              as int,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$ProposalCreationStateImpl implements _ProposalCreationState {
  const _$ProposalCreationStateImpl(
      {this.pageState = PageState.initial,
      this.proposal,
      this.currentViewIndex = 0,
      this.command});

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final ProposalCreationModel? proposal;
  @override
  @JsonKey()
  final int currentViewIndex;
  @override
  final PageCommand? command;

  @override
  String toString() {
    return 'ProposalCreationState(pageState: $pageState, proposal: $proposal, currentViewIndex: $currentViewIndex, command: $command)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProposalCreationStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.proposal, proposal) ||
                other.proposal == proposal) &&
            (identical(other.currentViewIndex, currentViewIndex) ||
                other.currentViewIndex == currentViewIndex) &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pageState, proposal, currentViewIndex, command);

  /// Create a copy of ProposalCreationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProposalCreationStateImplCopyWith<_$ProposalCreationStateImpl>
      get copyWith => __$$ProposalCreationStateImplCopyWithImpl<
          _$ProposalCreationStateImpl>(this, _$identity);
}

abstract class _ProposalCreationState implements ProposalCreationState {
  const factory _ProposalCreationState(
      {final PageState pageState,
      final ProposalCreationModel? proposal,
      final int currentViewIndex,
      final PageCommand? command}) = _$ProposalCreationStateImpl;

  @override
  PageState get pageState;
  @override
  ProposalCreationModel? get proposal;
  @override
  int get currentViewIndex;
  @override
  PageCommand? get command;

  /// Create a copy of ProposalCreationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProposalCreationStateImplCopyWith<_$ProposalCreationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
