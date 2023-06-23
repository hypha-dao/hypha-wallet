// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateTo value) navigateToSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateTo value)? navigateToSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateTo value)? navigateToSuccess,
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
abstract class _$$_NavigateToCopyWith<$Res> {
  factory _$$_NavigateToCopyWith(
          _$_NavigateTo value, $Res Function(_$_NavigateTo) then) =
      __$$_NavigateToCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NavigateToCopyWithImpl<$Res>
    extends _$PageCommandCopyWithImpl<$Res, _$_NavigateTo>
    implements _$$_NavigateToCopyWith<$Res> {
  __$$_NavigateToCopyWithImpl(
      _$_NavigateTo _value, $Res Function(_$_NavigateTo) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NavigateTo implements _NavigateTo {
  const _$_NavigateTo();

  @override
  String toString() {
    return 'PageCommand.navigateToSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NavigateTo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToSuccess,
  }) {
    return navigateToSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToSuccess,
  }) {
    return navigateToSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_NavigateTo value) navigateToSuccess,
  }) {
    return navigateToSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateTo value)? navigateToSuccess,
  }) {
    return navigateToSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateTo value)? navigateToSuccess,
    required TResult orElse(),
  }) {
    if (navigateToSuccess != null) {
      return navigateToSuccess(this);
    }
    return orElse();
  }
}

abstract class _NavigateTo implements PageCommand {
  const factory _NavigateTo() = _$_NavigateTo;
}

/// @nodoc
mixin _$SendEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey amountPercentage) onKeypadTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey amountPercentage)? onKeypadTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey amountPercentage)? onKeypadTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendEventCopyWith<$Res> {
  factory $SendEventCopyWith(SendEvent value, $Res Function(SendEvent) then) =
      _$SendEventCopyWithImpl<$Res, SendEvent>;
}

/// @nodoc
class _$SendEventCopyWithImpl<$Res, $Val extends SendEvent>
    implements $SendEventCopyWith<$Res> {
  _$SendEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SendEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SendEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey amountPercentage) onKeypadTapped,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey amountPercentage)? onKeypadTapped,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey amountPercentage)? onKeypadTapped,
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
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SendEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_OnRefreshCopyWith<$Res> {
  factory _$$_OnRefreshCopyWith(
          _$_OnRefresh value, $Res Function(_$_OnRefresh) then) =
      __$$_OnRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnRefreshCopyWithImpl<$Res>
    extends _$SendEventCopyWithImpl<$Res, _$_OnRefresh>
    implements _$$_OnRefreshCopyWith<$Res> {
  __$$_OnRefreshCopyWithImpl(
      _$_OnRefresh _value, $Res Function(_$_OnRefresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnRefresh implements _OnRefresh {
  const _$_OnRefresh();

  @override
  String toString() {
    return 'SendEvent.onRefresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey amountPercentage) onKeypadTapped,
  }) {
    return onRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey amountPercentage)? onKeypadTapped,
  }) {
    return onRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey amountPercentage)? onKeypadTapped,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
  }) {
    return onRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
  }) {
    return onRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh(this);
    }
    return orElse();
  }
}

abstract class _OnRefresh implements SendEvent {
  const factory _OnRefresh() = _$_OnRefresh;
}

/// @nodoc
abstract class _$$_ClearPageCommandCopyWith<$Res> {
  factory _$$_ClearPageCommandCopyWith(
          _$_ClearPageCommand value, $Res Function(_$_ClearPageCommand) then) =
      __$$_ClearPageCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearPageCommandCopyWithImpl<$Res>
    extends _$SendEventCopyWithImpl<$Res, _$_ClearPageCommand>
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
    return 'SendEvent.clearPageCommand()';
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
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey amountPercentage) onKeypadTapped,
  }) {
    return clearPageCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey amountPercentage)? onKeypadTapped,
  }) {
    return clearPageCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey amountPercentage)? onKeypadTapped,
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
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
  }) {
    return clearPageCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
  }) {
    return clearPageCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    required TResult orElse(),
  }) {
    if (clearPageCommand != null) {
      return clearPageCommand(this);
    }
    return orElse();
  }
}

abstract class _ClearPageCommand implements SendEvent {
  const factory _ClearPageCommand() = _$_ClearPageCommand;
}

/// @nodoc
abstract class _$$_OnPercentageTappedCopyWith<$Res> {
  factory _$$_OnPercentageTappedCopyWith(_$_OnPercentageTapped value,
          $Res Function(_$_OnPercentageTapped) then) =
      __$$_OnPercentageTappedCopyWithImpl<$Res>;
  @useResult
  $Res call({AmountPercentage amountPercentage});
}

/// @nodoc
class __$$_OnPercentageTappedCopyWithImpl<$Res>
    extends _$SendEventCopyWithImpl<$Res, _$_OnPercentageTapped>
    implements _$$_OnPercentageTappedCopyWith<$Res> {
  __$$_OnPercentageTappedCopyWithImpl(
      _$_OnPercentageTapped _value, $Res Function(_$_OnPercentageTapped) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountPercentage = null,
  }) {
    return _then(_$_OnPercentageTapped(
      null == amountPercentage
          ? _value.amountPercentage
          : amountPercentage // ignore: cast_nullable_to_non_nullable
              as AmountPercentage,
    ));
  }
}

/// @nodoc

class _$_OnPercentageTapped implements _OnPercentageTapped {
  const _$_OnPercentageTapped(this.amountPercentage);

  @override
  final AmountPercentage amountPercentage;

  @override
  String toString() {
    return 'SendEvent.onPercentageTapped(amountPercentage: $amountPercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnPercentageTapped &&
            (identical(other.amountPercentage, amountPercentage) ||
                other.amountPercentage == amountPercentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountPercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnPercentageTappedCopyWith<_$_OnPercentageTapped> get copyWith =>
      __$$_OnPercentageTappedCopyWithImpl<_$_OnPercentageTapped>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey amountPercentage) onKeypadTapped,
  }) {
    return onPercentageTapped(amountPercentage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey amountPercentage)? onKeypadTapped,
  }) {
    return onPercentageTapped?.call(amountPercentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey amountPercentage)? onKeypadTapped,
    required TResult orElse(),
  }) {
    if (onPercentageTapped != null) {
      return onPercentageTapped(amountPercentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
  }) {
    return onPercentageTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
  }) {
    return onPercentageTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    required TResult orElse(),
  }) {
    if (onPercentageTapped != null) {
      return onPercentageTapped(this);
    }
    return orElse();
  }
}

abstract class _OnPercentageTapped implements SendEvent {
  const factory _OnPercentageTapped(final AmountPercentage amountPercentage) =
      _$_OnPercentageTapped;

  AmountPercentage get amountPercentage;
  @JsonKey(ignore: true)
  _$$_OnPercentageTappedCopyWith<_$_OnPercentageTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnKeypadTappedCopyWith<$Res> {
  factory _$$_OnKeypadTappedCopyWith(
          _$_OnKeypadTapped value, $Res Function(_$_OnKeypadTapped) then) =
      __$$_OnKeypadTappedCopyWithImpl<$Res>;
  @useResult
  $Res call({KeypadKey amountPercentage});
}

/// @nodoc
class __$$_OnKeypadTappedCopyWithImpl<$Res>
    extends _$SendEventCopyWithImpl<$Res, _$_OnKeypadTapped>
    implements _$$_OnKeypadTappedCopyWith<$Res> {
  __$$_OnKeypadTappedCopyWithImpl(
      _$_OnKeypadTapped _value, $Res Function(_$_OnKeypadTapped) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountPercentage = null,
  }) {
    return _then(_$_OnKeypadTapped(
      null == amountPercentage
          ? _value.amountPercentage
          : amountPercentage // ignore: cast_nullable_to_non_nullable
              as KeypadKey,
    ));
  }
}

/// @nodoc

class _$_OnKeypadTapped implements _OnKeypadTapped {
  const _$_OnKeypadTapped(this.amountPercentage);

  @override
  final KeypadKey amountPercentage;

  @override
  String toString() {
    return 'SendEvent.onKeypadTapped(amountPercentage: $amountPercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnKeypadTapped &&
            (identical(other.amountPercentage, amountPercentage) ||
                other.amountPercentage == amountPercentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountPercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnKeypadTappedCopyWith<_$_OnKeypadTapped> get copyWith =>
      __$$_OnKeypadTappedCopyWithImpl<_$_OnKeypadTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onRefresh,
    required TResult Function() clearPageCommand,
    required TResult Function(AmountPercentage amountPercentage)
        onPercentageTapped,
    required TResult Function(KeypadKey amountPercentage) onKeypadTapped,
  }) {
    return onKeypadTapped(amountPercentage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onRefresh,
    TResult? Function()? clearPageCommand,
    TResult? Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult? Function(KeypadKey amountPercentage)? onKeypadTapped,
  }) {
    return onKeypadTapped?.call(amountPercentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onRefresh,
    TResult Function()? clearPageCommand,
    TResult Function(AmountPercentage amountPercentage)? onPercentageTapped,
    TResult Function(KeypadKey amountPercentage)? onKeypadTapped,
    required TResult orElse(),
  }) {
    if (onKeypadTapped != null) {
      return onKeypadTapped(amountPercentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnRefresh value) onRefresh,
    required TResult Function(_ClearPageCommand value) clearPageCommand,
    required TResult Function(_OnPercentageTapped value) onPercentageTapped,
    required TResult Function(_OnKeypadTapped value) onKeypadTapped,
  }) {
    return onKeypadTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnRefresh value)? onRefresh,
    TResult? Function(_ClearPageCommand value)? clearPageCommand,
    TResult? Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult? Function(_OnKeypadTapped value)? onKeypadTapped,
  }) {
    return onKeypadTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnRefresh value)? onRefresh,
    TResult Function(_ClearPageCommand value)? clearPageCommand,
    TResult Function(_OnPercentageTapped value)? onPercentageTapped,
    TResult Function(_OnKeypadTapped value)? onKeypadTapped,
    required TResult orElse(),
  }) {
    if (onKeypadTapped != null) {
      return onKeypadTapped(this);
    }
    return orElse();
  }
}

abstract class _OnKeypadTapped implements SendEvent {
  const factory _OnKeypadTapped(final KeypadKey amountPercentage) =
      _$_OnKeypadTapped;

  KeypadKey get amountPercentage;
  @JsonKey(ignore: true)
  _$$_OnKeypadTappedCopyWith<_$_OnKeypadTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendState {
  PageState get pageState => throw _privateConstructorUsedError;
  PageCommand? get command => throw _privateConstructorUsedError;
  String get userEnteredAmount => throw _privateConstructorUsedError;
  UserProfileData get receiverUser => throw _privateConstructorUsedError;
  WalletTokenData get tokenData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendStateCopyWith<SendState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendStateCopyWith<$Res> {
  factory $SendStateCopyWith(SendState value, $Res Function(SendState) then) =
      _$SendStateCopyWithImpl<$Res, SendState>;
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      String userEnteredAmount,
      UserProfileData receiverUser,
      WalletTokenData tokenData});

  $PageCommandCopyWith<$Res>? get command;
  $UserProfileDataCopyWith<$Res> get receiverUser;
}

/// @nodoc
class _$SendStateCopyWithImpl<$Res, $Val extends SendState>
    implements $SendStateCopyWith<$Res> {
  _$SendStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? userEnteredAmount = null,
    Object? receiverUser = null,
    Object? tokenData = null,
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
      userEnteredAmount: null == userEnteredAmount
          ? _value.userEnteredAmount
          : userEnteredAmount // ignore: cast_nullable_to_non_nullable
              as String,
      receiverUser: null == receiverUser
          ? _value.receiverUser
          : receiverUser // ignore: cast_nullable_to_non_nullable
              as UserProfileData,
      tokenData: null == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as WalletTokenData,
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

  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res> get receiverUser {
    return $UserProfileDataCopyWith<$Res>(_value.receiverUser, (value) {
      return _then(_value.copyWith(receiverUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SendStateCopyWith<$Res> implements $SendStateCopyWith<$Res> {
  factory _$$_SendStateCopyWith(
          _$_SendState value, $Res Function(_$_SendState) then) =
      __$$_SendStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      PageCommand? command,
      String userEnteredAmount,
      UserProfileData receiverUser,
      WalletTokenData tokenData});

  @override
  $PageCommandCopyWith<$Res>? get command;
  @override
  $UserProfileDataCopyWith<$Res> get receiverUser;
}

/// @nodoc
class __$$_SendStateCopyWithImpl<$Res>
    extends _$SendStateCopyWithImpl<$Res, _$_SendState>
    implements _$$_SendStateCopyWith<$Res> {
  __$$_SendStateCopyWithImpl(
      _$_SendState _value, $Res Function(_$_SendState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? command = freezed,
    Object? userEnteredAmount = null,
    Object? receiverUser = null,
    Object? tokenData = null,
  }) {
    return _then(_$_SendState(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
      userEnteredAmount: null == userEnteredAmount
          ? _value.userEnteredAmount
          : userEnteredAmount // ignore: cast_nullable_to_non_nullable
              as String,
      receiverUser: null == receiverUser
          ? _value.receiverUser
          : receiverUser // ignore: cast_nullable_to_non_nullable
              as UserProfileData,
      tokenData: null == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as WalletTokenData,
    ));
  }
}

/// @nodoc

class _$_SendState extends _SendState {
  const _$_SendState(
      {this.pageState = PageState.initial,
      this.command,
      this.userEnteredAmount = '0',
      required this.receiverUser,
      required this.tokenData})
      : super._();

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final PageCommand? command;
  @override
  @JsonKey()
  final String userEnteredAmount;
  @override
  final UserProfileData receiverUser;
  @override
  final WalletTokenData tokenData;

  @override
  String toString() {
    return 'SendState(pageState: $pageState, command: $command, userEnteredAmount: $userEnteredAmount, receiverUser: $receiverUser, tokenData: $tokenData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.userEnteredAmount, userEnteredAmount) ||
                other.userEnteredAmount == userEnteredAmount) &&
            (identical(other.receiverUser, receiverUser) ||
                other.receiverUser == receiverUser) &&
            (identical(other.tokenData, tokenData) ||
                other.tokenData == tokenData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, command,
      userEnteredAmount, receiverUser, tokenData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendStateCopyWith<_$_SendState> get copyWith =>
      __$$_SendStateCopyWithImpl<_$_SendState>(this, _$identity);
}

abstract class _SendState extends SendState {
  const factory _SendState(
      {final PageState pageState,
      final PageCommand? command,
      final String userEnteredAmount,
      required final UserProfileData receiverUser,
      required final WalletTokenData tokenData}) = _$_SendState;
  const _SendState._() : super._();

  @override
  PageState get pageState;
  @override
  PageCommand? get command;
  @override
  String get userEnteredAmount;
  @override
  UserProfileData get receiverUser;
  @override
  WalletTokenData get tokenData;
  @override
  @JsonKey(ignore: true)
  _$$_SendStateCopyWith<_$_SendState> get copyWith =>
      throw _privateConstructorUsedError;
}
