// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Network network) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InviteLinkData inviteLinkData) onNextTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Network network)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InviteLinkData inviteLinkData)? onNextTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Network network)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InviteLinkData inviteLinkData)? onNextTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnNextTapped value) onNextTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnNextTapped value)? onNextTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnNextTapped value)? onNextTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountEventCopyWith<$Res> {
  factory $CreateAccountEventCopyWith(
          CreateAccountEvent value, $Res Function(CreateAccountEvent) then) =
      _$CreateAccountEventCopyWithImpl<$Res, CreateAccountEvent>;
}

/// @nodoc
class _$CreateAccountEventCopyWithImpl<$Res, $Val extends CreateAccountEvent>
    implements $CreateAccountEventCopyWith<$Res> {
  _$CreateAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Network network});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? network = null,
  }) {
    return _then(_$InitialImpl(
      null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as Network,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.network);

  @override
  final Network network;

  @override
  String toString() {
    return 'CreateAccountEvent.initial(network: $network)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.network, network) || other.network == network));
  }

  @override
  int get hashCode => Object.hash(runtimeType, network);

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Network network) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InviteLinkData inviteLinkData) onNextTapped,
  }) {
    return initial(network);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Network network)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InviteLinkData inviteLinkData)? onNextTapped,
  }) {
    return initial?.call(network);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Network network)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InviteLinkData inviteLinkData)? onNextTapped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(network);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnNextTapped value) onNextTapped,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnNextTapped value)? onNextTapped,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnNextTapped value)? onNextTapped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateAccountEvent {
  const factory _Initial(final Network network) = _$InitialImpl;

  Network get network;

  /// Create a copy of CreateAccountEvent
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
    extends _$CreateAccountEventCopyWithImpl<$Res, _$ClearPageCommandImpl>
    implements _$$ClearPageCommandImplCopyWith<$Res> {
  __$$ClearPageCommandImplCopyWithImpl(_$ClearPageCommandImpl _value,
      $Res Function(_$ClearPageCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPageCommandImpl implements _ClearPageCommand {
  const _$ClearPageCommandImpl();

  @override
  String toString() {
    return 'CreateAccountEvent.clearPageCommand()';
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
    required TResult Function(Network network) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InviteLinkData inviteLinkData) onNextTapped,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Network network)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InviteLinkData inviteLinkData)? onNextTapped,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Network network)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InviteLinkData inviteLinkData)? onNextTapped,
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
    required TResult Function(_OnNextTapped value) onNextTapped,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnNextTapped value)? onNextTapped,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnNextTapped value)? onNextTapped,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements CreateAccountEvent {
  const factory _ClearPageCommand() = _$ClearPageCommandImpl;
}

/// @nodoc
abstract class _$$OnNextTappedImplCopyWith<$Res> {
  factory _$$OnNextTappedImplCopyWith(
          _$OnNextTappedImpl value, $Res Function(_$OnNextTappedImpl) then) =
      __$$OnNextTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InviteLinkData inviteLinkData});
}

/// @nodoc
class __$$OnNextTappedImplCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$OnNextTappedImpl>
    implements _$$OnNextTappedImplCopyWith<$Res> {
  __$$OnNextTappedImplCopyWithImpl(
      _$OnNextTappedImpl _value, $Res Function(_$OnNextTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteLinkData = null,
  }) {
    return _then(_$OnNextTappedImpl(
      null == inviteLinkData
          ? _value.inviteLinkData
          : inviteLinkData // ignore: cast_nullable_to_non_nullable
              as InviteLinkData,
    ));
  }
}

/// @nodoc

class _$OnNextTappedImpl implements _OnNextTapped {
  const _$OnNextTappedImpl(this.inviteLinkData);

  @override
  final InviteLinkData inviteLinkData;

  @override
  String toString() {
    return 'CreateAccountEvent.onNextTapped(inviteLinkData: $inviteLinkData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNextTappedImpl &&
            (identical(other.inviteLinkData, inviteLinkData) ||
                other.inviteLinkData == inviteLinkData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inviteLinkData);

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNextTappedImplCopyWith<_$OnNextTappedImpl> get copyWith =>
      __$$OnNextTappedImplCopyWithImpl<_$OnNextTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Network network) initial,
    required TResult Function() clearPageCommand,
    required TResult Function(InviteLinkData inviteLinkData) onNextTapped,
  }) {
    return onNextTapped(inviteLinkData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Network network)? initial,
    TResult? Function()? clearPageCommand,
    TResult? Function(InviteLinkData inviteLinkData)? onNextTapped,
  }) {
    return onNextTapped?.call(inviteLinkData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Network network)? initial,
    TResult Function()? clearPageCommand,
    TResult Function(InviteLinkData inviteLinkData)? onNextTapped,
    required TResult orElse(),
  }) {
    if (onNextTapped != null) {
      return onNextTapped(inviteLinkData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnNextTapped value) onNextTapped,
  }) {
    return onNextTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnNextTapped value)? onNextTapped,
  }) {
    return onNextTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnNextTapped value)? onNextTapped,
    required TResult orElse(),
  }) {
    if (onNextTapped != null) {
      return onNextTapped(this);
    }
    return orElse();
  }
}

abstract class _OnNextTapped implements CreateAccountEvent {
  const factory _OnNextTapped(final InviteLinkData inviteLinkData) =
      _$OnNextTappedImpl;

  InviteLinkData get inviteLinkData;

  /// Create a copy of CreateAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnNextTappedImplCopyWith<_$OnNextTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateAccountState {
  PageState get pageState => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get userAccount => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAccountStateCopyWith<CreateAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountStateCopyWith<$Res> {
  factory $CreateAccountStateCopyWith(
          CreateAccountState value, $Res Function(CreateAccountState) then) =
      _$CreateAccountStateCopyWithImpl<$Res, CreateAccountState>;
  @useResult
  $Res call(
      {PageState pageState,
      XFile? image,
      String userName,
      String? userAccount,
      PageCommand? command});

  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class _$CreateAccountStateCopyWithImpl<$Res, $Val extends CreateAccountState>
    implements $CreateAccountStateCopyWith<$Res> {
  _$CreateAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? image = freezed,
    Object? userName = null,
    Object? userAccount = freezed,
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAccount: freezed == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ) as $Val);
  }

  /// Create a copy of CreateAccountState
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
abstract class _$$CreateAccountStateImplCopyWith<$Res>
    implements $CreateAccountStateCopyWith<$Res> {
  factory _$$CreateAccountStateImplCopyWith(_$CreateAccountStateImpl value,
          $Res Function(_$CreateAccountStateImpl) then) =
      __$$CreateAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      XFile? image,
      String userName,
      String? userAccount,
      PageCommand? command});

  @override
  $PageCommandCopyWith<$Res>? get command;
}

/// @nodoc
class __$$CreateAccountStateImplCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res, _$CreateAccountStateImpl>
    implements _$$CreateAccountStateImplCopyWith<$Res> {
  __$$CreateAccountStateImplCopyWithImpl(_$CreateAccountStateImpl _value,
      $Res Function(_$CreateAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? image = freezed,
    Object? userName = null,
    Object? userAccount = freezed,
    Object? command = freezed,
  }) {
    return _then(_$CreateAccountStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userAccount: freezed == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$CreateAccountStateImpl implements _CreateAccountState {
  const _$CreateAccountStateImpl(
      {this.pageState = PageState.initial,
      this.image,
      required this.userName,
      this.userAccount,
      this.command});

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final XFile? image;
  @override
  final String userName;
  @override
  final String? userAccount;
  @override
  final PageCommand? command;

  @override
  String toString() {
    return 'CreateAccountState(pageState: $pageState, image: $image, userName: $userName, userAccount: $userAccount, command: $command)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userAccount, userAccount) ||
                other.userAccount == userAccount) &&
            (identical(other.command, command) || other.command == command));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pageState, image, userName, userAccount, command);

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountStateImplCopyWith<_$CreateAccountStateImpl> get copyWith =>
      __$$CreateAccountStateImplCopyWithImpl<_$CreateAccountStateImpl>(
          this, _$identity);
}

abstract class _CreateAccountState implements CreateAccountState {
  const factory _CreateAccountState(
      {final PageState pageState,
      final XFile? image,
      required final String userName,
      final String? userAccount,
      final PageCommand? command}) = _$CreateAccountStateImpl;

  @override
  PageState get pageState;
  @override
  XFile? get image;
  @override
  String get userName;
  @override
  String? get userAccount;
  @override
  PageCommand? get command;

  /// Create a copy of CreateAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAccountStateImplCopyWith<_$CreateAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoadingDialog,
    required TResult Function() hideLoadingDialog,
    required TResult Function() navigateToSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoadingDialog,
    TResult? Function()? hideLoadingDialog,
    TResult? Function()? navigateToSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoadingDialog,
    TResult Function()? hideLoadingDialog,
    TResult Function()? navigateToSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowLoadingDialog value) showLoadingDialog,
    required TResult Function(_HideLoadingDialog value) hideLoadingDialog,
    required TResult Function(_NavigateToSuccess value) navigateToSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowLoadingDialog value)? showLoadingDialog,
    TResult? Function(_HideLoadingDialog value)? hideLoadingDialog,
    TResult? Function(_NavigateToSuccess value)? navigateToSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowLoadingDialog value)? showLoadingDialog,
    TResult Function(_HideLoadingDialog value)? hideLoadingDialog,
    TResult Function(_NavigateToSuccess value)? navigateToSuccess,
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
abstract class _$$ShowLoadingDialogImplCopyWith<$Res> {
  factory _$$ShowLoadingDialogImplCopyWith(_$ShowLoadingDialogImpl value,
          $Res Function(_$ShowLoadingDialogImpl) then) =
      __$$ShowLoadingDialogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowLoadingDialogImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$ShowLoadingDialogImpl>
    implements _$$ShowLoadingDialogImplCopyWith<$Res> {
  __$$ShowLoadingDialogImplCopyWithImpl(_$ShowLoadingDialogImpl _value,
      $Res Function(_$ShowLoadingDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowLoadingDialogImpl implements _ShowLoadingDialog {
  const _$ShowLoadingDialogImpl();

  @override
  String toString() {
    return 'PageCommand.showLoadingDialog()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowLoadingDialogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoadingDialog,
    required TResult Function() hideLoadingDialog,
    required TResult Function() navigateToSuccess,
  }) {
    return showLoadingDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoadingDialog,
    TResult? Function()? hideLoadingDialog,
    TResult? Function()? navigateToSuccess,
  }) {
    return showLoadingDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoadingDialog,
    TResult Function()? hideLoadingDialog,
    TResult Function()? navigateToSuccess,
    required TResult orElse(),
  }) {
    if (showLoadingDialog != null) {
      return showLoadingDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowLoadingDialog value) showLoadingDialog,
    required TResult Function(_HideLoadingDialog value) hideLoadingDialog,
    required TResult Function(_NavigateToSuccess value) navigateToSuccess,
  }) {
    return showLoadingDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowLoadingDialog value)? showLoadingDialog,
    TResult? Function(_HideLoadingDialog value)? hideLoadingDialog,
    TResult? Function(_NavigateToSuccess value)? navigateToSuccess,
  }) {
    return showLoadingDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowLoadingDialog value)? showLoadingDialog,
    TResult Function(_HideLoadingDialog value)? hideLoadingDialog,
    TResult Function(_NavigateToSuccess value)? navigateToSuccess,
    required TResult orElse(),
  }) {
    if (showLoadingDialog != null) {
      return showLoadingDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowLoadingDialog implements PageCommand {
  const factory _ShowLoadingDialog() = _$ShowLoadingDialogImpl;
}

/// @nodoc
abstract class _$$HideLoadingDialogImplCopyWith<$Res> {
  factory _$$HideLoadingDialogImplCopyWith(_$HideLoadingDialogImpl value,
          $Res Function(_$HideLoadingDialogImpl) then) =
      __$$HideLoadingDialogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideLoadingDialogImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$HideLoadingDialogImpl>
    implements _$$HideLoadingDialogImplCopyWith<$Res> {
  __$$HideLoadingDialogImplCopyWithImpl(_$HideLoadingDialogImpl _value,
      $Res Function(_$HideLoadingDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HideLoadingDialogImpl implements _HideLoadingDialog {
  const _$HideLoadingDialogImpl();

  @override
  String toString() {
    return 'PageCommand.hideLoadingDialog()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideLoadingDialogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoadingDialog,
    required TResult Function() hideLoadingDialog,
    required TResult Function() navigateToSuccess,
  }) {
    return hideLoadingDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoadingDialog,
    TResult? Function()? hideLoadingDialog,
    TResult? Function()? navigateToSuccess,
  }) {
    return hideLoadingDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoadingDialog,
    TResult Function()? hideLoadingDialog,
    TResult Function()? navigateToSuccess,
    required TResult orElse(),
  }) {
    if (hideLoadingDialog != null) {
      return hideLoadingDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowLoadingDialog value) showLoadingDialog,
    required TResult Function(_HideLoadingDialog value) hideLoadingDialog,
    required TResult Function(_NavigateToSuccess value) navigateToSuccess,
  }) {
    return hideLoadingDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowLoadingDialog value)? showLoadingDialog,
    TResult? Function(_HideLoadingDialog value)? hideLoadingDialog,
    TResult? Function(_NavigateToSuccess value)? navigateToSuccess,
  }) {
    return hideLoadingDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowLoadingDialog value)? showLoadingDialog,
    TResult Function(_HideLoadingDialog value)? hideLoadingDialog,
    TResult Function(_NavigateToSuccess value)? navigateToSuccess,
    required TResult orElse(),
  }) {
    if (hideLoadingDialog != null) {
      return hideLoadingDialog(this);
    }
    return orElse();
  }
}

abstract class _HideLoadingDialog implements PageCommand {
  const factory _HideLoadingDialog() = _$HideLoadingDialogImpl;
}

/// @nodoc
abstract class _$$NavigateToSuccessImplCopyWith<$Res> {
  factory _$$NavigateToSuccessImplCopyWith(_$NavigateToSuccessImpl value,
          $Res Function(_$NavigateToSuccessImpl) then) =
      __$$NavigateToSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToSuccessImplCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$NavigateToSuccessImpl>
    implements _$$NavigateToSuccessImplCopyWith<$Res> {
  __$$NavigateToSuccessImplCopyWithImpl(_$NavigateToSuccessImpl _value,
      $Res Function(_$NavigateToSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateToSuccessImpl implements _NavigateToSuccess {
  const _$NavigateToSuccessImpl();

  @override
  String toString() {
    return 'PageCommand.navigateToSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateToSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoadingDialog,
    required TResult Function() hideLoadingDialog,
    required TResult Function() navigateToSuccess,
  }) {
    return navigateToSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoadingDialog,
    TResult? Function()? hideLoadingDialog,
    TResult? Function()? navigateToSuccess,
  }) {
    return navigateToSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoadingDialog,
    TResult Function()? hideLoadingDialog,
    TResult Function()? navigateToSuccess,
    required TResult orElse(),
  }) {
    if (navigateToSuccess != null) {
      return navigateToSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowLoadingDialog value) showLoadingDialog,
    required TResult Function(_HideLoadingDialog value) hideLoadingDialog,
    required TResult Function(_NavigateToSuccess value) navigateToSuccess,
  }) {
    return navigateToSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowLoadingDialog value)? showLoadingDialog,
    TResult? Function(_HideLoadingDialog value)? hideLoadingDialog,
    TResult? Function(_NavigateToSuccess value)? navigateToSuccess,
  }) {
    return navigateToSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowLoadingDialog value)? showLoadingDialog,
    TResult Function(_HideLoadingDialog value)? hideLoadingDialog,
    TResult Function(_NavigateToSuccess value)? navigateToSuccess,
    required TResult orElse(),
  }) {
    if (navigateToSuccess != null) {
      return navigateToSuccess(this);
    }
    return orElse();
  }
}

abstract class _NavigateToSuccess implements PageCommand {
  const factory _NavigateToSuccess() = _$NavigateToSuccessImpl;
}
