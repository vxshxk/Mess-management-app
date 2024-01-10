// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() editDetails,
    required TResult Function() unEditDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? editDetails,
    TResult? Function()? unEditDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? editDetails,
    TResult Function()? unEditDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditDetails value) editDetails,
    required TResult Function(UnEditDetails value) unEditDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditDetails value)? editDetails,
    TResult? Function(UnEditDetails value)? unEditDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditDetails value)? editDetails,
    TResult Function(UnEditDetails value)? unEditDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditEventCopyWith<$Res> {
  factory $EditEventCopyWith(EditEvent value, $Res Function(EditEvent) then) =
      _$EditEventCopyWithImpl<$Res, EditEvent>;
}

/// @nodoc
class _$EditEventCopyWithImpl<$Res, $Val extends EditEvent>
    implements $EditEventCopyWith<$Res> {
  _$EditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditDetailsImplCopyWith<$Res> {
  factory _$$EditDetailsImplCopyWith(
          _$EditDetailsImpl value, $Res Function(_$EditDetailsImpl) then) =
      __$$EditDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditDetailsImplCopyWithImpl<$Res>
    extends _$EditEventCopyWithImpl<$Res, _$EditDetailsImpl>
    implements _$$EditDetailsImplCopyWith<$Res> {
  __$$EditDetailsImplCopyWithImpl(
      _$EditDetailsImpl _value, $Res Function(_$EditDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditDetailsImpl implements EditDetails {
  const _$EditDetailsImpl();

  @override
  String toString() {
    return 'EditEvent.editDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() editDetails,
    required TResult Function() unEditDetails,
  }) {
    return editDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? editDetails,
    TResult? Function()? unEditDetails,
  }) {
    return editDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? editDetails,
    TResult Function()? unEditDetails,
    required TResult orElse(),
  }) {
    if (editDetails != null) {
      return editDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditDetails value) editDetails,
    required TResult Function(UnEditDetails value) unEditDetails,
  }) {
    return editDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditDetails value)? editDetails,
    TResult? Function(UnEditDetails value)? unEditDetails,
  }) {
    return editDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditDetails value)? editDetails,
    TResult Function(UnEditDetails value)? unEditDetails,
    required TResult orElse(),
  }) {
    if (editDetails != null) {
      return editDetails(this);
    }
    return orElse();
  }
}

abstract class EditDetails implements EditEvent {
  const factory EditDetails() = _$EditDetailsImpl;
}

/// @nodoc
abstract class _$$UnEditDetailsImplCopyWith<$Res> {
  factory _$$UnEditDetailsImplCopyWith(
          _$UnEditDetailsImpl value, $Res Function(_$UnEditDetailsImpl) then) =
      __$$UnEditDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnEditDetailsImplCopyWithImpl<$Res>
    extends _$EditEventCopyWithImpl<$Res, _$UnEditDetailsImpl>
    implements _$$UnEditDetailsImplCopyWith<$Res> {
  __$$UnEditDetailsImplCopyWithImpl(
      _$UnEditDetailsImpl _value, $Res Function(_$UnEditDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnEditDetailsImpl implements UnEditDetails {
  const _$UnEditDetailsImpl();

  @override
  String toString() {
    return 'EditEvent.unEditDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnEditDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() editDetails,
    required TResult Function() unEditDetails,
  }) {
    return unEditDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? editDetails,
    TResult? Function()? unEditDetails,
  }) {
    return unEditDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? editDetails,
    TResult Function()? unEditDetails,
    required TResult orElse(),
  }) {
    if (unEditDetails != null) {
      return unEditDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditDetails value) editDetails,
    required TResult Function(UnEditDetails value) unEditDetails,
  }) {
    return unEditDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditDetails value)? editDetails,
    TResult? Function(UnEditDetails value)? unEditDetails,
  }) {
    return unEditDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditDetails value)? editDetails,
    TResult Function(UnEditDetails value)? unEditDetails,
    required TResult orElse(),
  }) {
    if (unEditDetails != null) {
      return unEditDetails(this);
    }
    return orElse();
  }
}

abstract class UnEditDetails implements EditEvent {
  const factory UnEditDetails() = _$UnEditDetailsImpl;
}

/// @nodoc
mixin _$EditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Edit value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Edit value)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Edit value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStateCopyWith<$Res> {
  factory $EditStateCopyWith(EditState value, $Res Function(EditState) then) =
      _$EditStateCopyWithImpl<$Res, EditState>;
}

/// @nodoc
class _$EditStateCopyWithImpl<$Res, $Val extends EditState>
    implements $EditStateCopyWith<$Res> {
  _$EditStateCopyWithImpl(this._value, this._then);

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
    extends _$EditStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EditState.initial()';
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
    required TResult Function() edit,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? edit,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? edit,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Edit value) edit,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Edit value)? edit,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Edit value)? edit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements EditState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$EditImplCopyWith<$Res> {
  factory _$$EditImplCopyWith(
          _$EditImpl value, $Res Function(_$EditImpl) then) =
      __$$EditImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditImplCopyWithImpl<$Res>
    extends _$EditStateCopyWithImpl<$Res, _$EditImpl>
    implements _$$EditImplCopyWith<$Res> {
  __$$EditImplCopyWithImpl(_$EditImpl _value, $Res Function(_$EditImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditImpl implements Edit {
  const _$EditImpl();

  @override
  String toString() {
    return 'EditState.edit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() edit,
  }) {
    return edit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? edit,
  }) {
    return edit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Edit value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Edit value)? edit,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Edit value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class Edit implements EditState {
  const factory Edit() = _$EditImpl;
}
