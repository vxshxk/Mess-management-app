// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'net_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() on,
    required TResult Function() off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? on,
    TResult? Function()? off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? on,
    TResult Function()? off,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(On value) on,
    required TResult Function(Off value) off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(On value)? on,
    TResult? Function(Off value)? off,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(On value)? on,
    TResult Function(Off value)? off,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetEventCopyWith<$Res> {
  factory $NetEventCopyWith(NetEvent value, $Res Function(NetEvent) then) =
      _$NetEventCopyWithImpl<$Res, NetEvent>;
}

/// @nodoc
class _$NetEventCopyWithImpl<$Res, $Val extends NetEvent>
    implements $NetEventCopyWith<$Res> {
  _$NetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnImplCopyWith<$Res> {
  factory _$$OnImplCopyWith(_$OnImpl value, $Res Function(_$OnImpl) then) =
      __$$OnImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnImplCopyWithImpl<$Res>
    extends _$NetEventCopyWithImpl<$Res, _$OnImpl>
    implements _$$OnImplCopyWith<$Res> {
  __$$OnImplCopyWithImpl(_$OnImpl _value, $Res Function(_$OnImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnImpl implements On {
  const _$OnImpl();

  @override
  String toString() {
    return 'NetEvent.on()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() on,
    required TResult Function() off,
  }) {
    return on();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? on,
    TResult? Function()? off,
  }) {
    return on?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? on,
    TResult Function()? off,
    required TResult orElse(),
  }) {
    if (on != null) {
      return on();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(On value) on,
    required TResult Function(Off value) off,
  }) {
    return on(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(On value)? on,
    TResult? Function(Off value)? off,
  }) {
    return on?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(On value)? on,
    TResult Function(Off value)? off,
    required TResult orElse(),
  }) {
    if (on != null) {
      return on(this);
    }
    return orElse();
  }
}

abstract class On implements NetEvent {
  const factory On() = _$OnImpl;
}

/// @nodoc
abstract class _$$OffImplCopyWith<$Res> {
  factory _$$OffImplCopyWith(_$OffImpl value, $Res Function(_$OffImpl) then) =
      __$$OffImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OffImplCopyWithImpl<$Res>
    extends _$NetEventCopyWithImpl<$Res, _$OffImpl>
    implements _$$OffImplCopyWith<$Res> {
  __$$OffImplCopyWithImpl(_$OffImpl _value, $Res Function(_$OffImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OffImpl implements Off {
  const _$OffImpl();

  @override
  String toString() {
    return 'NetEvent.off()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OffImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() on,
    required TResult Function() off,
  }) {
    return off();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? on,
    TResult? Function()? off,
  }) {
    return off?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? on,
    TResult Function()? off,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(On value) on,
    required TResult Function(Off value) off,
  }) {
    return off(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(On value)? on,
    TResult? Function(Off value)? off,
  }) {
    return off?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(On value)? on,
    TResult Function(Off value)? off,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off(this);
    }
    return orElse();
  }
}

abstract class Off implements NetEvent {
  const factory Off() = _$OffImpl;
}

/// @nodoc
mixin _$NetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() notConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? notConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? notConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(NotConnected value) notConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(NotConnected value)? notConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(NotConnected value)? notConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetStateCopyWith<$Res> {
  factory $NetStateCopyWith(NetState value, $Res Function(NetState) then) =
      _$NetStateCopyWithImpl<$Res, NetState>;
}

/// @nodoc
class _$NetStateCopyWithImpl<$Res, $Val extends NetState>
    implements $NetStateCopyWith<$Res> {
  _$NetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectedImplCopyWith<$Res> {
  factory _$$ConnectedImplCopyWith(
          _$ConnectedImpl value, $Res Function(_$ConnectedImpl) then) =
      __$$ConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedImplCopyWithImpl<$Res>
    extends _$NetStateCopyWithImpl<$Res, _$ConnectedImpl>
    implements _$$ConnectedImplCopyWith<$Res> {
  __$$ConnectedImplCopyWithImpl(
      _$ConnectedImpl _value, $Res Function(_$ConnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectedImpl implements Connected {
  const _$ConnectedImpl();

  @override
  String toString() {
    return 'NetState.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() notConnected,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? notConnected,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? notConnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(NotConnected value) notConnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(NotConnected value)? notConnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(NotConnected value)? notConnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class Connected implements NetState {
  const factory Connected() = _$ConnectedImpl;
}

/// @nodoc
abstract class _$$NotConnectedImplCopyWith<$Res> {
  factory _$$NotConnectedImplCopyWith(
          _$NotConnectedImpl value, $Res Function(_$NotConnectedImpl) then) =
      __$$NotConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotConnectedImplCopyWithImpl<$Res>
    extends _$NetStateCopyWithImpl<$Res, _$NotConnectedImpl>
    implements _$$NotConnectedImplCopyWith<$Res> {
  __$$NotConnectedImplCopyWithImpl(
      _$NotConnectedImpl _value, $Res Function(_$NotConnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotConnectedImpl implements NotConnected {
  const _$NotConnectedImpl();

  @override
  String toString() {
    return 'NetState.notConnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() notConnected,
  }) {
    return notConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? notConnected,
  }) {
    return notConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? notConnected,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(NotConnected value) notConnected,
  }) {
    return notConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(NotConnected value)? notConnected,
  }) {
    return notConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(NotConnected value)? notConnected,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected(this);
    }
    return orElse();
  }
}

abstract class NotConnected implements NetState {
  const factory NotConnected() = _$NotConnectedImpl;
}
