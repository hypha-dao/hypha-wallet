// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_dao_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JoinDaoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onYesTapped,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onYesTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onYesTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnYesTapped value) onYesTapped,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnYesTapped value)? onYesTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnYesTapped value)? onYesTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinDaoEventCopyWith<$Res> {
  factory $JoinDaoEventCopyWith(
          JoinDaoEvent value, $Res Function(JoinDaoEvent) then) =
      _$JoinDaoEventCopyWithImpl<$Res, JoinDaoEvent>;
}

/// @nodoc
class _$JoinDaoEventCopyWithImpl<$Res, $Val extends JoinDaoEvent>
    implements $JoinDaoEventCopyWith<$Res> {
  _$JoinDaoEventCopyWithImpl(this._value, this._then);

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
    extends _$JoinDaoEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'JoinDaoEvent.initial()';
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
    required TResult Function() onYesTapped,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onYesTapped,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onYesTapped,
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
    required TResult Function(_OnYesTapped value) onYesTapped,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnYesTapped value)? onYesTapped,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnYesTapped value)? onYesTapped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements JoinDaoEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_OnYesTappedCopyWith<$Res> {
  factory _$$_OnYesTappedCopyWith(
          _$_OnYesTapped value, $Res Function(_$_OnYesTapped) then) =
      __$$_OnYesTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnYesTappedCopyWithImpl<$Res>
    extends _$JoinDaoEventCopyWithImpl<$Res, _$_OnYesTapped>
    implements _$$_OnYesTappedCopyWith<$Res> {
  __$$_OnYesTappedCopyWithImpl(
      _$_OnYesTapped _value, $Res Function(_$_OnYesTapped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnYesTapped implements _OnYesTapped {
  const _$_OnYesTapped();

  @override
  String toString() {
    return 'JoinDaoEvent.onYesTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnYesTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onYesTapped,
  }) {
    return onYesTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? onYesTapped,
  }) {
    return onYesTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onYesTapped,
    required TResult orElse(),
  }) {
    if (onYesTapped != null) {
      return onYesTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnYesTapped value) onYesTapped,
  }) {
    return onYesTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnYesTapped value)? onYesTapped,
  }) {
    return onYesTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnYesTapped value)? onYesTapped,
    required TResult orElse(),
  }) {
    if (onYesTapped != null) {
      return onYesTapped(this);
    }
    return orElse();
  }
}

abstract class _OnYesTapped implements JoinDaoEvent {
  const factory _OnYesTapped() = _$_OnYesTapped;
}

/// @nodoc
mixin _$JoinDaoState {
  PageState get pageState => throw _privateConstructorUsedError;
  bool get isButtonLoading => throw _privateConstructorUsedError;
  String get daoName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JoinDaoStateCopyWith<JoinDaoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinDaoStateCopyWith<$Res> {
  factory $JoinDaoStateCopyWith(
          JoinDaoState value, $Res Function(JoinDaoState) then) =
      _$JoinDaoStateCopyWithImpl<$Res, JoinDaoState>;
  @useResult
  $Res call({PageState pageState, bool isButtonLoading, String daoName});
}

/// @nodoc
class _$JoinDaoStateCopyWithImpl<$Res, $Val extends JoinDaoState>
    implements $JoinDaoStateCopyWith<$Res> {
  _$JoinDaoStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? isButtonLoading = null,
    Object? daoName = null,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      isButtonLoading: null == isButtonLoading
          ? _value.isButtonLoading
          : isButtonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      daoName: null == daoName
          ? _value.daoName
          : daoName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JoinDaoStateCopyWith<$Res>
    implements $JoinDaoStateCopyWith<$Res> {
  factory _$$_JoinDaoStateCopyWith(
          _$_JoinDaoState value, $Res Function(_$_JoinDaoState) then) =
      __$$_JoinDaoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState pageState, bool isButtonLoading, String daoName});
}

/// @nodoc
class __$$_JoinDaoStateCopyWithImpl<$Res>
    extends _$JoinDaoStateCopyWithImpl<$Res, _$_JoinDaoState>
    implements _$$_JoinDaoStateCopyWith<$Res> {
  __$$_JoinDaoStateCopyWithImpl(
      _$_JoinDaoState _value, $Res Function(_$_JoinDaoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? isButtonLoading = null,
    Object? daoName = null,
  }) {
    return _then(_$_JoinDaoState(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      isButtonLoading: null == isButtonLoading
          ? _value.isButtonLoading
          : isButtonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      daoName: null == daoName
          ? _value.daoName
          : daoName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_JoinDaoState extends _JoinDaoState {
  const _$_JoinDaoState(
      {this.pageState = PageState.initial,
      this.isButtonLoading = false,
      this.daoName = ''})
      : super._();

  @override
  @JsonKey()
  final PageState pageState;
  @override
  @JsonKey()
  final bool isButtonLoading;
  @override
  @JsonKey()
  final String daoName;

  @override
  String toString() {
    return 'JoinDaoState(pageState: $pageState, isButtonLoading: $isButtonLoading, daoName: $daoName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JoinDaoState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.isButtonLoading, isButtonLoading) ||
                other.isButtonLoading == isButtonLoading) &&
            (identical(other.daoName, daoName) || other.daoName == daoName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pageState, isButtonLoading, daoName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JoinDaoStateCopyWith<_$_JoinDaoState> get copyWith =>
      __$$_JoinDaoStateCopyWithImpl<_$_JoinDaoState>(this, _$identity);
}

abstract class _JoinDaoState extends JoinDaoState {
  const factory _JoinDaoState(
      {final PageState pageState,
      final bool isButtonLoading,
      final String daoName}) = _$_JoinDaoState;
  const _JoinDaoState._() : super._();

  @override
  PageState get pageState;
  @override
  bool get isButtonLoading;
  @override
  String get daoName;
  @override
  @JsonKey(ignore: true)
  _$$_JoinDaoStateCopyWith<_$_JoinDaoState> get copyWith =>
      throw _privateConstructorUsedError;
}
