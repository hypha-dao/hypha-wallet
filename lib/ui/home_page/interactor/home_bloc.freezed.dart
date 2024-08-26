// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String value) onQRCodeScanned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String value)? onQRCodeScanned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String value)? onQRCodeScanned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnQRCodeScanned value) onQRCodeScanned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnQRCodeScanned value)? onQRCodeScanned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnQRCodeScanned value)? onQRCodeScanned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
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
    extends _$HomeEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeEvent.initial()';
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
    required TResult Function() clearPageCommand,
    required TResult Function(String value) onQRCodeScanned,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String value)? onQRCodeScanned,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String value)? onQRCodeScanned,
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
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnQRCodeScanned value) onQRCodeScanned,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnQRCodeScanned value)? onQRCodeScanned,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnQRCodeScanned value)? onQRCodeScanned,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ClearPageCommandImplCopyWith<$Res> {
  factory _$$ClearPageCommandImplCopyWith(_$ClearPageCommandImpl value,
          $Res Function(_$ClearPageCommandImpl) then) =
      __$$ClearPageCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPageCommandImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'HomeEvent.clearPageCommand()';
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
    required TResult Function() clearPageCommand,
    required TResult Function(String value) onQRCodeScanned,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String value)? onQRCodeScanned,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String value)? onQRCodeScanned,
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
    required TResult Function(_OnQRCodeScanned value) onQRCodeScanned,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnQRCodeScanned value)? onQRCodeScanned,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnQRCodeScanned value)? onQRCodeScanned,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements HomeEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$OnQRCodeScannedImplCopyWith<$Res> {
  factory _$$OnQRCodeScannedImplCopyWith(_$OnQRCodeScannedImpl value,
          $Res Function(_$OnQRCodeScannedImpl) then) =
      __$$OnQRCodeScannedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$OnQRCodeScannedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnQRCodeScannedImpl>
    implements _$$OnQRCodeScannedImplCopyWith<$Res> {
  __$$OnQRCodeScannedImplCopyWithImpl(
      _$OnQRCodeScannedImpl _value, $Res Function(_$OnQRCodeScannedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnQRCodeScannedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnQRCodeScannedImpl implements _OnQRCodeScanned {
  const _$OnQRCodeScannedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'HomeEvent.onQRCodeScanned(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnQRCodeScannedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnQRCodeScannedImplCopyWith<_$OnQRCodeScannedImpl> get copyWith =>
      __$$OnQRCodeScannedImplCopyWithImpl<_$OnQRCodeScannedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() clearPageCommand,
    required TResult Function(String value) onQRCodeScanned,
  }) {
    return onQRCodeScanned(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(String value)? onQRCodeScanned,
  }) {
    return onQRCodeScanned?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? clearPageCommand,
    TResult Function(String value)? onQRCodeScanned,
    required TResult orElse(),
  }) {
    if (onQRCodeScanned != null) {
      return onQRCodeScanned(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnQRCodeScanned value) onQRCodeScanned,
  }) {
    return onQRCodeScanned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnQRCodeScanned value)? onQRCodeScanned,
  }) {
    return onQRCodeScanned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnQRCodeScanned value)? onQRCodeScanned,
    required TResult orElse(),
  }) {
    if (onQRCodeScanned != null) {
      return onQRCodeScanned(this);
    }
    return orElse();
  }
}

abstract class _OnQRCodeScanned implements HomeEvent {
  const factory _OnQRCodeScanned(final String value) = _$OnQRCodeScannedImpl;

  String get value;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnQRCodeScannedImplCopyWith<_$OnQRCodeScannedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  PageState get pageState => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({PageState pageState, bool isLoading, PageCommand? command});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? isLoading = null,
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ) as $Val);
  }

  /// Create a copy of HomeState
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
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState pageState, bool isLoading, PageCommand? command});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? isLoading = null,
    Object? command = freezed,
  }) {
    return _then(_$HomeStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.pageState = PageState.initial,
      this.isLoading = false,
      this.command});

  @override
  @JsonKey()
  final PageState pageState;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final PageCommand? command;

  @override
  String toString() {
    return 'HomeState(pageState: $pageState, isLoading: $isLoading, command: $command)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, isLoading, command);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final PageState pageState,
      final bool isLoading,
      final PageCommand? command}) = _$HomeStateImpl;

  @override
  PageState get pageState;
  @override
  bool get isLoading;
  @override
  PageCommand? get command;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageCommand {
  ScanQrCodeResultData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScanQrCodeResultData data)
        navigateToTransactionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScanQrCodeResultData data)? navigateToTransactionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScanQrCodeResultData data)? navigateToTransactionDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToTransactionDetails value)
        navigateToTransactionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToTransactionDetails value)?
        navigateToTransactionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToTransactionDetails value)?
        navigateToTransactionDetails,
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
  $Res call({ScanQrCodeResultData data});
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
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ScanQrCodeResultData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigateToTransactionDetailsImplCopyWith<$Res>
    implements $PageCommandCopyWith<$Res> {
  factory _$$NavigateToTransactionDetailsImplCopyWith(
          _$NavigateToTransactionDetailsImpl value,
          $Res Function(_$NavigateToTransactionDetailsImpl) then) =
      __$$NavigateToTransactionDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScanQrCodeResultData data});
}

/// @nodoc
class __$$NavigateToTransactionDetailsImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToTransactionDetailsImpl>
    implements _$$NavigateToTransactionDetailsImplCopyWith<$Res> {
  __$$NavigateToTransactionDetailsImplCopyWithImpl(
      _$NavigateToTransactionDetailsImpl _value,
      $Res Function(_$NavigateToTransactionDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$NavigateToTransactionDetailsImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ScanQrCodeResultData,
    ));
  }
}

/// @nodoc

class _$NavigateToTransactionDetailsImpl
    implements _NavigateToTransactionDetails {
  const _$NavigateToTransactionDetailsImpl(this.data);

  @override
  final ScanQrCodeResultData data;

  @override
  String toString() {
    return 'PageCommand.navigateToTransactionDetails(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToTransactionDetailsImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToTransactionDetailsImplCopyWith<
          _$NavigateToTransactionDetailsImpl>
      get copyWith => __$$NavigateToTransactionDetailsImplCopyWithImpl<
          _$NavigateToTransactionDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScanQrCodeResultData data)
        navigateToTransactionDetails,
  }) {
    return navigateToTransactionDetails(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScanQrCodeResultData data)? navigateToTransactionDetails,
  }) {
    return navigateToTransactionDetails?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScanQrCodeResultData data)? navigateToTransactionDetails,
    required TResult orElse(),
  }) {
    if (navigateToTransactionDetails != null) {
      return navigateToTransactionDetails(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToTransactionDetails value)
        navigateToTransactionDetails,
  }) {
    return navigateToTransactionDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToTransactionDetails value)?
        navigateToTransactionDetails,
  }) {
    return navigateToTransactionDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToTransactionDetails value)?
        navigateToTransactionDetails,
    required TResult orElse(),
  }) {
    if (navigateToTransactionDetails != null) {
      return navigateToTransactionDetails(this);
    }
    return orElse();
  }
}

abstract class _NavigateToTransactionDetails implements PageCommand {
  const factory _NavigateToTransactionDetails(final ScanQrCodeResultData data) =
      _$NavigateToTransactionDetailsImpl;

  @override
  ScanQrCodeResultData get data;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToTransactionDetailsImplCopyWith<
          _$NavigateToTransactionDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
