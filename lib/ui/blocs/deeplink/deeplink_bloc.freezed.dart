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
  Uri get link => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri link) incomingFirebaseDeepLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? incomingFirebaseDeepLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? incomingFirebaseDeepLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncomingFirebaseDeepLink value)
        incomingFirebaseDeepLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingFirebaseDeepLink value)?
        incomingFirebaseDeepLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingFirebaseDeepLink value)? incomingFirebaseDeepLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeeplinkEventCopyWith<DeeplinkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeeplinkEventCopyWith<$Res> {
  factory $DeeplinkEventCopyWith(
          DeeplinkEvent value, $Res Function(DeeplinkEvent) then) =
      _$DeeplinkEventCopyWithImpl<$Res, DeeplinkEvent>;
  @useResult
  $Res call({Uri link});
}

/// @nodoc
class _$DeeplinkEventCopyWithImpl<$Res, $Val extends DeeplinkEvent>
    implements $DeeplinkEventCopyWith<$Res> {
  _$DeeplinkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IncomingFirebaseDeepLinkCopyWith<$Res>
    implements $DeeplinkEventCopyWith<$Res> {
  factory _$$_IncomingFirebaseDeepLinkCopyWith(
          _$_IncomingFirebaseDeepLink value,
          $Res Function(_$_IncomingFirebaseDeepLink) then) =
      __$$_IncomingFirebaseDeepLinkCopyWithImpl<$Res>;
  @override
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
  }) {
    return incomingFirebaseDeepLink(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? incomingFirebaseDeepLink,
  }) {
    return incomingFirebaseDeepLink?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? incomingFirebaseDeepLink,
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
  }) {
    return incomingFirebaseDeepLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncomingFirebaseDeepLink value)?
        incomingFirebaseDeepLink,
  }) {
    return incomingFirebaseDeepLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncomingFirebaseDeepLink value)? incomingFirebaseDeepLink,
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

  @override
  Uri get link;
  @override
  @JsonKey(ignore: true)
  _$$_IncomingFirebaseDeepLinkCopyWith<_$_IncomingFirebaseDeepLink>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeeplinkState {
  String? get link => throw _privateConstructorUsedError;

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
  $Res call({String? link});
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
  }) {
    return _then(_value.copyWith(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
  $Res call({String? link});
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
  }) {
    return _then(_$_DeeplinkState(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DeeplinkState implements _DeeplinkState {
  const _$_DeeplinkState({this.link});

  @override
  final String? link;

  @override
  String toString() {
    return 'DeeplinkState(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeeplinkState &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeeplinkStateCopyWith<_$_DeeplinkState> get copyWith =>
      __$$_DeeplinkStateCopyWithImpl<_$_DeeplinkState>(this, _$identity);
}

abstract class _DeeplinkState implements DeeplinkState {
  const factory _DeeplinkState({final String? link}) = _$_DeeplinkState;

  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_DeeplinkStateCopyWith<_$_DeeplinkState> get copyWith =>
      throw _privateConstructorUsedError;
}
