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
    required TResult Function() clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? incomingFirebaseDeepLink,
    TResult? Function()? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? incomingFirebaseDeepLink,
    TResult Function()? clearPageCommand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingFirebaseDeepLink value)
        incomingFirebaseDeepLink,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingFirebaseDeepLink value)?
        incomingFirebaseDeepLink,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingFirebaseDeepLink value)? incomingFirebaseDeepLink,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
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
    required TResult Function() clearPageCommand,
  }) {
    return incomingFirebaseDeepLink(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? incomingFirebaseDeepLink,
    TResult? Function()? clearPageCommand,
  }) {
    return incomingFirebaseDeepLink?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? incomingFirebaseDeepLink,
    TResult Function()? clearPageCommand,
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
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return incomingFirebaseDeepLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingFirebaseDeepLink value)?
        incomingFirebaseDeepLink,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return incomingFirebaseDeepLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingFirebaseDeepLink value)? incomingFirebaseDeepLink,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
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
    required TResult Function() clearPageCommand,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? incomingFirebaseDeepLink,
    TResult? Function()? clearPageCommand,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? incomingFirebaseDeepLink,
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
    required TResult Function(_IncomingFirebaseDeepLink value)
        incomingFirebaseDeepLink,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingFirebaseDeepLink value)?
        incomingFirebaseDeepLink,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingFirebaseDeepLink value)? incomingFirebaseDeepLink,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
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
mixin _$DeeplinkState {
  String? get link => throw _privateConstructorUsedError;
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
  $Res call({String? link, PageCommand? command});

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
    Object? link = freezed,
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String? link, PageCommand? command});

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
    Object? link = freezed,
    Object? command = freezed,
  }) {
    return _then(_$_DeeplinkState(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$_DeeplinkState implements _DeeplinkState {
  const _$_DeeplinkState({this.link, this.command});

  @override
  final String? link;
  @override
  final PageCommand? command;

  @override
  String toString() {
    return 'DeeplinkState(link: $link, command: $command)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeeplinkState &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link, command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeeplinkStateCopyWith<_$_DeeplinkState> get copyWith =>
      __$$_DeeplinkStateCopyWithImpl<_$_DeeplinkState>(this, _$identity);
}

abstract class _DeeplinkState implements DeeplinkState {
  const factory _DeeplinkState(
      {final String? link, final PageCommand? command}) = _$_DeeplinkState;

  @override
  String? get link;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToCreateAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToCreateAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToCreateAccount value)
        navigateToCreateAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToCreateAccount value)? navigateToCreateAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToCreateAccount value)? navigateToCreateAccount,
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
  }) {
    return navigateToCreateAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToCreateAccount,
  }) {
    return navigateToCreateAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToCreateAccount,
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
  }) {
    return navigateToCreateAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToCreateAccount value)? navigateToCreateAccount,
  }) {
    return navigateToCreateAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToCreateAccount value)? navigateToCreateAccount,
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
