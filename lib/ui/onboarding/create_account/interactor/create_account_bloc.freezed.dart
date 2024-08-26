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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @useResult
  $Res call({Network network});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? network = null,
  }) {
    return _then(_$_Initial(
      null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as Network,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.network);

  @override
  final Network network;

  @override
  String toString() {
    return 'CreateAccountEvent.initial(network: $network)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.network, network) || other.network == network));
  }

  @override
  int get hashCode => Object.hash(runtimeType, network);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

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
  const factory _Initial(final Network network) = _$_Initial;

  Network get network;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
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
    extends _$CreateAccountEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'CreateAccountEvent.clearPageCommand()';
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
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
abstract class _$$_OnNextTappedCopyWith<$Res> {
  factory _$$_OnNextTappedCopyWith(
          _$_OnNextTapped value, $Res Function(_$_OnNextTapped) then) =
      __$$_OnNextTappedCopyWithImpl<$Res>;
  @useResult
  $Res call({InviteLinkData inviteLinkData});
}

/// @nodoc
class __$$_OnNextTappedCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$_OnNextTapped>
    implements _$$_OnNextTappedCopyWith<$Res> {
  __$$_OnNextTappedCopyWithImpl(
      _$_OnNextTapped _value, $Res Function(_$_OnNextTapped) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteLinkData = null,
  }) {
    return _then(_$_OnNextTapped(
      null == inviteLinkData
          ? _value.inviteLinkData
          : inviteLinkData // ignore: cast_nullable_to_non_nullable
              as InviteLinkData,
    ));
  }
}

/// @nodoc

class _$_OnNextTapped implements _OnNextTapped {
  const _$_OnNextTapped(this.inviteLinkData);

  @override
  final InviteLinkData inviteLinkData;

  @override
  String toString() {
    return 'CreateAccountEvent.onNextTapped(inviteLinkData: $inviteLinkData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnNextTapped &&
            (identical(other.inviteLinkData, inviteLinkData) ||
                other.inviteLinkData == inviteLinkData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inviteLinkData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnNextTappedCopyWith<_$_OnNextTapped> get copyWith =>
      __$$_OnNextTappedCopyWithImpl<_$_OnNextTapped>(this, _$identity);

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
      _$_OnNextTapped;

  InviteLinkData get inviteLinkData;
  @JsonKey(ignore: true)
  _$$_OnNextTappedCopyWith<_$_OnNextTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateAccountState {
  PageState get pageState => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get userAccount => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_CreateAccountStateCopyWith<$Res>
    implements $CreateAccountStateCopyWith<$Res> {
  factory _$$_CreateAccountStateCopyWith(_$_CreateAccountState value,
          $Res Function(_$_CreateAccountState) then) =
      __$$_CreateAccountStateCopyWithImpl<$Res>;
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
class __$$_CreateAccountStateCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res, _$_CreateAccountState>
    implements _$$_CreateAccountStateCopyWith<$Res> {
  __$$_CreateAccountStateCopyWithImpl(
      _$_CreateAccountState _value, $Res Function(_$_CreateAccountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? image = freezed,
    Object? userName = null,
    Object? userAccount = freezed,
    Object? command = freezed,
  }) {
    return _then(_$_CreateAccountState(
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

class _$_CreateAccountState implements _CreateAccountState {
  const _$_CreateAccountState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAccountState &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAccountStateCopyWith<_$_CreateAccountState> get copyWith =>
      __$$_CreateAccountStateCopyWithImpl<_$_CreateAccountState>(
          this, _$identity);
}

abstract class _CreateAccountState implements CreateAccountState {
  const factory _CreateAccountState(
      {final PageState pageState,
      final XFile? image,
      required final String userName,
      final String? userAccount,
      final PageCommand? command}) = _$_CreateAccountState;

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
  @override
  @JsonKey(ignore: true)
  _$$_CreateAccountStateCopyWith<_$_CreateAccountState> get copyWith =>
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
}

/// @nodoc
abstract class _$$_ShowLoadingDialogCopyWith<$Res> {
  factory _$$_ShowLoadingDialogCopyWith(_$_ShowLoadingDialog value,
          $Res Function(_$_ShowLoadingDialog) then) =
      __$$_ShowLoadingDialogCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowLoadingDialogCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_ShowLoadingDialog>
    implements _$$_ShowLoadingDialogCopyWith<$Res> {
  __$$_ShowLoadingDialogCopyWithImpl(
      _$_ShowLoadingDialog _value, $Res Function(_$_ShowLoadingDialog) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShowLoadingDialog implements _ShowLoadingDialog {
  const _$_ShowLoadingDialog();

  @override
  String toString() {
    return 'PageCommand.showLoadingDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowLoadingDialog);
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
  const factory _ShowLoadingDialog() = _$_ShowLoadingDialog;
}

/// @nodoc
abstract class _$$_HideLoadingDialogCopyWith<$Res> {
  factory _$$_HideLoadingDialogCopyWith(_$_HideLoadingDialog value,
          $Res Function(_$_HideLoadingDialog) then) =
      __$$_HideLoadingDialogCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HideLoadingDialogCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_HideLoadingDialog>
    implements _$$_HideLoadingDialogCopyWith<$Res> {
  __$$_HideLoadingDialogCopyWithImpl(
      _$_HideLoadingDialog _value, $Res Function(_$_HideLoadingDialog) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HideLoadingDialog implements _HideLoadingDialog {
  const _$_HideLoadingDialog();

  @override
  String toString() {
    return 'PageCommand.hideLoadingDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HideLoadingDialog);
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
  const factory _HideLoadingDialog() = _$_HideLoadingDialog;
}

/// @nodoc
abstract class _$$_NavigateToSuccessCopyWith<$Res> {
  factory _$$_NavigateToSuccessCopyWith(_$_NavigateToSuccess value,
          $Res Function(_$_NavigateToSuccess) then) =
      __$$_NavigateToSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NavigateToSuccessCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_NavigateToSuccess>
    implements _$$_NavigateToSuccessCopyWith<$Res> {
  __$$_NavigateToSuccessCopyWithImpl(
      _$_NavigateToSuccess _value, $Res Function(_$_NavigateToSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NavigateToSuccess implements _NavigateToSuccess {
  const _$_NavigateToSuccess();

  @override
  String toString() {
    return 'PageCommand.navigateToSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NavigateToSuccess);
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
  const factory _NavigateToSuccess() = _$_NavigateToSuccess;
}
