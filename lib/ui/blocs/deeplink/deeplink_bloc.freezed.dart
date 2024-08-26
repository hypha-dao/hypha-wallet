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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of DeeplinkEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IncomingFirebaseDeepLinkImplCopyWith<$Res> {
  factory _$$IncomingFirebaseDeepLinkImplCopyWith(
          _$IncomingFirebaseDeepLinkImpl value,
          $Res Function(_$IncomingFirebaseDeepLinkImpl) then) =
      __$$IncomingFirebaseDeepLinkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri link});
}

/// @nodoc
class __$$IncomingFirebaseDeepLinkImplCopyWithImpl<$Res>
    extends _$DeeplinkEventCopyWithImpl<$Res, _$IncomingFirebaseDeepLinkImpl>
    implements _$$IncomingFirebaseDeepLinkImplCopyWith<$Res> {
  __$$IncomingFirebaseDeepLinkImplCopyWithImpl(
      _$IncomingFirebaseDeepLinkImpl _value,
      $Res Function(_$IncomingFirebaseDeepLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeeplinkEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$IncomingFirebaseDeepLinkImpl(
      null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$IncomingFirebaseDeepLinkImpl implements _IncomingFirebaseDeepLink {
  const _$IncomingFirebaseDeepLinkImpl(this.link);

  @override
  final Uri link;

  @override
  String toString() {
    return 'DeeplinkEvent.incomingFirebaseDeepLink(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomingFirebaseDeepLinkImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  /// Create a copy of DeeplinkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomingFirebaseDeepLinkImplCopyWith<_$IncomingFirebaseDeepLinkImpl>
      get copyWith => __$$IncomingFirebaseDeepLinkImplCopyWithImpl<
          _$IncomingFirebaseDeepLinkImpl>(this, _$identity);

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
      _$IncomingFirebaseDeepLinkImpl;

  Uri get link;

  /// Create a copy of DeeplinkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncomingFirebaseDeepLinkImplCopyWith<_$IncomingFirebaseDeepLinkImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncomingESRLinkImplCopyWith<$Res> {
  factory _$$IncomingESRLinkImplCopyWith(_$IncomingESRLinkImpl value,
          $Res Function(_$IncomingESRLinkImpl) then) =
      __$$IncomingESRLinkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$IncomingESRLinkImplCopyWithImpl<$Res>
    extends _$DeeplinkEventCopyWithImpl<$Res, _$IncomingESRLinkImpl>
    implements _$$IncomingESRLinkImplCopyWith<$Res> {
  __$$IncomingESRLinkImplCopyWithImpl(
      _$IncomingESRLinkImpl _value, $Res Function(_$IncomingESRLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeeplinkEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$IncomingESRLinkImpl(
      null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IncomingESRLinkImpl implements _IncomingESRLink {
  const _$IncomingESRLinkImpl(this.link);

  @override
  final String link;

  @override
  String toString() {
    return 'DeeplinkEvent.incomingESRLink(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomingESRLinkImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  /// Create a copy of DeeplinkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomingESRLinkImplCopyWith<_$IncomingESRLinkImpl> get copyWith =>
      __$$IncomingESRLinkImplCopyWithImpl<_$IncomingESRLinkImpl>(
          this, _$identity);

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
  const factory _IncomingESRLink(final String link) = _$IncomingESRLinkImpl;

  String get link;

  /// Create a copy of DeeplinkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncomingESRLinkImplCopyWith<_$IncomingESRLinkImpl> get copyWith =>
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
    extends _$DeeplinkEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeeplinkEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'DeeplinkEvent.clearPageCommand()';
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
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$ClearInviteLinkImplCopyWith<$Res> {
  factory _$$ClearInviteLinkImplCopyWith(_$ClearInviteLinkImpl value,
          $Res Function(_$ClearInviteLinkImpl) then) =
      __$$ClearInviteLinkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearInviteLinkImplCopyWithImpl<$Res>
    extends _$DeeplinkEventCopyWithImpl<$Res, _$ClearInviteLinkImpl>
    implements _$$ClearInviteLinkImplCopyWith<$Res> {
  __$$ClearInviteLinkImplCopyWithImpl(
      _$ClearInviteLinkImpl _value, $Res Function(_$ClearInviteLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeeplinkEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearInviteLinkImpl implements _ClearInviteLink {
  const _$ClearInviteLinkImpl();

  @override
  String toString() {
    return 'DeeplinkEvent.clearInviteLink()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearInviteLinkImpl);
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
  const factory _ClearInviteLink() = _$ClearInviteLinkImpl;
}

/// @nodoc
mixin _$DeeplinkState {
  InviteLinkData? get inviteLinkData => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  /// Create a copy of DeeplinkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of DeeplinkState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of DeeplinkState
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
abstract class _$$DeeplinkStateImplCopyWith<$Res>
    implements $DeeplinkStateCopyWith<$Res> {
  factory _$$DeeplinkStateImplCopyWith(
          _$DeeplinkStateImpl value, $Res Function(_$DeeplinkStateImpl) then) =
      __$$DeeplinkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InviteLinkData? inviteLinkData, PageCommand? command});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$DeeplinkStateImplCopyWithImpl<$Res>
    extends _$DeeplinkStateCopyWithImpl<$Res, _$DeeplinkStateImpl>
    implements _$$DeeplinkStateImplCopyWith<$Res> {
  __$$DeeplinkStateImplCopyWithImpl(
      _$DeeplinkStateImpl _value, $Res Function(_$DeeplinkStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeeplinkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteLinkData = freezed,
    Object? command = freezed,
  }) {
    return _then(_$DeeplinkStateImpl(
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

class _$DeeplinkStateImpl implements _DeeplinkState {
  const _$DeeplinkStateImpl({this.inviteLinkData, this.command});

  @override
  final InviteLinkData? inviteLinkData;
  @override
  final PageCommand? command;

  @override
  String toString() {
    return 'DeeplinkState(inviteLinkData: $inviteLinkData, command: $command)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeeplinkStateImpl &&
            (identical(other.inviteLinkData, inviteLinkData) ||
                other.inviteLinkData == inviteLinkData) &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inviteLinkData, command);

  /// Create a copy of DeeplinkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeeplinkStateImplCopyWith<_$DeeplinkStateImpl> get copyWith =>
      __$$DeeplinkStateImplCopyWithImpl<_$DeeplinkStateImpl>(this, _$identity);
}

abstract class _DeeplinkState implements DeeplinkState {
  const factory _DeeplinkState(
      {final InviteLinkData? inviteLinkData,
      final PageCommand? command}) = _$DeeplinkStateImpl;

  @override
  InviteLinkData? get inviteLinkData;
  @override
  PageCommand? get command;

  /// Create a copy of DeeplinkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeeplinkStateImplCopyWith<_$DeeplinkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToCreateAccount,
    required TResult Function(InviteLinkData inviteLinkData)
        showJoinDaoRationale,
    required TResult Function(ScanQrCodeResultData data)
        navigateToSignTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToCreateAccount,
    TResult? Function(InviteLinkData inviteLinkData)? showJoinDaoRationale,
    TResult? Function(ScanQrCodeResultData data)? navigateToSignTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToCreateAccount,
    TResult Function(InviteLinkData inviteLinkData)? showJoinDaoRationale,
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

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NavigateToCreateAccountImplCopyWith<$Res> {
  factory _$$NavigateToCreateAccountImplCopyWith(
          _$NavigateToCreateAccountImpl value,
          $Res Function(_$NavigateToCreateAccountImpl) then) =
      __$$NavigateToCreateAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToCreateAccountImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToCreateAccountImpl>
    implements _$$NavigateToCreateAccountImplCopyWith<$Res> {
  __$$NavigateToCreateAccountImplCopyWithImpl(
      _$NavigateToCreateAccountImpl _value,
      $Res Function(_$NavigateToCreateAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateToCreateAccountImpl implements _NavigateToCreateAccount {
  const _$NavigateToCreateAccountImpl();

  @override
  String toString() {
    return 'PageCommand.navigateToCreateAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToCreateAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToCreateAccount,
    required TResult Function(InviteLinkData inviteLinkData)
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
    TResult? Function(InviteLinkData inviteLinkData)? showJoinDaoRationale,
    TResult? Function(ScanQrCodeResultData data)? navigateToSignTransaction,
  }) {
    return navigateToCreateAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToCreateAccount,
    TResult Function(InviteLinkData inviteLinkData)? showJoinDaoRationale,
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
  const factory _NavigateToCreateAccount() = _$NavigateToCreateAccountImpl;
}

/// @nodoc
abstract class _$$ShowJoinDaoRationaleImplCopyWith<$Res> {
  factory _$$ShowJoinDaoRationaleImplCopyWith(_$ShowJoinDaoRationaleImpl value,
          $Res Function(_$ShowJoinDaoRationaleImpl) then) =
      __$$ShowJoinDaoRationaleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InviteLinkData inviteLinkData});
}

/// @nodoc
class __$$ShowJoinDaoRationaleImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$ShowJoinDaoRationaleImpl>
    implements _$$ShowJoinDaoRationaleImplCopyWith<$Res> {
  __$$ShowJoinDaoRationaleImplCopyWithImpl(_$ShowJoinDaoRationaleImpl _value,
      $Res Function(_$ShowJoinDaoRationaleImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteLinkData = null,
  }) {
    return _then(_$ShowJoinDaoRationaleImpl(
      null == inviteLinkData
          ? _value.inviteLinkData
          : inviteLinkData // ignore: cast_nullable_to_non_nullable
              as InviteLinkData,
    ));
  }
}

/// @nodoc

class _$ShowJoinDaoRationaleImpl implements _ShowJoinDaoRationale {
  const _$ShowJoinDaoRationaleImpl(this.inviteLinkData);

  @override
  final InviteLinkData inviteLinkData;

  @override
  String toString() {
    return 'PageCommand.showJoinDaoRationale(inviteLinkData: $inviteLinkData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowJoinDaoRationaleImpl &&
            (identical(other.inviteLinkData, inviteLinkData) ||
                other.inviteLinkData == inviteLinkData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inviteLinkData);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowJoinDaoRationaleImplCopyWith<_$ShowJoinDaoRationaleImpl>
      get copyWith =>
          __$$ShowJoinDaoRationaleImplCopyWithImpl<_$ShowJoinDaoRationaleImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToCreateAccount,
    required TResult Function(InviteLinkData inviteLinkData)
        showJoinDaoRationale,
    required TResult Function(ScanQrCodeResultData data)
        navigateToSignTransaction,
  }) {
    return showJoinDaoRationale(inviteLinkData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToCreateAccount,
    TResult? Function(InviteLinkData inviteLinkData)? showJoinDaoRationale,
    TResult? Function(ScanQrCodeResultData data)? navigateToSignTransaction,
  }) {
    return showJoinDaoRationale?.call(inviteLinkData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToCreateAccount,
    TResult Function(InviteLinkData inviteLinkData)? showJoinDaoRationale,
    TResult Function(ScanQrCodeResultData data)? navigateToSignTransaction,
    required TResult orElse(),
  }) {
    if (showJoinDaoRationale != null) {
      return showJoinDaoRationale(inviteLinkData);
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
  const factory _ShowJoinDaoRationale(final InviteLinkData inviteLinkData) =
      _$ShowJoinDaoRationaleImpl;

  InviteLinkData get inviteLinkData;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowJoinDaoRationaleImplCopyWith<_$ShowJoinDaoRationaleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ESRLinkNavigateToSignTransactionImplCopyWith<$Res> {
  factory _$$ESRLinkNavigateToSignTransactionImplCopyWith(
          _$ESRLinkNavigateToSignTransactionImpl value,
          $Res Function(_$ESRLinkNavigateToSignTransactionImpl) then) =
      __$$ESRLinkNavigateToSignTransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ScanQrCodeResultData data});
}

/// @nodoc
class __$$ESRLinkNavigateToSignTransactionImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res,
        _$ESRLinkNavigateToSignTransactionImpl>
    implements _$$ESRLinkNavigateToSignTransactionImplCopyWith<$Res> {
  __$$ESRLinkNavigateToSignTransactionImplCopyWithImpl(
      _$ESRLinkNavigateToSignTransactionImpl _value,
      $Res Function(_$ESRLinkNavigateToSignTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ESRLinkNavigateToSignTransactionImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ScanQrCodeResultData,
    ));
  }
}

/// @nodoc

class _$ESRLinkNavigateToSignTransactionImpl
    implements _ESRLinkNavigateToSignTransaction {
  const _$ESRLinkNavigateToSignTransactionImpl(this.data);

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
            other is _$ESRLinkNavigateToSignTransactionImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ESRLinkNavigateToSignTransactionImplCopyWith<
          _$ESRLinkNavigateToSignTransactionImpl>
      get copyWith => __$$ESRLinkNavigateToSignTransactionImplCopyWithImpl<
          _$ESRLinkNavigateToSignTransactionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToCreateAccount,
    required TResult Function(InviteLinkData inviteLinkData)
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
    TResult? Function(InviteLinkData inviteLinkData)? showJoinDaoRationale,
    TResult? Function(ScanQrCodeResultData data)? navigateToSignTransaction,
  }) {
    return navigateToSignTransaction?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToCreateAccount,
    TResult Function(InviteLinkData inviteLinkData)? showJoinDaoRationale,
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
      final ScanQrCodeResultData data) = _$ESRLinkNavigateToSignTransactionImpl;

  ScanQrCodeResultData get data;

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ESRLinkNavigateToSignTransactionImplCopyWith<
          _$ESRLinkNavigateToSignTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
