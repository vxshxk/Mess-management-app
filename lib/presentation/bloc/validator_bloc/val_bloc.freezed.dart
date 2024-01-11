// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'val_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() yes,
    required TResult Function() no,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? yes,
    TResult? Function()? no,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Yes value) yes,
    required TResult Function(No value) no,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Yes value)? yes,
    TResult? Function(No value)? no,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Yes value)? yes,
    TResult Function(No value)? no,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValEventCopyWith<$Res> {
  factory $ValEventCopyWith(ValEvent value, $Res Function(ValEvent) then) =
      _$ValEventCopyWithImpl<$Res, ValEvent>;
}

/// @nodoc
class _$ValEventCopyWithImpl<$Res, $Val extends ValEvent>
    implements $ValEventCopyWith<$Res> {
  _$ValEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$YesImplCopyWith<$Res> {
  factory _$$YesImplCopyWith(_$YesImpl value, $Res Function(_$YesImpl) then) =
      __$$YesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$YesImplCopyWithImpl<$Res>
    extends _$ValEventCopyWithImpl<$Res, _$YesImpl>
    implements _$$YesImplCopyWith<$Res> {
  __$$YesImplCopyWithImpl(_$YesImpl _value, $Res Function(_$YesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$YesImpl implements Yes {
  const _$YesImpl();

  @override
  String toString() {
    return 'ValEvent.yes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$YesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() yes,
    required TResult Function() no,
  }) {
    return yes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? yes,
    TResult? Function()? no,
  }) {
    return yes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    required TResult orElse(),
  }) {
    if (yes != null) {
      return yes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Yes value) yes,
    required TResult Function(No value) no,
  }) {
    return yes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Yes value)? yes,
    TResult? Function(No value)? no,
  }) {
    return yes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Yes value)? yes,
    TResult Function(No value)? no,
    required TResult orElse(),
  }) {
    if (yes != null) {
      return yes(this);
    }
    return orElse();
  }
}

abstract class Yes implements ValEvent {
  const factory Yes() = _$YesImpl;
}

/// @nodoc
abstract class _$$NoImplCopyWith<$Res> {
  factory _$$NoImplCopyWith(_$NoImpl value, $Res Function(_$NoImpl) then) =
      __$$NoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoImplCopyWithImpl<$Res>
    extends _$ValEventCopyWithImpl<$Res, _$NoImpl>
    implements _$$NoImplCopyWith<$Res> {
  __$$NoImplCopyWithImpl(_$NoImpl _value, $Res Function(_$NoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoImpl implements No {
  const _$NoImpl();

  @override
  String toString() {
    return 'ValEvent.no()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() yes,
    required TResult Function() no,
  }) {
    return no();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? yes,
    TResult? Function()? no,
  }) {
    return no?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    required TResult orElse(),
  }) {
    if (no != null) {
      return no();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Yes value) yes,
    required TResult Function(No value) no,
  }) {
    return no(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Yes value)? yes,
    TResult? Function(No value)? no,
  }) {
    return no?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Yes value)? yes,
    TResult Function(No value)? no,
    required TResult orElse(),
  }) {
    if (no != null) {
      return no(this);
    }
    return orElse();
  }
}

abstract class No implements ValEvent {
  const factory No() = _$NoImpl;
}

/// @nodoc
mixin _$ValState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sufficient,
    required TResult Function() inSufficient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sufficient,
    TResult? Function()? inSufficient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sufficient,
    TResult Function()? inSufficient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Sufficient value) sufficient,
    required TResult Function(InSufficient value) inSufficient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Sufficient value)? sufficient,
    TResult? Function(InSufficient value)? inSufficient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Sufficient value)? sufficient,
    TResult Function(InSufficient value)? inSufficient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValStateCopyWith<$Res> {
  factory $ValStateCopyWith(ValState value, $Res Function(ValState) then) =
      _$ValStateCopyWithImpl<$Res, ValState>;
}

/// @nodoc
class _$ValStateCopyWithImpl<$Res, $Val extends ValState>
    implements $ValStateCopyWith<$Res> {
  _$ValStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SufficientImplCopyWith<$Res> {
  factory _$$SufficientImplCopyWith(
          _$SufficientImpl value, $Res Function(_$SufficientImpl) then) =
      __$$SufficientImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SufficientImplCopyWithImpl<$Res>
    extends _$ValStateCopyWithImpl<$Res, _$SufficientImpl>
    implements _$$SufficientImplCopyWith<$Res> {
  __$$SufficientImplCopyWithImpl(
      _$SufficientImpl _value, $Res Function(_$SufficientImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SufficientImpl implements Sufficient {
  const _$SufficientImpl();

  @override
  String toString() {
    return 'ValState.sufficient()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SufficientImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sufficient,
    required TResult Function() inSufficient,
  }) {
    return sufficient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sufficient,
    TResult? Function()? inSufficient,
  }) {
    return sufficient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sufficient,
    TResult Function()? inSufficient,
    required TResult orElse(),
  }) {
    if (sufficient != null) {
      return sufficient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Sufficient value) sufficient,
    required TResult Function(InSufficient value) inSufficient,
  }) {
    return sufficient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Sufficient value)? sufficient,
    TResult? Function(InSufficient value)? inSufficient,
  }) {
    return sufficient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Sufficient value)? sufficient,
    TResult Function(InSufficient value)? inSufficient,
    required TResult orElse(),
  }) {
    if (sufficient != null) {
      return sufficient(this);
    }
    return orElse();
  }
}

abstract class Sufficient implements ValState {
  const factory Sufficient() = _$SufficientImpl;
}

/// @nodoc
abstract class _$$InSufficientImplCopyWith<$Res> {
  factory _$$InSufficientImplCopyWith(
          _$InSufficientImpl value, $Res Function(_$InSufficientImpl) then) =
      __$$InSufficientImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InSufficientImplCopyWithImpl<$Res>
    extends _$ValStateCopyWithImpl<$Res, _$InSufficientImpl>
    implements _$$InSufficientImplCopyWith<$Res> {
  __$$InSufficientImplCopyWithImpl(
      _$InSufficientImpl _value, $Res Function(_$InSufficientImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InSufficientImpl implements InSufficient {
  const _$InSufficientImpl();

  @override
  String toString() {
    return 'ValState.inSufficient()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InSufficientImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sufficient,
    required TResult Function() inSufficient,
  }) {
    return inSufficient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sufficient,
    TResult? Function()? inSufficient,
  }) {
    return inSufficient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sufficient,
    TResult Function()? inSufficient,
    required TResult orElse(),
  }) {
    if (inSufficient != null) {
      return inSufficient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Sufficient value) sufficient,
    required TResult Function(InSufficient value) inSufficient,
  }) {
    return inSufficient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Sufficient value)? sufficient,
    TResult? Function(InSufficient value)? inSufficient,
  }) {
    return inSufficient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Sufficient value)? sufficient,
    TResult Function(InSufficient value)? inSufficient,
    required TResult orElse(),
  }) {
    if (inSufficient != null) {
      return inSufficient(this);
    }
    return orElse();
  }
}

abstract class InSufficient implements ValState {
  const factory InSufficient() = _$InSufficientImpl;
}
