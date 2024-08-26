// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottomNavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BottomNavigationPage? initialPage) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(BottomNavigationPage page) onPageSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BottomNavigationPage? initialPage)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(BottomNavigationPage page)? onPageSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BottomNavigationPage? initialPage)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(BottomNavigationPage page)? onPageSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnPageSelected value) onPageSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPageSelected value)? onPageSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPageSelected value)? onPageSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationEventCopyWith<$Res> {
  factory $BottomNavigationEventCopyWith(BottomNavigationEvent value,
          $Res Function(BottomNavigationEvent) then) =
      _$BottomNavigationEventCopyWithImpl<$Res, BottomNavigationEvent>;
}

/// @nodoc
class _$BottomNavigationEventCopyWithImpl<$Res,
        $Val extends BottomNavigationEvent>
    implements $BottomNavigationEventCopyWith<$Res> {
  _$BottomNavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BottomNavigationPage? initialPage});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialPage = freezed,
  }) {
    return _then(_$InitialImpl(
      freezed == initialPage
          ? _value.initialPage
          : initialPage // ignore: cast_nullable_to_non_nullable
              as BottomNavigationPage?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.initialPage);

  @override
  final BottomNavigationPage? initialPage;

  @override
  String toString() {
    return 'BottomNavigationEvent.initial(initialPage: $initialPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.initialPage, initialPage) ||
                other.initialPage == initialPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialPage);

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BottomNavigationPage? initialPage) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(BottomNavigationPage page) onPageSelected,
  }) {
    return initial(initialPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BottomNavigationPage? initialPage)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(BottomNavigationPage page)? onPageSelected,
  }) {
    return initial?.call(initialPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BottomNavigationPage? initialPage)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(BottomNavigationPage page)? onPageSelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(initialPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnPageSelected value) onPageSelected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPageSelected value)? onPageSelected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPageSelected value)? onPageSelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BottomNavigationEvent {
  const factory _Initial(final BottomNavigationPage? initialPage) =
      _$InitialImpl;

  BottomNavigationPage? get initialPage;

  /// Create a copy of BottomNavigationEvent
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
    extends _$BottomNavigationEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'BottomNavigationEvent.clearPageCommand()';
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
    required TResult Function(BottomNavigationPage? initialPage) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(BottomNavigationPage page) onPageSelected,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BottomNavigationPage? initialPage)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(BottomNavigationPage page)? onPageSelected,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BottomNavigationPage? initialPage)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(BottomNavigationPage page)? onPageSelected,
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
    required TResult Function(_OnPageSelected value) onPageSelected,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPageSelected value)? onPageSelected,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPageSelected value)? onPageSelected,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements BottomNavigationEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$OnPageSelectedImplCopyWith<$Res> {
  factory _$$OnPageSelectedImplCopyWith(_$OnPageSelectedImpl value,
          $Res Function(_$OnPageSelectedImpl) then) =
      __$$OnPageSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BottomNavigationPage page});
}

/// @nodoc
class __$$OnPageSelectedImplCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res, _$OnPageSelectedImpl>
    implements _$$OnPageSelectedImplCopyWith<$Res> {
  __$$OnPageSelectedImplCopyWithImpl(
      _$OnPageSelectedImpl _value, $Res Function(_$OnPageSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$OnPageSelectedImpl(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BottomNavigationPage,
    ));
  }
}

/// @nodoc

class _$OnPageSelectedImpl implements _OnPageSelected {
  const _$OnPageSelectedImpl(this.page);

  @override
  final BottomNavigationPage page;

  @override
  String toString() {
    return 'BottomNavigationEvent.onPageSelected(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPageSelectedImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPageSelectedImplCopyWith<_$OnPageSelectedImpl> get copyWith =>
      __$$OnPageSelectedImplCopyWithImpl<_$OnPageSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BottomNavigationPage? initialPage) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(BottomNavigationPage page) onPageSelected,
  }) {
    return onPageSelected(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BottomNavigationPage? initialPage)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(BottomNavigationPage page)? onPageSelected,
  }) {
    return onPageSelected?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BottomNavigationPage? initialPage)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(BottomNavigationPage page)? onPageSelected,
    required TResult orElse(),
  }) {
    if (onPageSelected != null) {
      return onPageSelected(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnPageSelected value) onPageSelected,
  }) {
    return onPageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPageSelected value)? onPageSelected,
  }) {
    return onPageSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPageSelected value)? onPageSelected,
    required TResult orElse(),
  }) {
    if (onPageSelected != null) {
      return onPageSelected(this);
    }
    return orElse();
  }
}

abstract class _OnPageSelected implements BottomNavigationEvent {
  const factory _OnPageSelected(final BottomNavigationPage page) =
      _$OnPageSelectedImpl;

  BottomNavigationPage get page;

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPageSelectedImplCopyWith<_$OnPageSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BottomNavigationState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;
  List<BottomNavigationPage> get allPages => throw _privateConstructorUsedError;
  BottomNavigationPage get selectedPage => throw _privateConstructorUsedError;

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BottomNavigationStateCopyWith<BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res, BottomNavigationState>;
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      List<BottomNavigationPage> allPages,
      BottomNavigationPage selectedPage});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res,
        $Val extends BottomNavigationState>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? allPages = null,
    Object? selectedPage = null,
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
      allPages: null == allPages
          ? _value.allPages
          : allPages // ignore: cast_nullable_to_non_nullable
              as List<BottomNavigationPage>,
      selectedPage: null == selectedPage
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as BottomNavigationPage,
    ) as $Val);
  }

  /// Create a copy of BottomNavigationState
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
abstract class _$$BottomNavigationStateImplCopyWith<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  factory _$$BottomNavigationStateImplCopyWith(
          _$BottomNavigationStateImpl value,
          $Res Function(_$BottomNavigationStateImpl) then) =
      __$$BottomNavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      List<BottomNavigationPage> allPages,
      BottomNavigationPage selectedPage});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$BottomNavigationStateImplCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res,
        _$BottomNavigationStateImpl>
    implements _$$BottomNavigationStateImplCopyWith<$Res> {
  __$$BottomNavigationStateImplCopyWithImpl(_$BottomNavigationStateImpl _value,
      $Res Function(_$BottomNavigationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? allPages = null,
    Object? selectedPage = null,
  }) {
    return _then(_$BottomNavigationStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      allPages: null == allPages
          ? _value._allPages
          : allPages // ignore: cast_nullable_to_non_nullable
              as List<BottomNavigationPage>,
      selectedPage: null == selectedPage
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as BottomNavigationPage,
    ));
  }
}

/// @nodoc

class _$BottomNavigationStateImpl extends _BottomNavigationState {
  const _$BottomNavigationStateImpl(
      {this.pageState = PageState.initial,
      this.command,
      final List<BottomNavigationPage> allPages = const [],
      this.selectedPage = BottomNavigationPage.home})
      : _allPages = allPages,
        super._();

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final PageCommand? command;
  final List<BottomNavigationPage> _allPages;
  @override
  @JsonKey()
  List<BottomNavigationPage> get allPages {
    if (_allPages is EqualUnmodifiableListView) return _allPages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allPages);
  }

  @override
  @JsonKey()
  final BottomNavigationPage selectedPage;

  @override
  String toString() {
    return 'BottomNavigationState(pageState: $pageState, command: $command, allPages: $allPages, selectedPage: $selectedPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavigationStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.command, command) || other.command == command) &&
            const DeepCollectionEquality().equals(other._allPages, _allPages) &&
            (identical(other.selectedPage, selectedPage) ||
                other.selectedPage == selectedPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, command,
      const DeepCollectionEquality().hash(_allPages), selectedPage);

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomNavigationStateImplCopyWith<_$BottomNavigationStateImpl>
      get copyWith => __$$BottomNavigationStateImplCopyWithImpl<
          _$BottomNavigationStateImpl>(this, _$identity);
}

abstract class _BottomNavigationState extends BottomNavigationState {
  const factory _BottomNavigationState(
      {final PageState pageState,
      final PageCommand? command,
      final List<BottomNavigationPage> allPages,
      final BottomNavigationPage selectedPage}) = _$BottomNavigationStateImpl;
  const _BottomNavigationState._() : super._();

  @override
  PageState get pageState;
  @override
  PageCommand? get command;
  @override
  List<BottomNavigationPage> get allPages;
  @override
  BottomNavigationPage get selectedPage;

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BottomNavigationStateImplCopyWith<_$BottomNavigationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateTo value) navigateTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateTo value)? navigateTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateTo value)? navigateTo,
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
    return 'PageCommand.navigateTo()';
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
    required TResult Function() navigateTo,
  }) {
    return navigateTo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateTo,
  }) {
    return navigateTo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateTo,
    required TResult orElse(),
  }) {
    if (navigateTo != null) {
      return navigateTo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateTo value) navigateTo,
  }) {
    return navigateTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateTo value)? navigateTo,
  }) {
    return navigateTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateTo value)? navigateTo,
    required TResult orElse(),
  }) {
    if (navigateTo != null) {
      return navigateTo(this);
    }
    return orElse();
  }
}

abstract class _NavigateTo implements PageCommand {
  const factory _NavigateTo() = _$NavigateToImpl;
}
