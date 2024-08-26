// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_handler_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ErrorHandlerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HyphaError error) onError,
    required TResult Function() onClearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HyphaError error)? onError,
    TResult? Function()? onClearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HyphaError error)? onError,
    TResult Function()? onClearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnClearPageCommand value) onClearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnClearPageCommand value)? onClearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnError value)? onError,
    TResult Function(_OnClearPageCommand value)? onClearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorHandlerEventCopyWith<$Res> {
  factory $ErrorHandlerEventCopyWith(
          ErrorHandlerEvent value, $Res Function(ErrorHandlerEvent) then) =
      _$ErrorHandlerEventCopyWithImpl<$Res, ErrorHandlerEvent>;
}

/// @nodoc
class _$ErrorHandlerEventCopyWithImpl<$Res, $Val extends ErrorHandlerEvent>
    implements $ErrorHandlerEventCopyWith<$Res> {
  _$ErrorHandlerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorHandlerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnErrorImplCopyWith<$Res> {
  factory _$$OnErrorImplCopyWith(
          _$OnErrorImpl value, $Res Function(_$OnErrorImpl) then) =
      __$$OnErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HyphaError error});
}

/// @nodoc
class __$$OnErrorImplCopyWithImpl<$Res>
    extends _$ErrorHandlerEventCopyWithImpl<$Res, _$OnErrorImpl>
    implements _$$OnErrorImplCopyWith<$Res> {
  __$$OnErrorImplCopyWithImpl(
      _$OnErrorImpl _value, $Res Function(_$OnErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorHandlerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OnErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HyphaError,
    ));
  }
}

/// @nodoc

class _$OnErrorImpl implements _OnError {
  const _$OnErrorImpl(this.error);

  @override
  final HyphaError error;

  @override
  String toString() {
    return 'ErrorHandlerEvent.onError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ErrorHandlerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnErrorImplCopyWith<_$OnErrorImpl> get copyWith =>
      __$$OnErrorImplCopyWithImpl<_$OnErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HyphaError error) onError,
    required TResult Function() onClearPageCommand,
  }) {
    return onError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HyphaError error)? onError,
    TResult? Function()? onClearPageCommand,
  }) {
    return onError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HyphaError error)? onError,
    TResult Function()? onClearPageCommand,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnClearPageCommand value) onClearPageCommand,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnClearPageCommand value)? onClearPageCommand,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnError value)? onError,
    TResult Function(_OnClearPageCommand value)? onClearPageCommand,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError implements ErrorHandlerEvent {
  const factory _OnError(final HyphaError error) = _$OnErrorImpl;

  HyphaError get error;

  /// Create a copy of ErrorHandlerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnErrorImplCopyWith<_$OnErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnClearPageCommandImplCopyWith<$Res> {
  factory _$$OnClearPageCommandImplCopyWith(_$OnClearPageCommandImpl value,
          $Res Function(_$OnClearPageCommandImpl) then) =
      __$$OnClearPageCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnClearPageCommandImplCopyWithImpl<$Res>
    extends _$ErrorHandlerEventCopyWithImpl<$Res, _$OnClearPageCommandImpl>
    implements _$$OnClearPageCommandImplCopyWith<$Res> {
  __$$OnClearPageCommandImplCopyWithImpl(_$OnClearPageCommandImpl _value,
      $Res Function(_$OnClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorHandlerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnClearPageCommandImpl implements _OnClearPageCommand {
  const _$OnClearPageCommandImpl();

  @override
  String toString() {
    return 'ErrorHandlerEvent.onClearPageCommand()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnClearPageCommandImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HyphaError error) onError,
    required TResult Function() onClearPageCommand,
  }) {
    return onClearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HyphaError error)? onError,
    TResult? Function()? onClearPageCommand,
  }) {
    return onClearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HyphaError error)? onError,
    TResult Function()? onClearPageCommand,
    required TResult orElse(),
  }) {
    if (onClearPageCommand != null) {
      return onClearPageCommand();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnClearPageCommand value) onClearPageCommand,
  }) {
    return onClearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnError value)? onError,
    TResult? Function(_OnClearPageCommand value)? onClearPageCommand,
  }) {
    return onClearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnError value)? onError,
    TResult Function(_OnClearPageCommand value)? onClearPageCommand,
    required TResult orElse(),
  }) {
    if (onClearPageCommand != null) {
      return onClearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _OnClearPageCommand implements ErrorHandlerEvent {
  const factory _OnClearPageCommand() = _$OnClearPageCommandImpl;
}

/// @nodoc
mixin _$ErrorHandlerState {
  PageCommand? get pageCommand => throw _privateConstructorUsedError;

  /// Create a copy of ErrorHandlerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorHandlerStateCopyWith<ErrorHandlerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorHandlerStateCopyWith<$Res> {
  factory $ErrorHandlerStateCopyWith(
          ErrorHandlerState value, $Res Function(ErrorHandlerState) then) =
      _$ErrorHandlerStateCopyWithImpl<$Res, ErrorHandlerState>;
  @useResult
  $Res call({PageCommand? pageCommand});

  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class _$ErrorHandlerStateCopyWithImpl<$Res, $Val extends ErrorHandlerState>
    implements $ErrorHandlerStateCopyWith<$Res> {
  _$ErrorHandlerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorHandlerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCommand = freezed,
  }) {
    return _then(_value.copyWith(
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ) as $Val);
  }

  /// Create a copy of ErrorHandlerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageCommandCopyWith<$Res>? get pageCommand {
    if (_value.pageCommand == null) {
      return null;
    }

    return $PageCommandCopyWith<$Res>(_value.pageCommand!, (value) {
      return _then(_value.copyWith(pageCommand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ErrorHandlerStateImplCopyWith<$Res>
    implements $ErrorHandlerStateCopyWith<$Res> {
  factory _$$ErrorHandlerStateImplCopyWith(_$ErrorHandlerStateImpl value,
          $Res Function(_$ErrorHandlerStateImpl) then) =
      __$$ErrorHandlerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageCommand? pageCommand});

  @override
  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class __$$ErrorHandlerStateImplCopyWithImpl<$Res>
    extends _$ErrorHandlerStateCopyWithImpl<$Res, _$ErrorHandlerStateImpl>
    implements _$$ErrorHandlerStateImplCopyWith<$Res> {
  __$$ErrorHandlerStateImplCopyWithImpl(_$ErrorHandlerStateImpl _value,
      $Res Function(_$ErrorHandlerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorHandlerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCommand = freezed,
  }) {
    return _then(_$ErrorHandlerStateImpl(
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$ErrorHandlerStateImpl implements _ErrorHandlerState {
  const _$ErrorHandlerStateImpl({this.pageCommand = null});

  @override
  @JsonKey()
  final PageCommand? pageCommand;

  @override
  String toString() {
    return 'ErrorHandlerState(pageCommand: $pageCommand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorHandlerStateImpl &&
            (identical(other.pageCommand, pageCommand) ||
                other.pageCommand == pageCommand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageCommand);

  /// Create a copy of ErrorHandlerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorHandlerStateImplCopyWith<_$ErrorHandlerStateImpl> get copyWith =>
      __$$ErrorHandlerStateImplCopyWithImpl<_$ErrorHandlerStateImpl>(
          this, _$identity);
}

abstract class _ErrorHandlerState implements ErrorHandlerState {
  const factory _ErrorHandlerState({final PageCommand? pageCommand}) =
      _$ErrorHandlerStateImpl;

  @override
  PageCommand? get pageCommand;

  /// Create a copy of ErrorHandlerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorHandlerStateImplCopyWith<_$ErrorHandlerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestForceUpdate,
    required TResult Function() showReLoginDialog,
    required TResult Function() showConnectivityErrorDialog,
    required TResult Function(HyphaError hyphaError) showErrorDialog,
    required TResult Function(String message) showErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestForceUpdate,
    TResult? Function()? showReLoginDialog,
    TResult? Function()? showConnectivityErrorDialog,
    TResult? Function(HyphaError hyphaError)? showErrorDialog,
    TResult? Function(String message)? showErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestForceUpdate,
    TResult Function()? showReLoginDialog,
    TResult Function()? showConnectivityErrorDialog,
    TResult Function(HyphaError hyphaError)? showErrorDialog,
    TResult Function(String message)? showErrorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestForceUpdate value) requestForceUpdate,
    required TResult Function(_ShowReLoginDialog value) showReLoginDialog,
    required TResult Function(_ShowConnectivityErrorDialog value)
        showConnectivityErrorDialog,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
    required TResult Function(_ShowErrorMessage value) showErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestForceUpdate value)? requestForceUpdate,
    TResult? Function(_ShowReLoginDialog value)? showReLoginDialog,
    TResult? Function(_ShowConnectivityErrorDialog value)?
        showConnectivityErrorDialog,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
    TResult? Function(_ShowErrorMessage value)? showErrorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestForceUpdate value)? requestForceUpdate,
    TResult Function(_ShowReLoginDialog value)? showReLoginDialog,
    TResult Function(_ShowConnectivityErrorDialog value)?
        showConnectivityErrorDialog,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    TResult Function(_ShowErrorMessage value)? showErrorMessage,
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
abstract class _$$RequestForceUpdateImplCopyWith<$Res> {
  factory _$$RequestForceUpdateImplCopyWith(_$RequestForceUpdateImpl value,
          $Res Function(_$RequestForceUpdateImpl) then) =
      __$$RequestForceUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestForceUpdateImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$RequestForceUpdateImpl>
    implements _$$RequestForceUpdateImplCopyWith<$Res> {
  __$$RequestForceUpdateImplCopyWithImpl(_$RequestForceUpdateImpl _value,
      $Res Function(_$RequestForceUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestForceUpdateImpl implements _RequestForceUpdate {
  const _$RequestForceUpdateImpl();

  @override
  String toString() {
    return 'PageCommand.requestForceUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestForceUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestForceUpdate,
    required TResult Function() showReLoginDialog,
    required TResult Function() showConnectivityErrorDialog,
    required TResult Function(HyphaError hyphaError) showErrorDialog,
    required TResult Function(String message) showErrorMessage,
  }) {
    return requestForceUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestForceUpdate,
    TResult? Function()? showReLoginDialog,
    TResult? Function()? showConnectivityErrorDialog,
    TResult? Function(HyphaError hyphaError)? showErrorDialog,
    TResult? Function(String message)? showErrorMessage,
  }) {
    return requestForceUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestForceUpdate,
    TResult Function()? showReLoginDialog,
    TResult Function()? showConnectivityErrorDialog,
    TResult Function(HyphaError hyphaError)? showErrorDialog,
    TResult Function(String message)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (requestForceUpdate != null) {
      return requestForceUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestForceUpdate value) requestForceUpdate,
    required TResult Function(_ShowReLoginDialog value) showReLoginDialog,
    required TResult Function(_ShowConnectivityErrorDialog value)
        showConnectivityErrorDialog,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
    required TResult Function(_ShowErrorMessage value) showErrorMessage,
  }) {
    return requestForceUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestForceUpdate value)? requestForceUpdate,
    TResult? Function(_ShowReLoginDialog value)? showReLoginDialog,
    TResult? Function(_ShowConnectivityErrorDialog value)?
        showConnectivityErrorDialog,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
    TResult? Function(_ShowErrorMessage value)? showErrorMessage,
  }) {
    return requestForceUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestForceUpdate value)? requestForceUpdate,
    TResult Function(_ShowReLoginDialog value)? showReLoginDialog,
    TResult Function(_ShowConnectivityErrorDialog value)?
        showConnectivityErrorDialog,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    TResult Function(_ShowErrorMessage value)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (requestForceUpdate != null) {
      return requestForceUpdate(this);
    }
    return orElse();
  }
}

abstract class _RequestForceUpdate implements PageCommand {
  const factory _RequestForceUpdate() = _$RequestForceUpdateImpl;
}

/// @nodoc
abstract class _$$ShowReLoginDialogImplCopyWith<$Res> {
  factory _$$ShowReLoginDialogImplCopyWith(_$ShowReLoginDialogImpl value,
          $Res Function(_$ShowReLoginDialogImpl) then) =
      __$$ShowReLoginDialogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowReLoginDialogImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$ShowReLoginDialogImpl>
    implements _$$ShowReLoginDialogImplCopyWith<$Res> {
  __$$ShowReLoginDialogImplCopyWithImpl(_$ShowReLoginDialogImpl _value,
      $Res Function(_$ShowReLoginDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowReLoginDialogImpl implements _ShowReLoginDialog {
  const _$ShowReLoginDialogImpl();

  @override
  String toString() {
    return 'PageCommand.showReLoginDialog()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowReLoginDialogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestForceUpdate,
    required TResult Function() showReLoginDialog,
    required TResult Function() showConnectivityErrorDialog,
    required TResult Function(HyphaError hyphaError) showErrorDialog,
    required TResult Function(String message) showErrorMessage,
  }) {
    return showReLoginDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestForceUpdate,
    TResult? Function()? showReLoginDialog,
    TResult? Function()? showConnectivityErrorDialog,
    TResult? Function(HyphaError hyphaError)? showErrorDialog,
    TResult? Function(String message)? showErrorMessage,
  }) {
    return showReLoginDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestForceUpdate,
    TResult Function()? showReLoginDialog,
    TResult Function()? showConnectivityErrorDialog,
    TResult Function(HyphaError hyphaError)? showErrorDialog,
    TResult Function(String message)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (showReLoginDialog != null) {
      return showReLoginDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestForceUpdate value) requestForceUpdate,
    required TResult Function(_ShowReLoginDialog value) showReLoginDialog,
    required TResult Function(_ShowConnectivityErrorDialog value)
        showConnectivityErrorDialog,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
    required TResult Function(_ShowErrorMessage value) showErrorMessage,
  }) {
    return showReLoginDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestForceUpdate value)? requestForceUpdate,
    TResult? Function(_ShowReLoginDialog value)? showReLoginDialog,
    TResult? Function(_ShowConnectivityErrorDialog value)?
        showConnectivityErrorDialog,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
    TResult? Function(_ShowErrorMessage value)? showErrorMessage,
  }) {
    return showReLoginDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestForceUpdate value)? requestForceUpdate,
    TResult Function(_ShowReLoginDialog value)? showReLoginDialog,
    TResult Function(_ShowConnectivityErrorDialog value)?
        showConnectivityErrorDialog,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    TResult Function(_ShowErrorMessage value)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (showReLoginDialog != null) {
      return showReLoginDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowReLoginDialog implements PageCommand {
  const factory _ShowReLoginDialog() = _$ShowReLoginDialogImpl;
}

/// @nodoc
abstract class _$$ShowConnectivityErrorDialogImplCopyWith<$Res> {
  factory _$$ShowConnectivityErrorDialogImplCopyWith(
          _$ShowConnectivityErrorDialogImpl value,
          $Res Function(_$ShowConnectivityErrorDialogImpl) then) =
      __$$ShowConnectivityErrorDialogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowConnectivityErrorDialogImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$ShowConnectivityErrorDialogImpl>
    implements _$$ShowConnectivityErrorDialogImplCopyWith<$Res> {
  __$$ShowConnectivityErrorDialogImplCopyWithImpl(
      _$ShowConnectivityErrorDialogImpl _value,
      $Res Function(_$ShowConnectivityErrorDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowConnectivityErrorDialogImpl
    implements _ShowConnectivityErrorDialog {
  const _$ShowConnectivityErrorDialogImpl();

  @override
  String toString() {
    return 'PageCommand.showConnectivityErrorDialog()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowConnectivityErrorDialogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestForceUpdate,
    required TResult Function() showReLoginDialog,
    required TResult Function() showConnectivityErrorDialog,
    required TResult Function(HyphaError hyphaError) showErrorDialog,
    required TResult Function(String message) showErrorMessage,
  }) {
    return showConnectivityErrorDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestForceUpdate,
    TResult? Function()? showReLoginDialog,
    TResult? Function()? showConnectivityErrorDialog,
    TResult? Function(HyphaError hyphaError)? showErrorDialog,
    TResult? Function(String message)? showErrorMessage,
  }) {
    return showConnectivityErrorDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestForceUpdate,
    TResult Function()? showReLoginDialog,
    TResult Function()? showConnectivityErrorDialog,
    TResult Function(HyphaError hyphaError)? showErrorDialog,
    TResult Function(String message)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (showConnectivityErrorDialog != null) {
      return showConnectivityErrorDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestForceUpdate value) requestForceUpdate,
    required TResult Function(_ShowReLoginDialog value) showReLoginDialog,
    required TResult Function(_ShowConnectivityErrorDialog value)
        showConnectivityErrorDialog,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
    required TResult Function(_ShowErrorMessage value) showErrorMessage,
  }) {
    return showConnectivityErrorDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestForceUpdate value)? requestForceUpdate,
    TResult? Function(_ShowReLoginDialog value)? showReLoginDialog,
    TResult? Function(_ShowConnectivityErrorDialog value)?
        showConnectivityErrorDialog,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
    TResult? Function(_ShowErrorMessage value)? showErrorMessage,
  }) {
    return showConnectivityErrorDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestForceUpdate value)? requestForceUpdate,
    TResult Function(_ShowReLoginDialog value)? showReLoginDialog,
    TResult Function(_ShowConnectivityErrorDialog value)?
        showConnectivityErrorDialog,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    TResult Function(_ShowErrorMessage value)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (showConnectivityErrorDialog != null) {
      return showConnectivityErrorDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowConnectivityErrorDialog implements PageCommand {
  const factory _ShowConnectivityErrorDialog() =
      _$ShowConnectivityErrorDialogImpl;
}

/// @nodoc
abstract class _$$ShowErrorDialogImplCopyWith<$Res> {
  factory _$$ShowErrorDialogImplCopyWith(_$ShowErrorDialogImpl value,
          $Res Function(_$ShowErrorDialogImpl) then) =
      __$$ShowErrorDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HyphaError hyphaError});
}

/// @nodoc
class __$$ShowErrorDialogImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$ShowErrorDialogImpl>
    implements _$$ShowErrorDialogImplCopyWith<$Res> {
  __$$ShowErrorDialogImplCopyWithImpl(
      _$ShowErrorDialogImpl _value, $Res Function(_$ShowErrorDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hyphaError = null,
  }) {
    return _then(_$ShowErrorDialogImpl(
      null == hyphaError
          ? _value.hyphaError
          : hyphaError // ignore: cast_nullable_to_non_nullable
              as HyphaError,
    ));
  }
}

/// @nodoc

class _$ShowErrorDialogImpl implements _ShowErrorDialog {
  const _$ShowErrorDialogImpl(this.hyphaError);

  @override
  final HyphaError hyphaError;

  @override
  String toString() {
    return 'PageCommand.showErrorDialog(hyphaError: $hyphaError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowErrorDialogImpl &&
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
  _$$ShowErrorDialogImplCopyWith<_$ShowErrorDialogImpl> get copyWith =>
      __$$ShowErrorDialogImplCopyWithImpl<_$ShowErrorDialogImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestForceUpdate,
    required TResult Function() showReLoginDialog,
    required TResult Function() showConnectivityErrorDialog,
    required TResult Function(HyphaError hyphaError) showErrorDialog,
    required TResult Function(String message) showErrorMessage,
  }) {
    return showErrorDialog(hyphaError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestForceUpdate,
    TResult? Function()? showReLoginDialog,
    TResult? Function()? showConnectivityErrorDialog,
    TResult? Function(HyphaError hyphaError)? showErrorDialog,
    TResult? Function(String message)? showErrorMessage,
  }) {
    return showErrorDialog?.call(hyphaError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestForceUpdate,
    TResult Function()? showReLoginDialog,
    TResult Function()? showConnectivityErrorDialog,
    TResult Function(HyphaError hyphaError)? showErrorDialog,
    TResult Function(String message)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (showErrorDialog != null) {
      return showErrorDialog(hyphaError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestForceUpdate value) requestForceUpdate,
    required TResult Function(_ShowReLoginDialog value) showReLoginDialog,
    required TResult Function(_ShowConnectivityErrorDialog value)
        showConnectivityErrorDialog,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
    required TResult Function(_ShowErrorMessage value) showErrorMessage,
  }) {
    return showErrorDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestForceUpdate value)? requestForceUpdate,
    TResult? Function(_ShowReLoginDialog value)? showReLoginDialog,
    TResult? Function(_ShowConnectivityErrorDialog value)?
        showConnectivityErrorDialog,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
    TResult? Function(_ShowErrorMessage value)? showErrorMessage,
  }) {
    return showErrorDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestForceUpdate value)? requestForceUpdate,
    TResult Function(_ShowReLoginDialog value)? showReLoginDialog,
    TResult Function(_ShowConnectivityErrorDialog value)?
        showConnectivityErrorDialog,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    TResult Function(_ShowErrorMessage value)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (showErrorDialog != null) {
      return showErrorDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowErrorDialog implements PageCommand {
  const factory _ShowErrorDialog(final HyphaError hyphaError) =
      _$ShowErrorDialogImpl;

  HyphaError get hyphaError;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowErrorDialogImplCopyWith<_$ShowErrorDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowErrorMessageImplCopyWith<$Res> {
  factory _$$ShowErrorMessageImplCopyWith(_$ShowErrorMessageImpl value,
          $Res Function(_$ShowErrorMessageImpl) then) =
      __$$ShowErrorMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowErrorMessageImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$ShowErrorMessageImpl>
    implements _$$ShowErrorMessageImplCopyWith<$Res> {
  __$$ShowErrorMessageImplCopyWithImpl(_$ShowErrorMessageImpl _value,
      $Res Function(_$ShowErrorMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowErrorMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowErrorMessageImpl implements _ShowErrorMessage {
  const _$ShowErrorMessageImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PageCommand.showErrorMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowErrorMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowErrorMessageImplCopyWith<_$ShowErrorMessageImpl> get copyWith =>
      __$$ShowErrorMessageImplCopyWithImpl<_$ShowErrorMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestForceUpdate,
    required TResult Function() showReLoginDialog,
    required TResult Function() showConnectivityErrorDialog,
    required TResult Function(HyphaError hyphaError) showErrorDialog,
    required TResult Function(String message) showErrorMessage,
  }) {
    return showErrorMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestForceUpdate,
    TResult? Function()? showReLoginDialog,
    TResult? Function()? showConnectivityErrorDialog,
    TResult? Function(HyphaError hyphaError)? showErrorDialog,
    TResult? Function(String message)? showErrorMessage,
  }) {
    return showErrorMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestForceUpdate,
    TResult Function()? showReLoginDialog,
    TResult Function()? showConnectivityErrorDialog,
    TResult Function(HyphaError hyphaError)? showErrorDialog,
    TResult Function(String message)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (showErrorMessage != null) {
      return showErrorMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestForceUpdate value) requestForceUpdate,
    required TResult Function(_ShowReLoginDialog value) showReLoginDialog,
    required TResult Function(_ShowConnectivityErrorDialog value)
        showConnectivityErrorDialog,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
    required TResult Function(_ShowErrorMessage value) showErrorMessage,
  }) {
    return showErrorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestForceUpdate value)? requestForceUpdate,
    TResult? Function(_ShowReLoginDialog value)? showReLoginDialog,
    TResult? Function(_ShowConnectivityErrorDialog value)?
        showConnectivityErrorDialog,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
    TResult? Function(_ShowErrorMessage value)? showErrorMessage,
  }) {
    return showErrorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestForceUpdate value)? requestForceUpdate,
    TResult Function(_ShowReLoginDialog value)? showReLoginDialog,
    TResult Function(_ShowConnectivityErrorDialog value)?
        showConnectivityErrorDialog,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    TResult Function(_ShowErrorMessage value)? showErrorMessage,
    required TResult orElse(),
  }) {
    if (showErrorMessage != null) {
      return showErrorMessage(this);
    }
    return orElse();
  }
}

abstract class _ShowErrorMessage implements PageCommand {
  const factory _ShowErrorMessage(final String message) =
      _$ShowErrorMessageImpl;

  String get message;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowErrorMessageImplCopyWith<_$ShowErrorMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
