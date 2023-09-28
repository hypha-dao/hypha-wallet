// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deeplink_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeeplinkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri link) incomingFirebaseDeepLink,
    required TResult Function(String link) incomingESRLink,
    required TResult Function() clearPageCommand,
    required TResult Function() clearInviteLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? incomingFirebaseDeepLink,
    TResult? Function(String link)? incomingESRLink,
    TResult? Function()? clearPageCommand,
    TResult? Function()? clearInviteLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? incomingFirebaseDeepLink,
    TResult Function(String link)? incomingESRLink,
    TResult Function()? clearPageCommand,
    TResult Function()? clearInviteLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingFirebaseDeepLink value)
        incomingFirebaseDeepLink,
    required TResult Function(_IncomingESRLink value) incomingESRLink,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_ClearInviteLink value) clearInviteLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingFirebaseDeepLink value)?
        incomingFirebaseDeepLink,
    TResult? Function(_IncomingESRLink value)? incomingESRLink,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_ClearInviteLink value)? clearInviteLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingFirebaseDeepLink value)? incomingFirebaseDeepLink,
    TResult Function(_IncomingESRLink value)? incomingESRLink,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_ClearInviteLink value)? clearInviteLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeeplinkEventCopyWith<$Res> {
  factory $DeeplinkEventCopyWith(
          DeeplinkEvent value, $Res Function(DeeplinkEvent) then) =
      _$DeeplinkEventCopyWithImpl<$Res, DeeplinkEvent>;
}

/// @nodoc
class _$DeeplinkEventCopyWithImpl<$Res, $Val extends DeeplinkEvent>
    implements $DeeplinkEventCopyWith<$Res> {
  _$DeeplinkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IncomingFirebaseDeepLinkCopyWith<$Res> {
  factory _$$_IncomingFirebaseDeepLinkCopyWith(
          _$_IncomingFirebaseDeepLink value,
          $Res Function(_$_IncomingFirebaseDeepLink) then) =
      __$$_IncomingFirebaseDeepLinkCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri link});
}

/// @nodoc
class __$$_IncomingFirebaseDeepLinkCopyWithImpl<$Res>
    extends _$DeeplinkEventCopyWithImpl<$Res, _$_IncomingFirebaseDeepLink>
    implements _$$_IncomingFirebaseDeepLinkCopyWith<$Res> {
  __$$_IncomingFirebaseDeepLinkCopyWithImpl(_$_IncomingFirebaseDeepLink _value,
      $Res Function(_$_IncomingFirebaseDeepLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$_IncomingFirebaseDeepLink(
      null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$_IncomingFirebaseDeepLink implements _IncomingFirebaseDeepLink {
  const _$_IncomingFirebaseDeepLink(this.link);

  @override
  final Uri link;

  @override
  String toString() {
    return 'DeeplinkEvent.incomingFirebaseDeepLink(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncomingFirebaseDeepLink &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncomingFirebaseDeepLinkCopyWith<_$_IncomingFirebaseDeepLink>
      get copyWith => __$$_IncomingFirebaseDeepLinkCopyWithImpl<
          _$_IncomingFirebaseDeepLink>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri link) incomingFirebaseDeepLink,
    required TResult Function(String link) incomingESRLink,
    required TResult Function() clearPageCommand,
    required TResult Function() clearInviteLink,
  }) {
    return incomingFirebaseDeepLink(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? incomingFirebaseDeepLink,
    TResult? Function(String link)? incomingESRLink,
    TResult? Function()? clearPageCommand,
    TResult? Function()? clearInviteLink,
  }) {
    return incomingFirebaseDeepLink?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? incomingFirebaseDeepLink,
    TResult Function(String link)? incomingESRLink,
    TResult Function()? clearPageCommand,
    TResult Function()? clearInviteLink,
    required TResult orElse(),
  }) {
    if (incomingFirebaseDeepLink != null) {
      return incomingFirebaseDeepLink(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingFirebaseDeepLink value)
        incomingFirebaseDeepLink,
    required TResult Function(_IncomingESRLink value) incomingESRLink,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_ClearInviteLink value) clearInviteLink,
  }) {
    return incomingFirebaseDeepLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingFirebaseDeepLink value)?
        incomingFirebaseDeepLink,
    TResult? Function(_IncomingESRLink value)? incomingESRLink,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_ClearInviteLink value)? clearInviteLink,
  }) {
    return incomingFirebaseDeepLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingFirebaseDeepLink value)? incomingFirebaseDeepLink,
    TResult Function(_IncomingESRLink value)? incomingESRLink,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_ClearInviteLink value)? clearInviteLink,
    required TResult orElse(),
  }) {
    if (incomingFirebaseDeepLink != null) {
      return incomingFirebaseDeepLink(this);
    }
    return orElse();
  }
}

abstract class _IncomingFirebaseDeepLink implements DeeplinkEvent {
  const factory _IncomingFirebaseDeepLink(final Uri link) =
      _$_IncomingFirebaseDeepLink;

  Uri get link;
  @JsonKey(ignore: true)
  _$$_IncomingFirebaseDeepLinkCopyWith<_$_IncomingFirebaseDeepLink>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IncomingESRLinkCopyWith<$Res> {
  factory _$$_IncomingESRLinkCopyWith(
          _$_IncomingESRLink value, $Res Function(_$_IncomingESRLink) then) =
      __$$_IncomingESRLinkCopyWithImpl<$Res>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$_IncomingESRLinkCopyWithImpl<$Res>
    extends _$DeeplinkEventCopyWithImpl<$Res, _$_IncomingESRLink>
    implements _$$_IncomingESRLinkCopyWith<$Res> {
  __$$_IncomingESRLinkCopyWithImpl(
      _$_IncomingESRLink _value, $Res Function(_$_IncomingESRLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$_IncomingESRLink(
      null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IncomingESRLink implements _IncomingESRLink {
  const _$_IncomingESRLink(this.link);

  @override
  final String link;

  @override
  String toString() {
    return 'DeeplinkEvent.incomingESRLink(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncomingESRLink &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncomingESRLinkCopyWith<_$_IncomingESRLink> get copyWith =>
      __$$_IncomingESRLinkCopyWithImpl<_$_IncomingESRLink>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri link) incomingFirebaseDeepLink,
    required TResult Function(String link) incomingESRLink,
    required TResult Function() clearPageCommand,
    required TResult Function() clearInviteLink,
  }) {
    return incomingESRLink(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? incomingFirebaseDeepLink,
    TResult? Function(String link)? incomingESRLink,
    TResult? Function()? clearPageCommand,
    TResult? Function()? clearInviteLink,
  }) {
    return incomingESRLink?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? incomingFirebaseDeepLink,
    TResult Function(String link)? incomingESRLink,
    TResult Function()? clearPageCommand,
    TResult Function()? clearInviteLink,
    required TResult orElse(),
  }) {
    if (incomingESRLink != null) {
      return incomingESRLink(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingFirebaseDeepLink value)
        incomingFirebaseDeepLink,
    required TResult Function(_IncomingESRLink value) incomingESRLink,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_ClearInviteLink value) clearInviteLink,
  }) {
    return incomingESRLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingFirebaseDeepLink value)?
        incomingFirebaseDeepLink,
    TResult? Function(_IncomingESRLink value)? incomingESRLink,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_ClearInviteLink value)? clearInviteLink,
  }) {
    return incomingESRLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingFirebaseDeepLink value)? incomingFirebaseDeepLink,
    TResult Function(_IncomingESRLink value)? incomingESRLink,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_ClearInviteLink value)? clearInviteLink,
    required TResult orElse(),
  }) {
    if (incomingESRLink != null) {
      return incomingESRLink(this);
    }
    return orElse();
  }
}

abstract class _IncomingESRLink implements DeeplinkEvent {
  const factory _IncomingESRLink(final String link) = _$_IncomingESRLink;

  String get link;
  @JsonKey(ignore: true)
  _$$_IncomingESRLinkCopyWith<_$_IncomingESRLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearPageCommandCopyWith<$Res> {
  factory _$$_ClearPageCommandCopyWith(
          _$_ClearPageCommand value, $Res Function(_$_ClearPageCommand) then) =
      __$$_ClearPageCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearPageCommandCopyWithImpl<$Res>
    extends _$DeeplinkEventCopyWithImpl<$Res, _$_ClearPageCommand>
    implements _$$_ClearPageCommandCopyWith<$Res> {
  __$$_ClearPageCommandCopyWithImpl(
      _$_ClearPageCommand _value, $Res Function(_$_ClearPageCommand) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearPageCommand implements _ClearPageCommand {
  const _$_ClearPageCommand();

  @override
  String toString() {
    return 'DeeplinkEvent.clearPageCommand()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearPageCommand);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri link) incomingFirebaseDeepLink,
    required TResult Function(String link) incomingESRLink,
    required TResult Function() clearPageCommand,
    required TResult Function() clearInviteLink,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? incomingFirebaseDeepLink,
    TResult? Function(String link)? incomingESRLink,
    TResult? Function()? clearPageCommand,
    TResult? Function()? clearInviteLink,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? incomingFirebaseDeepLink,
    TResult Function(String link)? incomingESRLink,
    TResult Function()? clearPageCommand,
    TResult Function()? clearInviteLink,
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
    required TResult Function(_IncomingFirebaseDeepLink value)
        incomingFirebaseDeepLink,
    required TResult Function(_IncomingESRLink value) incomingESRLink,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_ClearInviteLink value) clearInviteLink,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingFirebaseDeepLink value)?
        incomingFirebaseDeepLink,
    TResult? Function(_IncomingESRLink value)? incomingESRLink,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_ClearInviteLink value)? clearInviteLink,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingFirebaseDeepLink value)? incomingFirebaseDeepLink,
    TResult Function(_IncomingESRLink value)? incomingESRLink,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_ClearInviteLink value)? clearInviteLink,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements DeeplinkEvent {
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
abstract class _$$_ClearInviteLinkCopyWith<$Res> {
  factory _$$_ClearInviteLinkCopyWith(
          _$_ClearInviteLink value, $Res Function(_$_ClearInviteLink) then) =
      __$$_ClearInviteLinkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearInviteLinkCopyWithImpl<$Res>
    extends _$DeeplinkEventCopyWithImpl<$Res, _$_ClearInviteLink>
    implements _$$_ClearInviteLinkCopyWith<$Res> {
  __$$_ClearInviteLinkCopyWithImpl(
      _$_ClearInviteLink _value, $Res Function(_$_ClearInviteLink) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearInviteLink implements _ClearInviteLink {
  const _$_ClearInviteLink();

  @override
  String toString() {
    return 'DeeplinkEvent.clearInviteLink()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearInviteLink);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri link) incomingFirebaseDeepLink,
    required TResult Function(String link) incomingESRLink,
    required TResult Function() clearPageCommand,
    required TResult Function() clearInviteLink,
  }) {
    return clearInviteLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? incomingFirebaseDeepLink,
    TResult? Function(String link)? incomingESRLink,
    TResult? Function()? clearPageCommand,
    TResult? Function()? clearInviteLink,
  }) {
    return clearInviteLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? incomingFirebaseDeepLink,
    TResult Function(String link)? incomingESRLink,
    TResult Function()? clearPageCommand,
    TResult Function()? clearInviteLink,
    required TResult orElse(),
  }) {
    if (clearInviteLink != null) {
      return clearInviteLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingFirebaseDeepLink value)
        incomingFirebaseDeepLink,
    required TResult Function(_IncomingESRLink value) incomingESRLink,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_ClearInviteLink value) clearInviteLink,
  }) {
    return clearInviteLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingFirebaseDeepLink value)?
        incomingFirebaseDeepLink,
    TResult? Function(_IncomingESRLink value)? incomingESRLink,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_ClearInviteLink value)? clearInviteLink,
  }) {
    return clearInviteLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingFirebaseDeepLink value)? incomingFirebaseDeepLink,
    TResult Function(_IncomingESRLink value)? incomingESRLink,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_ClearInviteLink value)? clearInviteLink,
    required TResult orElse(),
  }) {
    if (clearInviteLink != null) {
      return clearInviteLink(this);
    }
    return orElse();
  }
}

abstract class _ClearInviteLink implements DeeplinkEvent {
  const factory _ClearInviteLink() = _$_ClearInviteLink;
}

/// @nodoc
mixin _$DeeplinkState {
  InviteLinkData? get inviteLinkData => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeeplinkStateCopyWith<DeeplinkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeeplinkStateCopyWith<$Res> {
  factory $DeeplinkStateCopyWith(
          DeeplinkState value, $Res Function(DeeplinkState) then) =
      _$DeeplinkStateCopyWithImpl<$Res, DeeplinkState>;
  @useResult
  $Res call({InviteLinkData? inviteLinkData, PageCommand? command});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$DeeplinkStateCopyWithImpl<$Res, $Val extends DeeplinkState>
    implements $DeeplinkStateCopyWith<$Res> {
  _$DeeplinkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteLinkData = freezed,
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      inviteLinkData: freezed == inviteLinkData
          ? _value.inviteLinkData
          : inviteLinkData // ignore: cast_nullable_to_non_nullable
              as InviteLinkData?,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ) as $Val);
  }

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
abstract class _$$_DeeplinkStateCopyWith<$Res>
    implements $DeeplinkStateCopyWith<$Res> {
  factory _$$_DeeplinkStateCopyWith(
          _$_DeeplinkState value, $Res Function(_$_DeeplinkState) then) =
      __$$_DeeplinkStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InviteLinkData? inviteLinkData, PageCommand? command});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$_DeeplinkStateCopyWithImpl<$Res>
    extends _$DeeplinkStateCopyWithImpl<$Res, _$_DeeplinkState>
    implements _$$_DeeplinkStateCopyWith<$Res> {
  __$$_DeeplinkStateCopyWithImpl(
      _$_DeeplinkState _value, $Res Function(_$_DeeplinkState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteLinkData = freezed,
    Object? command = freezed,
  }) {
    return _then(_$_DeeplinkState(
      inviteLinkData: freezed == inviteLinkData
          ? _value.inviteLinkData
          : inviteLinkData // ignore: cast_nullable_to_non_nullable
              as InviteLinkData?,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$_DeeplinkState implements _DeeplinkState {
  const _$_DeeplinkState({this.inviteLinkData, this.command});

  @override
  final InviteLinkData? inviteLinkData;
  @override
  final PageCommand? command;

  @override
  String toString() {
    return 'DeeplinkState(inviteLinkData: $inviteLinkData, command: $command)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeeplinkState &&
            (identical(other.inviteLinkData, inviteLinkData) ||
                other.inviteLinkData == inviteLinkData) &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inviteLinkData, command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeeplinkStateCopyWith<_$_DeeplinkState> get copyWith =>
      __$$_DeeplinkStateCopyWithImpl<_$_DeeplinkState>(this, _$identity);
}

abstract class _DeeplinkState implements DeeplinkState {
  const factory _DeeplinkState(
      {final InviteLinkData? inviteLinkData,
      final PageCommand? command}) = _$_DeeplinkState;

  @override
  InviteLinkData? get inviteLinkData;
  @override
  PageCommand? get command;
  @override
  @JsonKey(ignore: true)
  _$$_DeeplinkStateCopyWith<_$_DeeplinkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToCreateAccount,
    required TResult Function(String daoName, String daoId, String secret)
        showJoinDaoRationale,
    required TResult Function(ScanQrCodeResultData data)
        navigateToSignTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToCreateAccount,
    TResult? Function(String daoName, String daoId, String secret)?
        showJoinDaoRationale,
    TResult? Function(ScanQrCodeResultData data)? navigateToSignTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToCreateAccount,
    TResult Function(String daoName, String daoId, String secret)?
        showJoinDaoRationale,
    TResult Function(ScanQrCodeResultData data)? navigateToSignTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToCreateAccount value)
        navigateToCreateAccount,
    required TResult Function(_ShowJoinDaoRationale value) showJoinDaoRationale,
    required TResult Function(_ESRLinkNavigateToSignTransaction value)
        navigateToSignTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToCreateAccount value)? navigateToCreateAccount,
    TResult? Function(_ShowJoinDaoRationale value)? showJoinDaoRationale,
    TResult? Function(_ESRLinkNavigateToSignTransaction value)?
        navigateToSignTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToCreateAccount value)? navigateToCreateAccount,
    TResult Function(_ShowJoinDaoRationale value)? showJoinDaoRationale,
    TResult Function(_ESRLinkNavigateToSignTransaction value)?
        navigateToSignTransaction,
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
abstract class _$$_NavigateToCreateAccountCopyWith<$Res> {
  factory _$$_NavigateToCreateAccountCopyWith(_$_NavigateToCreateAccount value,
          $Res Function(_$_NavigateToCreateAccount) then) =
      __$$_NavigateToCreateAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NavigateToCreateAccountCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_NavigateToCreateAccount>
    implements _$$_NavigateToCreateAccountCopyWith<$Res> {
  __$$_NavigateToCreateAccountCopyWithImpl(_$_NavigateToCreateAccount _value,
      $Res Function(_$_NavigateToCreateAccount) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NavigateToCreateAccount implements _NavigateToCreateAccount {
  const _$_NavigateToCreateAccount();

  @override
  String toString() {
    return 'PageCommand.navigateToCreateAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigateToCreateAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToCreateAccount,
    required TResult Function(String daoName, String daoId, String secret)
        showJoinDaoRationale,
    required TResult Function(ScanQrCodeResultData data)
        navigateToSignTransaction,
  }) {
    return navigateToCreateAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToCreateAccount,
    TResult? Function(String daoName, String daoId, String secret)?
        showJoinDaoRationale,
    TResult? Function(ScanQrCodeResultData data)? navigateToSignTransaction,
  }) {
    return navigateToCreateAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToCreateAccount,
    TResult Function(String daoName, String daoId, String secret)?
        showJoinDaoRationale,
    TResult Function(ScanQrCodeResultData data)? navigateToSignTransaction,
    required TResult orElse(),
  }) {
    if (navigateToCreateAccount != null) {
      return navigateToCreateAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToCreateAccount value)
        navigateToCreateAccount,
    required TResult Function(_ShowJoinDaoRationale value) showJoinDaoRationale,
    required TResult Function(_ESRLinkNavigateToSignTransaction value)
        navigateToSignTransaction,
  }) {
    return navigateToCreateAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToCreateAccount value)? navigateToCreateAccount,
    TResult? Function(_ShowJoinDaoRationale value)? showJoinDaoRationale,
    TResult? Function(_ESRLinkNavigateToSignTransaction value)?
        navigateToSignTransaction,
  }) {
    return navigateToCreateAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToCreateAccount value)? navigateToCreateAccount,
    TResult Function(_ShowJoinDaoRationale value)? showJoinDaoRationale,
    TResult Function(_ESRLinkNavigateToSignTransaction value)?
        navigateToSignTransaction,
    required TResult orElse(),
  }) {
    if (navigateToCreateAccount != null) {
      return navigateToCreateAccount(this);
    }
    return orElse();
  }
}

abstract class _NavigateToCreateAccount implements PageCommand {
  const factory _NavigateToCreateAccount() = _$_NavigateToCreateAccount;
}

/// @nodoc
abstract class _$$_ShowJoinDaoRationaleCopyWith<$Res> {
  factory _$$_ShowJoinDaoRationaleCopyWith(_$_ShowJoinDaoRationale value,
          $Res Function(_$_ShowJoinDaoRationale) then) =
      __$$_ShowJoinDaoRationaleCopyWithImpl<$Res>;
  @useResult
  $Res call({String daoName, String daoId, String secret});
}

/// @nodoc
class __$$_ShowJoinDaoRationaleCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_ShowJoinDaoRationale>
    implements _$$_ShowJoinDaoRationaleCopyWith<$Res> {
  __$$_ShowJoinDaoRationaleCopyWithImpl(_$_ShowJoinDaoRationale _value,
      $Res Function(_$_ShowJoinDaoRationale) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daoName = null,
    Object? daoId = null,
    Object? secret = null,
  }) {
    return _then(_$_ShowJoinDaoRationale(
      null == daoName
          ? _value.daoName
          : daoName // ignore: cast_nullable_to_non_nullable
              as String,
      null == daoId
          ? _value.daoId
          : daoId // ignore: cast_nullable_to_non_nullable
              as String,
      null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowJoinDaoRationale implements _ShowJoinDaoRationale {
  const _$_ShowJoinDaoRationale(this.daoName, this.daoId, this.secret);

  @override
  final String daoName;
  @override
  final String daoId;
  @override
  final String secret;

  @override
  String toString() {
    return 'PageCommand.showJoinDaoRationale(daoName: $daoName, daoId: $daoId, secret: $secret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowJoinDaoRationale &&
            (identical(other.daoName, daoName) || other.daoName == daoName) &&
            (identical(other.daoId, daoId) || other.daoId == daoId) &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @override
  int get hashCode => Object.hash(runtimeType, daoName, daoId, secret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowJoinDaoRationaleCopyWith<_$_ShowJoinDaoRationale> get copyWith =>
      __$$_ShowJoinDaoRationaleCopyWithImpl<_$_ShowJoinDaoRationale>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToCreateAccount,
    required TResult Function(String daoName, String daoId, String secret)
        showJoinDaoRationale,
    required TResult Function(ScanQrCodeResultData data)
        navigateToSignTransaction,
  }) {
    return showJoinDaoRationale(daoName, daoId, secret);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToCreateAccount,
    TResult? Function(String daoName, String daoId, String secret)?
        showJoinDaoRationale,
    TResult? Function(ScanQrCodeResultData data)? navigateToSignTransaction,
  }) {
    return showJoinDaoRationale?.call(daoName, daoId, secret);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToCreateAccount,
    TResult Function(String daoName, String daoId, String secret)?
        showJoinDaoRationale,
    TResult Function(ScanQrCodeResultData data)? navigateToSignTransaction,
    required TResult orElse(),
  }) {
    if (showJoinDaoRationale != null) {
      return showJoinDaoRationale(daoName, daoId, secret);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToCreateAccount value)
        navigateToCreateAccount,
    required TResult Function(_ShowJoinDaoRationale value) showJoinDaoRationale,
    required TResult Function(_ESRLinkNavigateToSignTransaction value)
        navigateToSignTransaction,
  }) {
    return showJoinDaoRationale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToCreateAccount value)? navigateToCreateAccount,
    TResult? Function(_ShowJoinDaoRationale value)? showJoinDaoRationale,
    TResult? Function(_ESRLinkNavigateToSignTransaction value)?
        navigateToSignTransaction,
  }) {
    return showJoinDaoRationale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToCreateAccount value)? navigateToCreateAccount,
    TResult Function(_ShowJoinDaoRationale value)? showJoinDaoRationale,
    TResult Function(_ESRLinkNavigateToSignTransaction value)?
        navigateToSignTransaction,
    required TResult orElse(),
  }) {
    if (showJoinDaoRationale != null) {
      return showJoinDaoRationale(this);
    }
    return orElse();
  }
}

abstract class _ShowJoinDaoRationale implements PageCommand {
  const factory _ShowJoinDaoRationale(
          final String daoName, final String daoId, final String secret) =
      _$_ShowJoinDaoRationale;

  String get daoName;
  String get daoId;
  String get secret;
  @JsonKey(ignore: true)
  _$$_ShowJoinDaoRationaleCopyWith<_$_ShowJoinDaoRationale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ESRLinkNavigateToSignTransactionCopyWith<$Res> {
  factory _$$_ESRLinkNavigateToSignTransactionCopyWith(
          _$_ESRLinkNavigateToSignTransaction value,
          $Res Function(_$_ESRLinkNavigateToSignTransaction) then) =
      __$$_ESRLinkNavigateToSignTransactionCopyWithImpl<$Res>;
  @useResult
  $Res call({ScanQrCodeResultData data});
}

/// @nodoc
class __$$_ESRLinkNavigateToSignTransactionCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_ESRLinkNavigateToSignTransaction>
    implements _$$_ESRLinkNavigateToSignTransactionCopyWith<$Res> {
  __$$_ESRLinkNavigateToSignTransactionCopyWithImpl(
      _$_ESRLinkNavigateToSignTransaction _value,
      $Res Function(_$_ESRLinkNavigateToSignTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ESRLinkNavigateToSignTransaction(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ScanQrCodeResultData,
    ));
  }
}

/// @nodoc

class _$_ESRLinkNavigateToSignTransaction
    implements _ESRLinkNavigateToSignTransaction {
  const _$_ESRLinkNavigateToSignTransaction(this.data);

  @override
  final ScanQrCodeResultData data;

  @override
  String toString() {
    return 'PageCommand.navigateToSignTransaction(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ESRLinkNavigateToSignTransaction &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ESRLinkNavigateToSignTransactionCopyWith<
          _$_ESRLinkNavigateToSignTransaction>
      get copyWith => __$$_ESRLinkNavigateToSignTransactionCopyWithImpl<
          _$_ESRLinkNavigateToSignTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToCreateAccount,
    required TResult Function(String daoName, String daoId, String secret)
        showJoinDaoRationale,
    required TResult Function(ScanQrCodeResultData data)
        navigateToSignTransaction,
  }) {
    return navigateToSignTransaction(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToCreateAccount,
    TResult? Function(String daoName, String daoId, String secret)?
        showJoinDaoRationale,
    TResult? Function(ScanQrCodeResultData data)? navigateToSignTransaction,
  }) {
    return navigateToSignTransaction?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToCreateAccount,
    TResult Function(String daoName, String daoId, String secret)?
        showJoinDaoRationale,
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
    required TResult Function(_NavigateToCreateAccount value)
        navigateToCreateAccount,
    required TResult Function(_ShowJoinDaoRationale value) showJoinDaoRationale,
    required TResult Function(_ESRLinkNavigateToSignTransaction value)
        navigateToSignTransaction,
  }) {
    return navigateToSignTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToCreateAccount value)? navigateToCreateAccount,
    TResult? Function(_ShowJoinDaoRationale value)? showJoinDaoRationale,
    TResult? Function(_ESRLinkNavigateToSignTransaction value)?
        navigateToSignTransaction,
  }) {
    return navigateToSignTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToCreateAccount value)? navigateToCreateAccount,
    TResult Function(_ShowJoinDaoRationale value)? showJoinDaoRationale,
    TResult Function(_ESRLinkNavigateToSignTransaction value)?
        navigateToSignTransaction,
    required TResult orElse(),
  }) {
    if (navigateToSignTransaction != null) {
      return navigateToSignTransaction(this);
    }
    return orElse();
  }
}

abstract class _ESRLinkNavigateToSignTransaction implements PageCommand {
  const factory _ESRLinkNavigateToSignTransaction(
      final ScanQrCodeResultData data) = _$_ESRLinkNavigateToSignTransaction;

  ScanQrCodeResultData get data;
  @JsonKey(ignore: true)
  _$$_ESRLinkNavigateToSignTransactionCopyWith<
          _$_ESRLinkNavigateToSignTransaction>
      get copyWith => throw _privateConstructorUsedError;
}
