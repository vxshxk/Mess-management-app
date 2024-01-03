// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mess_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataChanged value) dataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataChanged value)? dataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataChanged value)? dataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessEventCopyWith<$Res> {
  factory $MessEventCopyWith(MessEvent value, $Res Function(MessEvent) then) =
      _$MessEventCopyWithImpl<$Res, MessEvent>;
}

/// @nodoc
class _$MessEventCopyWithImpl<$Res, $Val extends MessEvent>
    implements $MessEventCopyWith<$Res> {
  _$MessEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataChangedImplCopyWith<$Res> {
  factory _$$DataChangedImplCopyWith(
          _$DataChangedImpl value, $Res Function(_$DataChangedImpl) then) =
      __$$DataChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataChangedImplCopyWithImpl<$Res>
    extends _$MessEventCopyWithImpl<$Res, _$DataChangedImpl>
    implements _$$DataChangedImplCopyWith<$Res> {
  __$$DataChangedImplCopyWithImpl(
      _$DataChangedImpl _value, $Res Function(_$DataChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataChangedImpl implements DataChanged {
  const _$DataChangedImpl();

  @override
  String toString() {
    return 'MessEvent.dataChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataChanged,
  }) {
    return dataChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataChanged,
  }) {
    return dataChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataChanged,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataChanged value) dataChanged,
  }) {
    return dataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataChanged value)? dataChanged,
  }) {
    return dataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataChanged value)? dataChanged,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(this);
    }
    return orElse();
  }
}

abstract class DataChanged implements MessEvent {
  const factory DataChanged() = _$DataChangedImpl;
}

/// @nodoc
mixin _$MessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() rebuild,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? rebuild,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? rebuild,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Rebuild value) rebuild,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Rebuild value)? rebuild,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Rebuild value)? rebuild,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessStateCopyWith<$Res> {
  factory $MessStateCopyWith(MessState value, $Res Function(MessState) then) =
      _$MessStateCopyWithImpl<$Res, MessState>;
}

/// @nodoc
class _$MessStateCopyWithImpl<$Res, $Val extends MessState>
    implements $MessStateCopyWith<$Res> {
  _$MessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MessStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MessState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() rebuild,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? rebuild,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? rebuild,
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
    required TResult Function(Rebuild value) rebuild,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Rebuild value)? rebuild,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Rebuild value)? rebuild,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MessState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RebuildImplCopyWith<$Res> {
  factory _$$RebuildImplCopyWith(
          _$RebuildImpl value, $Res Function(_$RebuildImpl) then) =
      __$$RebuildImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RebuildImplCopyWithImpl<$Res>
    extends _$MessStateCopyWithImpl<$Res, _$RebuildImpl>
    implements _$$RebuildImplCopyWith<$Res> {
  __$$RebuildImplCopyWithImpl(
      _$RebuildImpl _value, $Res Function(_$RebuildImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RebuildImpl implements Rebuild {
  const _$RebuildImpl();

  @override
  String toString() {
    return 'MessState.rebuild()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RebuildImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() rebuild,
  }) {
    return rebuild();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? rebuild,
  }) {
    return rebuild?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? rebuild,
    required TResult orElse(),
  }) {
    if (rebuild != null) {
      return rebuild();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Rebuild value) rebuild,
  }) {
    return rebuild(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Rebuild value)? rebuild,
  }) {
    return rebuild?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Rebuild value)? rebuild,
    required TResult orElse(),
  }) {
    if (rebuild != null) {
      return rebuild(this);
    }
    return orElse();
  }
}

abstract class Rebuild implements MessState {
  const factory Rebuild() = _$RebuildImpl;
}
