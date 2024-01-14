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
    required TResult Function() soon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? yes,
    TResult? Function()? no,
    TResult? Function()? soon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    TResult Function()? soon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Yes value) yes,
    required TResult Function(No value) no,
    required TResult Function(Soon value) soon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Yes value)? yes,
    TResult? Function(No value)? no,
    TResult? Function(Soon value)? soon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Yes value)? yes,
    TResult Function(No value)? no,
    TResult Function(Soon value)? soon,
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
    required TResult Function() soon,
  }) {
    return yes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? yes,
    TResult? Function()? no,
    TResult? Function()? soon,
  }) {
    return yes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    TResult Function()? soon,
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
    required TResult Function(Soon value) soon,
  }) {
    return yes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Yes value)? yes,
    TResult? Function(No value)? no,
    TResult? Function(Soon value)? soon,
  }) {
    return yes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Yes value)? yes,
    TResult Function(No value)? no,
    TResult Function(Soon value)? soon,
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
    required TResult Function() soon,
  }) {
    return no();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? yes,
    TResult? Function()? no,
    TResult? Function()? soon,
  }) {
    return no?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    TResult Function()? soon,
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
    required TResult Function(Soon value) soon,
  }) {
    return no(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Yes value)? yes,
    TResult? Function(No value)? no,
    TResult? Function(Soon value)? soon,
  }) {
    return no?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Yes value)? yes,
    TResult Function(No value)? no,
    TResult Function(Soon value)? soon,
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
abstract class _$$SoonImplCopyWith<$Res> {
  factory _$$SoonImplCopyWith(
          _$SoonImpl value, $Res Function(_$SoonImpl) then) =
      __$$SoonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SoonImplCopyWithImpl<$Res>
    extends _$ValEventCopyWithImpl<$Res, _$SoonImpl>
    implements _$$SoonImplCopyWith<$Res> {
  __$$SoonImplCopyWithImpl(_$SoonImpl _value, $Res Function(_$SoonImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SoonImpl implements Soon {
  const _$SoonImpl();

  @override
  String toString() {
    return 'ValEvent.soon()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SoonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() yes,
    required TResult Function() no,
    required TResult Function() soon,
  }) {
    return soon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? yes,
    TResult? Function()? no,
    TResult? Function()? soon,
  }) {
    return soon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    TResult Function()? soon,
    required TResult orElse(),
  }) {
    if (soon != null) {
      return soon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Yes value) yes,
    required TResult Function(No value) no,
    required TResult Function(Soon value) soon,
  }) {
    return soon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Yes value)? yes,
    TResult? Function(No value)? no,
    TResult? Function(Soon value)? soon,
  }) {
    return soon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Yes value)? yes,
    TResult Function(No value)? no,
    TResult Function(Soon value)? soon,
    required TResult orElse(),
  }) {
    if (soon != null) {
      return soon(this);
    }
    return orElse();
  }
}

abstract class Soon implements ValEvent {
  const factory Soon() = _$SoonImpl;
}

/// @nodoc
mixin _$ValState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sufficient,
    required TResult Function() inSufficient,
    required TResult Function() slightlySufficient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sufficient,
    TResult? Function()? inSufficient,
    TResult? Function()? slightlySufficient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sufficient,
    TResult Function()? inSufficient,
    TResult Function()? slightlySufficient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Sufficient value) sufficient,
    required TResult Function(InSufficient value) inSufficient,
    required TResult Function(SlightlySufficient value) slightlySufficient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Sufficient value)? sufficient,
    TResult? Function(InSufficient value)? inSufficient,
    TResult? Function(SlightlySufficient value)? slightlySufficient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Sufficient value)? sufficient,
    TResult Function(InSufficient value)? inSufficient,
    TResult Function(SlightlySufficient value)? slightlySufficient,
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
    required TResult Function() slightlySufficient,
  }) {
    return sufficient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sufficient,
    TResult? Function()? inSufficient,
    TResult? Function()? slightlySufficient,
  }) {
    return sufficient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sufficient,
    TResult Function()? inSufficient,
    TResult Function()? slightlySufficient,
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
    required TResult Function(SlightlySufficient value) slightlySufficient,
  }) {
    return sufficient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Sufficient value)? sufficient,
    TResult? Function(InSufficient value)? inSufficient,
    TResult? Function(SlightlySufficient value)? slightlySufficient,
  }) {
    return sufficient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Sufficient value)? sufficient,
    TResult Function(InSufficient value)? inSufficient,
    TResult Function(SlightlySufficient value)? slightlySufficient,
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
    required TResult Function() slightlySufficient,
  }) {
    return inSufficient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sufficient,
    TResult? Function()? inSufficient,
    TResult? Function()? slightlySufficient,
  }) {
    return inSufficient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sufficient,
    TResult Function()? inSufficient,
    TResult Function()? slightlySufficient,
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
    required TResult Function(SlightlySufficient value) slightlySufficient,
  }) {
    return inSufficient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Sufficient value)? sufficient,
    TResult? Function(InSufficient value)? inSufficient,
    TResult? Function(SlightlySufficient value)? slightlySufficient,
  }) {
    return inSufficient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Sufficient value)? sufficient,
    TResult Function(InSufficient value)? inSufficient,
    TResult Function(SlightlySufficient value)? slightlySufficient,
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

/// @nodoc
abstract class _$$SlightlySufficientImplCopyWith<$Res> {
  factory _$$SlightlySufficientImplCopyWith(_$SlightlySufficientImpl value,
          $Res Function(_$SlightlySufficientImpl) then) =
      __$$SlightlySufficientImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SlightlySufficientImplCopyWithImpl<$Res>
    extends _$ValStateCopyWithImpl<$Res, _$SlightlySufficientImpl>
    implements _$$SlightlySufficientImplCopyWith<$Res> {
  __$$SlightlySufficientImplCopyWithImpl(_$SlightlySufficientImpl _value,
      $Res Function(_$SlightlySufficientImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SlightlySufficientImpl implements SlightlySufficient {
  const _$SlightlySufficientImpl();

  @override
  String toString() {
    return 'ValState.slightlySufficient()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SlightlySufficientImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sufficient,
    required TResult Function() inSufficient,
    required TResult Function() slightlySufficient,
  }) {
    return slightlySufficient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sufficient,
    TResult? Function()? inSufficient,
    TResult? Function()? slightlySufficient,
  }) {
    return slightlySufficient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sufficient,
    TResult Function()? inSufficient,
    TResult Function()? slightlySufficient,
    required TResult orElse(),
  }) {
    if (slightlySufficient != null) {
      return slightlySufficient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Sufficient value) sufficient,
    required TResult Function(InSufficient value) inSufficient,
    required TResult Function(SlightlySufficient value) slightlySufficient,
  }) {
    return slightlySufficient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Sufficient value)? sufficient,
    TResult? Function(InSufficient value)? inSufficient,
    TResult? Function(SlightlySufficient value)? slightlySufficient,
  }) {
    return slightlySufficient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Sufficient value)? sufficient,
    TResult Function(InSufficient value)? inSufficient,
    TResult Function(SlightlySufficient value)? slightlySufficient,
    required TResult orElse(),
  }) {
    if (slightlySufficient != null) {
      return slightlySufficient(this);
    }
    return orElse();
  }
}

abstract class SlightlySufficient implements ValState {
  const factory SlightlySufficient() = _$SlightlySufficientImpl;
}
