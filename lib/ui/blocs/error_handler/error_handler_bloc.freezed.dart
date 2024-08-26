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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$_OnErrorCopyWith<$Res> {
  factory _$$_OnErrorCopyWith(
          _$_OnError value, $Res Function(_$_OnError) then) =
      __$$_OnErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({HyphaError error});
}

/// @nodoc
class __$$_OnErrorCopyWithImpl<$Res>
    extends _$ErrorHandlerEventCopyWithImpl<$Res, _$_OnError>
    implements _$$_OnErrorCopyWith<$Res> {
  __$$_OnErrorCopyWithImpl(_$_OnError _value, $Res Function(_$_OnError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_OnError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HyphaError,
    ));
  }
}

/// @nodoc

class _$_OnError implements _OnError {
  const _$_OnError(this.error);

  @override
  final HyphaError error;

  @override
  String toString() {
    return 'ErrorHandlerEvent.onError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      __$$_OnErrorCopyWithImpl<_$_OnError>(this, _$identity);

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
  const factory _OnError(final HyphaError error) = _$_OnError;

  HyphaError get error;
  @JsonKey(ignore: true)
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnClearPageCommandCopyWith<$Res> {
  factory _$$_OnClearPageCommandCopyWith(_$_OnClearPageCommand value,
          $Res Function(_$_OnClearPageCommand) then) =
      __$$_OnClearPageCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnClearPageCommandCopyWithImpl<$Res>
    extends _$ErrorHandlerEventCopyWithImpl<$Res, _$_OnClearPageCommand>
    implements _$$_OnClearPageCommandCopyWith<$Res> {
  __$$_OnClearPageCommandCopyWithImpl(
      _$_OnClearPageCommand _value, $Res Function(_$_OnClearPageCommand) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnClearPageCommand implements _OnClearPageCommand {
  const _$_OnClearPageCommand();

  @override
  String toString() {
    return 'ErrorHandlerEvent.onClearPageCommand()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnClearPageCommand);
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
  const factory _OnClearPageCommand() = _$_OnClearPageCommand;
}

/// @nodoc
mixin _$ErrorHandlerState {
  PageCommand? get pageCommand => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_ErrorHandlerStateCopyWith<$Res>
    implements $ErrorHandlerStateCopyWith<$Res> {
  factory _$$_ErrorHandlerStateCopyWith(_$_ErrorHandlerState value,
          $Res Function(_$_ErrorHandlerState) then) =
      __$$_ErrorHandlerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageCommand? pageCommand});

  @override
  $PageCommandCopyWith<$Res>? get pageCommand;
}

/// @nodoc
class __$$_ErrorHandlerStateCopyWithImpl<$Res>
    extends _$ErrorHandlerStateCopyWithImpl<$Res, _$_ErrorHandlerState>
    implements _$$_ErrorHandlerStateCopyWith<$Res> {
  __$$_ErrorHandlerStateCopyWithImpl(
      _$_ErrorHandlerState _value, $Res Function(_$_ErrorHandlerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCommand = freezed,
  }) {
    return _then(_$_ErrorHandlerState(
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$_ErrorHandlerState implements _ErrorHandlerState {
  const _$_ErrorHandlerState({this.pageCommand = null});

  @override
  @JsonKey()
  final PageCommand? pageCommand;

  @override
  String toString() {
    return 'ErrorHandlerState(pageCommand: $pageCommand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorHandlerState &&
            (identical(other.pageCommand, pageCommand) ||
                other.pageCommand == pageCommand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageCommand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorHandlerStateCopyWith<_$_ErrorHandlerState> get copyWith =>
      __$$_ErrorHandlerStateCopyWithImpl<_$_ErrorHandlerState>(
          this, _$identity);
}

abstract class _ErrorHandlerState implements ErrorHandlerState {
  const factory _ErrorHandlerState({final PageCommand? pageCommand}) =
      _$_ErrorHandlerState;

  @override
  PageCommand? get pageCommand;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorHandlerStateCopyWith<_$_ErrorHandlerState> get copyWith =>
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
}

/// @nodoc
abstract class _$$_RequestForceUpdateCopyWith<$Res> {
  factory _$$_RequestForceUpdateCopyWith(_$_RequestForceUpdate value,
          $Res Function(_$_RequestForceUpdate) then) =
      __$$_RequestForceUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestForceUpdateCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_RequestForceUpdate>
    implements _$$_RequestForceUpdateCopyWith<$Res> {
  __$$_RequestForceUpdateCopyWithImpl(
      _$_RequestForceUpdate _value, $Res Function(_$_RequestForceUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestForceUpdate implements _RequestForceUpdate {
  const _$_RequestForceUpdate();

  @override
  String toString() {
    return 'PageCommand.requestForceUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestForceUpdate);
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
  const factory _RequestForceUpdate() = _$_RequestForceUpdate;
}

/// @nodoc
abstract class _$$_ShowReLoginDialogCopyWith<$Res> {
  factory _$$_ShowReLoginDialogCopyWith(_$_ShowReLoginDialog value,
          $Res Function(_$_ShowReLoginDialog) then) =
      __$$_ShowReLoginDialogCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowReLoginDialogCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_ShowReLoginDialog>
    implements _$$_ShowReLoginDialogCopyWith<$Res> {
  __$$_ShowReLoginDialogCopyWithImpl(
      _$_ShowReLoginDialog _value, $Res Function(_$_ShowReLoginDialog) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShowReLoginDialog implements _ShowReLoginDialog {
  const _$_ShowReLoginDialog();

  @override
  String toString() {
    return 'PageCommand.showReLoginDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowReLoginDialog);
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
  const factory _ShowReLoginDialog() = _$_ShowReLoginDialog;
}

/// @nodoc
abstract class _$$_ShowConnectivityErrorDialogCopyWith<$Res> {
  factory _$$_ShowConnectivityErrorDialogCopyWith(
          _$_ShowConnectivityErrorDialog value,
          $Res Function(_$_ShowConnectivityErrorDialog) then) =
      __$$_ShowConnectivityErrorDialogCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowConnectivityErrorDialogCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_ShowConnectivityErrorDialog>
    implements _$$_ShowConnectivityErrorDialogCopyWith<$Res> {
  __$$_ShowConnectivityErrorDialogCopyWithImpl(
      _$_ShowConnectivityErrorDialog _value,
      $Res Function(_$_ShowConnectivityErrorDialog) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShowConnectivityErrorDialog implements _ShowConnectivityErrorDialog {
  const _$_ShowConnectivityErrorDialog();

  @override
  String toString() {
    return 'PageCommand.showConnectivityErrorDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowConnectivityErrorDialog);
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
  const factory _ShowConnectivityErrorDialog() = _$_ShowConnectivityErrorDialog;
}

/// @nodoc
abstract class _$$_ShowErrorDialogCopyWith<$Res> {
  factory _$$_ShowErrorDialogCopyWith(
          _$_ShowErrorDialog value, $Res Function(_$_ShowErrorDialog) then) =
      __$$_ShowErrorDialogCopyWithImpl<$Res>;
  @useResult
  $Res call({HyphaError hyphaError});
}

/// @nodoc
class __$$_ShowErrorDialogCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_ShowErrorDialog>
    implements _$$_ShowErrorDialogCopyWith<$Res> {
  __$$_ShowErrorDialogCopyWithImpl(
      _$_ShowErrorDialog _value, $Res Function(_$_ShowErrorDialog) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hyphaError = null,
  }) {
    return _then(_$_ShowErrorDialog(
      null == hyphaError
          ? _value.hyphaError
          : hyphaError // ignore: cast_nullable_to_non_nullable
              as HyphaError,
    ));
  }
}

/// @nodoc

class _$_ShowErrorDialog implements _ShowErrorDialog {
  const _$_ShowErrorDialog(this.hyphaError);

  @override
  final HyphaError hyphaError;

  @override
  String toString() {
    return 'PageCommand.showErrorDialog(hyphaError: $hyphaError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowErrorDialog &&
            (identical(other.hyphaError, hyphaError) ||
                other.hyphaError == hyphaError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hyphaError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowErrorDialogCopyWith<_$_ShowErrorDialog> get copyWith =>
      __$$_ShowErrorDialogCopyWithImpl<_$_ShowErrorDialog>(this, _$identity);

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
      _$_ShowErrorDialog;

  HyphaError get hyphaError;
  @JsonKey(ignore: true)
  _$$_ShowErrorDialogCopyWith<_$_ShowErrorDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowErrorMessageCopyWith<$Res> {
  factory _$$_ShowErrorMessageCopyWith(
          _$_ShowErrorMessage value, $Res Function(_$_ShowErrorMessage) then) =
      __$$_ShowErrorMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ShowErrorMessageCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_ShowErrorMessage>
    implements _$$_ShowErrorMessageCopyWith<$Res> {
  __$$_ShowErrorMessageCopyWithImpl(
      _$_ShowErrorMessage _value, $Res Function(_$_ShowErrorMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ShowErrorMessage(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowErrorMessage implements _ShowErrorMessage {
  const _$_ShowErrorMessage(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PageCommand.showErrorMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowErrorMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowErrorMessageCopyWith<_$_ShowErrorMessage> get copyWith =>
      __$$_ShowErrorMessageCopyWithImpl<_$_ShowErrorMessage>(this, _$identity);

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
  const factory _ShowErrorMessage(final String message) = _$_ShowErrorMessage;

  String get message;
  @JsonKey(ignore: true)
  _$$_ShowErrorMessageCopyWith<_$_ShowErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
