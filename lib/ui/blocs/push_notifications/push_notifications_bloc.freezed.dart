// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PageCommand {
  ScanQrCodeResultData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScanQrCodeResultData data)
        navigateToSignTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScanQrCodeResultData data)? navigateToSignTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScanQrCodeResultData data)? navigateToSignTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToSignTransaction value)
        navigateToSignTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToSignTransaction value)?
        navigateToSignTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToSignTransaction value)?
        navigateToSignTransaction,
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
abstract class _$$NavigateToSignTransactionImplCopyWith<$Res>
    implements $PageCommandCopyWith<$Res> {
  factory _$$NavigateToSignTransactionImplCopyWith(
          _$NavigateToSignTransactionImpl value,
          $Res Function(_$NavigateToSignTransactionImpl) then) =
      __$$NavigateToSignTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScanQrCodeResultData data});
}

/// @nodoc
class __$$NavigateToSignTransactionImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToSignTransactionImpl>
    implements _$$NavigateToSignTransactionImplCopyWith<$Res> {
  __$$NavigateToSignTransactionImplCopyWithImpl(
      _$NavigateToSignTransactionImpl _value,
      $Res Function(_$NavigateToSignTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$NavigateToSignTransactionImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ScanQrCodeResultData,
    ));
  }
}

/// @nodoc

class _$NavigateToSignTransactionImpl implements _NavigateToSignTransaction {
  const _$NavigateToSignTransactionImpl(this.data);

  @override
  final ScanQrCodeResultData data;

  @override
  String toString() {
    return 'PageCommand.navigateToSignTransaction(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToSignTransactionImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToSignTransactionImplCopyWith<_$NavigateToSignTransactionImpl>
      get copyWith => __$$NavigateToSignTransactionImplCopyWithImpl<
          _$NavigateToSignTransactionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScanQrCodeResultData data)
        navigateToSignTransaction,
  }) {
    return navigateToSignTransaction(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ScanQrCodeResultData data)? navigateToSignTransaction,
  }) {
    return navigateToSignTransaction?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScanQrCodeResultData data)? navigateToSignTransaction,
    required TResult orElse(),
  }) {
    if (navigateToSignTransaction != null) {
      return navigateToSignTransaction(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToSignTransaction value)
        navigateToSignTransaction,
  }) {
    return navigateToSignTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToSignTransaction value)?
        navigateToSignTransaction,
  }) {
    return navigateToSignTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToSignTransaction value)?
        navigateToSignTransaction,
    required TResult orElse(),
  }) {
    if (navigateToSignTransaction != null) {
      return navigateToSignTransaction(this);
    }
    return orElse();
  }
}

abstract class _NavigateToSignTransaction implements PageCommand {
  const factory _NavigateToSignTransaction(final ScanQrCodeResultData data) =
      _$NavigateToSignTransactionImpl;

  @override
  ScanQrCodeResultData get data;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToSignTransactionImplCopyWith<_$NavigateToSignTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PushNotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clearPageCommand,
    required TResult Function(RemoteMessage message, bool isBackground)
        onMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clearPageCommand,
    TResult? Function(RemoteMessage message, bool isBackground)?
        onMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clearPageCommand,
    TResult Function(RemoteMessage message, bool isBackground)?
        onMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnMessageReceived value) onMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnMessageReceived value)? onMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnMessageReceived value)? onMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationsEventCopyWith<$Res> {
  factory $PushNotificationsEventCopyWith(PushNotificationsEvent value,
          $Res Function(PushNotificationsEvent) then) =
      _$PushNotificationsEventCopyWithImpl<$Res, PushNotificationsEvent>;
}

/// @nodoc
class _$PushNotificationsEventCopyWithImpl<$Res,
        $Val extends PushNotificationsEvent>
    implements $PushNotificationsEventCopyWith<$Res> {
  _$PushNotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PushNotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClearPageCommandImplCopyWith<$Res> {
  factory _$$ClearPageCommandImplCopyWith(_$ClearPageCommandImpl value,
          $Res Function(_$ClearPageCommandImpl) then) =
      __$$ClearPageCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPageCommandImplCopyWithImpl<$Res>
    extends _$PushNotificationsEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of PushNotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'PushNotificationsEvent.clearPageCommand()';
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
    required TResult Function() clearPageCommand,
    required TResult Function(RemoteMessage message, bool isBackground)
        onMessageReceived,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clearPageCommand,
    TResult? Function(RemoteMessage message, bool isBackground)?
        onMessageReceived,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clearPageCommand,
    TResult Function(RemoteMessage message, bool isBackground)?
        onMessageReceived,
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
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnMessageReceived value) onMessageReceived,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnMessageReceived value)? onMessageReceived,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnMessageReceived value)? onMessageReceived,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements PushNotificationsEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$OnMessageReceivedImplCopyWith<$Res> {
  factory _$$OnMessageReceivedImplCopyWith(_$OnMessageReceivedImpl value,
          $Res Function(_$OnMessageReceivedImpl) then) =
      __$$OnMessageReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteMessage message, bool isBackground});
}

/// @nodoc
class __$$OnMessageReceivedImplCopyWithImpl<$Res>
    extends _$PushNotificationsEventCopyWithImpl<$Res, _$OnMessageReceivedImpl>
    implements _$$OnMessageReceivedImplCopyWith<$Res> {
  __$$OnMessageReceivedImplCopyWithImpl(_$OnMessageReceivedImpl _value,
      $Res Function(_$OnMessageReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PushNotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isBackground = null,
  }) {
    return _then(_$OnMessageReceivedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RemoteMessage,
      null == isBackground
          ? _value.isBackground
          : isBackground // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnMessageReceivedImpl implements _OnMessageReceived {
  const _$OnMessageReceivedImpl(this.message, this.isBackground);

  @override
  final RemoteMessage message;
  @override
  final bool isBackground;

  @override
  String toString() {
    return 'PushNotificationsEvent.onMessageReceived(message: $message, isBackground: $isBackground)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMessageReceivedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isBackground, isBackground) ||
                other.isBackground == isBackground));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isBackground);

  /// Create a copy of PushNotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMessageReceivedImplCopyWith<_$OnMessageReceivedImpl> get copyWith =>
      __$$OnMessageReceivedImplCopyWithImpl<_$OnMessageReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clearPageCommand,
    required TResult Function(RemoteMessage message, bool isBackground)
        onMessageReceived,
  }) {
    return onMessageReceived(message, isBackground);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clearPageCommand,
    TResult? Function(RemoteMessage message, bool isBackground)?
        onMessageReceived,
  }) {
    return onMessageReceived?.call(message, isBackground);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clearPageCommand,
    TResult Function(RemoteMessage message, bool isBackground)?
        onMessageReceived,
    required TResult orElse(),
  }) {
    if (onMessageReceived != null) {
      return onMessageReceived(message, isBackground);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnMessageReceived value) onMessageReceived,
  }) {
    return onMessageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnMessageReceived value)? onMessageReceived,
  }) {
    return onMessageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnMessageReceived value)? onMessageReceived,
    required TResult orElse(),
  }) {
    if (onMessageReceived != null) {
      return onMessageReceived(this);
    }
    return orElse();
  }
}

abstract class _OnMessageReceived implements PushNotificationsEvent {
  const factory _OnMessageReceived(
          final RemoteMessage message, final bool isBackground) =
      _$OnMessageReceivedImpl;

  RemoteMessage get message;
  bool get isBackground;

  /// Create a copy of PushNotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnMessageReceivedImplCopyWith<_$OnMessageReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PushNotificationsState {
  PageCommand? get command => throw _privateConstructorUsedError;

  /// Create a copy of PushNotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PushNotificationsStateCopyWith<PushNotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationsStateCopyWith<$Res> {
  factory $PushNotificationsStateCopyWith(PushNotificationsState value,
          $Res Function(PushNotificationsState) then) =
      _$PushNotificationsStateCopyWithImpl<$Res, PushNotificationsState>;
  @useResult
  $Res call({PageCommand? command});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$PushNotificationsStateCopyWithImpl<$Res,
        $Val extends PushNotificationsState>
    implements $PushNotificationsStateCopyWith<$Res> {
  _$PushNotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PushNotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ) as $Val);
  }

  /// Create a copy of PushNotificationsState
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
abstract class _$$PushNotificationsStateImplCopyWith<$Res>
    implements $PushNotificationsStateCopyWith<$Res> {
  factory _$$PushNotificationsStateImplCopyWith(
          _$PushNotificationsStateImpl value,
          $Res Function(_$PushNotificationsStateImpl) then) =
      __$$PushNotificationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageCommand? command});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$PushNotificationsStateImplCopyWithImpl<$Res>
    extends _$PushNotificationsStateCopyWithImpl<$Res,
        _$PushNotificationsStateImpl>
    implements _$$PushNotificationsStateImplCopyWith<$Res> {
  __$$PushNotificationsStateImplCopyWithImpl(
      _$PushNotificationsStateImpl _value,
      $Res Function(_$PushNotificationsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PushNotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = freezed,
  }) {
    return _then(_$PushNotificationsStateImpl(
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$PushNotificationsStateImpl implements _PushNotificationsState {
  const _$PushNotificationsStateImpl({this.command});

  @override
  final PageCommand? command;

  @override
  String toString() {
    return 'PushNotificationsState(command: $command)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushNotificationsStateImpl &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, command);

  /// Create a copy of PushNotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PushNotificationsStateImplCopyWith<_$PushNotificationsStateImpl>
      get copyWith => __$$PushNotificationsStateImplCopyWithImpl<
          _$PushNotificationsStateImpl>(this, _$identity);
}

abstract class _PushNotificationsState implements PushNotificationsState {
  const factory _PushNotificationsState({final PageCommand? command}) =
      _$PushNotificationsStateImpl;

  @override
  PageCommand? get command;

  /// Create a copy of PushNotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PushNotificationsStateImplCopyWith<_$PushNotificationsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
