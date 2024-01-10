// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstPage,
    required TResult Function() secondPage,
    required TResult Function() thirdPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstPage,
    TResult? Function()? secondPage,
    TResult? Function()? thirdPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstPage value) firstPage,
    required TResult Function(SecondPage value) secondPage,
    required TResult Function(ThirdPage value) thirdPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstPage value)? firstPage,
    TResult? Function(SecondPage value)? secondPage,
    TResult? Function(ThirdPage value)? thirdPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstPage value)? firstPage,
    TResult Function(SecondPage value)? secondPage,
    TResult Function(ThirdPage value)? thirdPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavEventCopyWith<$Res> {
  factory $NavEventCopyWith(NavEvent value, $Res Function(NavEvent) then) =
      _$NavEventCopyWithImpl<$Res, NavEvent>;
}

/// @nodoc
class _$NavEventCopyWithImpl<$Res, $Val extends NavEvent>
    implements $NavEventCopyWith<$Res> {
  _$NavEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FirstPageImplCopyWith<$Res> {
  factory _$$FirstPageImplCopyWith(
          _$FirstPageImpl value, $Res Function(_$FirstPageImpl) then) =
      __$$FirstPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirstPageImplCopyWithImpl<$Res>
    extends _$NavEventCopyWithImpl<$Res, _$FirstPageImpl>
    implements _$$FirstPageImplCopyWith<$Res> {
  __$$FirstPageImplCopyWithImpl(
      _$FirstPageImpl _value, $Res Function(_$FirstPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FirstPageImpl implements FirstPage {
  const _$FirstPageImpl();

  @override
  String toString() {
    return 'NavEvent.firstPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FirstPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstPage,
    required TResult Function() secondPage,
    required TResult Function() thirdPage,
  }) {
    return firstPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstPage,
    TResult? Function()? secondPage,
    TResult? Function()? thirdPage,
  }) {
    return firstPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    required TResult orElse(),
  }) {
    if (firstPage != null) {
      return firstPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstPage value) firstPage,
    required TResult Function(SecondPage value) secondPage,
    required TResult Function(ThirdPage value) thirdPage,
  }) {
    return firstPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstPage value)? firstPage,
    TResult? Function(SecondPage value)? secondPage,
    TResult? Function(ThirdPage value)? thirdPage,
  }) {
    return firstPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstPage value)? firstPage,
    TResult Function(SecondPage value)? secondPage,
    TResult Function(ThirdPage value)? thirdPage,
    required TResult orElse(),
  }) {
    if (firstPage != null) {
      return firstPage(this);
    }
    return orElse();
  }
}

abstract class FirstPage implements NavEvent {
  const factory FirstPage() = _$FirstPageImpl;
}

/// @nodoc
abstract class _$$SecondPageImplCopyWith<$Res> {
  factory _$$SecondPageImplCopyWith(
          _$SecondPageImpl value, $Res Function(_$SecondPageImpl) then) =
      __$$SecondPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SecondPageImplCopyWithImpl<$Res>
    extends _$NavEventCopyWithImpl<$Res, _$SecondPageImpl>
    implements _$$SecondPageImplCopyWith<$Res> {
  __$$SecondPageImplCopyWithImpl(
      _$SecondPageImpl _value, $Res Function(_$SecondPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SecondPageImpl implements SecondPage {
  const _$SecondPageImpl();

  @override
  String toString() {
    return 'NavEvent.secondPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SecondPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstPage,
    required TResult Function() secondPage,
    required TResult Function() thirdPage,
  }) {
    return secondPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstPage,
    TResult? Function()? secondPage,
    TResult? Function()? thirdPage,
  }) {
    return secondPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    required TResult orElse(),
  }) {
    if (secondPage != null) {
      return secondPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstPage value) firstPage,
    required TResult Function(SecondPage value) secondPage,
    required TResult Function(ThirdPage value) thirdPage,
  }) {
    return secondPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstPage value)? firstPage,
    TResult? Function(SecondPage value)? secondPage,
    TResult? Function(ThirdPage value)? thirdPage,
  }) {
    return secondPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstPage value)? firstPage,
    TResult Function(SecondPage value)? secondPage,
    TResult Function(ThirdPage value)? thirdPage,
    required TResult orElse(),
  }) {
    if (secondPage != null) {
      return secondPage(this);
    }
    return orElse();
  }
}

abstract class SecondPage implements NavEvent {
  const factory SecondPage() = _$SecondPageImpl;
}

/// @nodoc
abstract class _$$ThirdPageImplCopyWith<$Res> {
  factory _$$ThirdPageImplCopyWith(
          _$ThirdPageImpl value, $Res Function(_$ThirdPageImpl) then) =
      __$$ThirdPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThirdPageImplCopyWithImpl<$Res>
    extends _$NavEventCopyWithImpl<$Res, _$ThirdPageImpl>
    implements _$$ThirdPageImplCopyWith<$Res> {
  __$$ThirdPageImplCopyWithImpl(
      _$ThirdPageImpl _value, $Res Function(_$ThirdPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThirdPageImpl implements ThirdPage {
  const _$ThirdPageImpl();

  @override
  String toString() {
    return 'NavEvent.thirdPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThirdPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstPage,
    required TResult Function() secondPage,
    required TResult Function() thirdPage,
  }) {
    return thirdPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstPage,
    TResult? Function()? secondPage,
    TResult? Function()? thirdPage,
  }) {
    return thirdPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstPage,
    TResult Function()? secondPage,
    TResult Function()? thirdPage,
    required TResult orElse(),
  }) {
    if (thirdPage != null) {
      return thirdPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstPage value) firstPage,
    required TResult Function(SecondPage value) secondPage,
    required TResult Function(ThirdPage value) thirdPage,
  }) {
    return thirdPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstPage value)? firstPage,
    TResult? Function(SecondPage value)? secondPage,
    TResult? Function(ThirdPage value)? thirdPage,
  }) {
    return thirdPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstPage value)? firstPage,
    TResult Function(SecondPage value)? secondPage,
    TResult Function(ThirdPage value)? thirdPage,
    required TResult orElse(),
  }) {
    if (thirdPage != null) {
      return thirdPage(this);
    }
    return orElse();
  }
}

abstract class ThirdPage implements NavEvent {
  const factory ThirdPage() = _$ThirdPageImpl;
}

/// @nodoc
mixin _$NavState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() first,
    required TResult Function() second,
    required TResult Function() third,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? first,
    TResult? Function()? second,
    TResult? Function()? third,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? first,
    TResult Function()? second,
    TResult Function()? third,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(First value) first,
    required TResult Function(Second value) second,
    required TResult Function(Third value) third,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(First value)? first,
    TResult? Function(Second value)? second,
    TResult? Function(Third value)? third,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(First value)? first,
    TResult Function(Second value)? second,
    TResult Function(Third value)? third,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavStateCopyWith<$Res> {
  factory $NavStateCopyWith(NavState value, $Res Function(NavState) then) =
      _$NavStateCopyWithImpl<$Res, NavState>;
}

/// @nodoc
class _$NavStateCopyWithImpl<$Res, $Val extends NavState>
    implements $NavStateCopyWith<$Res> {
  _$NavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FirstImplCopyWith<$Res> {
  factory _$$FirstImplCopyWith(
          _$FirstImpl value, $Res Function(_$FirstImpl) then) =
      __$$FirstImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirstImplCopyWithImpl<$Res>
    extends _$NavStateCopyWithImpl<$Res, _$FirstImpl>
    implements _$$FirstImplCopyWith<$Res> {
  __$$FirstImplCopyWithImpl(
      _$FirstImpl _value, $Res Function(_$FirstImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FirstImpl implements First {
  const _$FirstImpl();

  @override
  String toString() {
    return 'NavState.first()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FirstImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() first,
    required TResult Function() second,
    required TResult Function() third,
  }) {
    return first();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? first,
    TResult? Function()? second,
    TResult? Function()? third,
  }) {
    return first?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? first,
    TResult Function()? second,
    TResult Function()? third,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(First value) first,
    required TResult Function(Second value) second,
    required TResult Function(Third value) third,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(First value)? first,
    TResult? Function(Second value)? second,
    TResult? Function(Third value)? third,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(First value)? first,
    TResult Function(Second value)? second,
    TResult Function(Third value)? third,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class First implements NavState {
  const factory First() = _$FirstImpl;
}

/// @nodoc
abstract class _$$SecondImplCopyWith<$Res> {
  factory _$$SecondImplCopyWith(
          _$SecondImpl value, $Res Function(_$SecondImpl) then) =
      __$$SecondImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SecondImplCopyWithImpl<$Res>
    extends _$NavStateCopyWithImpl<$Res, _$SecondImpl>
    implements _$$SecondImplCopyWith<$Res> {
  __$$SecondImplCopyWithImpl(
      _$SecondImpl _value, $Res Function(_$SecondImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SecondImpl implements Second {
  const _$SecondImpl();

  @override
  String toString() {
    return 'NavState.second()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SecondImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() first,
    required TResult Function() second,
    required TResult Function() third,
  }) {
    return second();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? first,
    TResult? Function()? second,
    TResult? Function()? third,
  }) {
    return second?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? first,
    TResult Function()? second,
    TResult Function()? third,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(First value) first,
    required TResult Function(Second value) second,
    required TResult Function(Third value) third,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(First value)? first,
    TResult? Function(Second value)? second,
    TResult? Function(Third value)? third,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(First value)? first,
    TResult Function(Second value)? second,
    TResult Function(Third value)? third,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class Second implements NavState {
  const factory Second() = _$SecondImpl;
}

/// @nodoc
abstract class _$$ThirdImplCopyWith<$Res> {
  factory _$$ThirdImplCopyWith(
          _$ThirdImpl value, $Res Function(_$ThirdImpl) then) =
      __$$ThirdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThirdImplCopyWithImpl<$Res>
    extends _$NavStateCopyWithImpl<$Res, _$ThirdImpl>
    implements _$$ThirdImplCopyWith<$Res> {
  __$$ThirdImplCopyWithImpl(
      _$ThirdImpl _value, $Res Function(_$ThirdImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThirdImpl implements Third {
  const _$ThirdImpl();

  @override
  String toString() {
    return 'NavState.third()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThirdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() first,
    required TResult Function() second,
    required TResult Function() third,
  }) {
    return third();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? first,
    TResult? Function()? second,
    TResult? Function()? third,
  }) {
    return third?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? first,
    TResult Function()? second,
    TResult Function()? third,
    required TResult orElse(),
  }) {
    if (third != null) {
      return third();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(First value) first,
    required TResult Function(Second value) second,
    required TResult Function(Third value) third,
  }) {
    return third(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(First value)? first,
    TResult? Function(Second value)? second,
    TResult? Function(Third value)? third,
  }) {
    return third?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(First value)? first,
    TResult Function(Second value)? second,
    TResult Function(Third value)? third,
    required TResult orElse(),
  }) {
    if (third != null) {
      return third(this);
    }
    return orElse();
  }
}

abstract class Third implements NavState {
  const factory Third() = _$ThirdImpl;
}
