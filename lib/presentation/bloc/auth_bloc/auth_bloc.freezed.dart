// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheck,
    required TResult Function(String? error) errorEvent,
    required TResult Function(String? email, String? password) signInEvent,
    required TResult Function(String? email, String? password) signUpEvent,
    required TResult Function() signOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheck,
    TResult? Function(String? error)? errorEvent,
    TResult? Function(String? email, String? password)? signInEvent,
    TResult? Function(String? email, String? password)? signUpEvent,
    TResult? Function()? signOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheck,
    TResult Function(String? error)? errorEvent,
    TResult Function(String? email, String? password)? signInEvent,
    TResult Function(String? email, String? password)? signUpEvent,
    TResult Function()? signOutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheck value) authCheck,
    required TResult Function(ErrorEvent value) errorEvent,
    required TResult Function(SignInEvent value) signInEvent,
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(SignOutEvent value) signOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheck value)? authCheck,
    TResult? Function(ErrorEvent value)? errorEvent,
    TResult? Function(SignInEvent value)? signInEvent,
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(SignOutEvent value)? signOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheck value)? authCheck,
    TResult Function(ErrorEvent value)? errorEvent,
    TResult Function(SignInEvent value)? signInEvent,
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(SignOutEvent value)? signOutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthCheckImplCopyWith<$Res> {
  factory _$$AuthCheckImplCopyWith(
          _$AuthCheckImpl value, $Res Function(_$AuthCheckImpl) then) =
      __$$AuthCheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthCheckImpl>
    implements _$$AuthCheckImplCopyWith<$Res> {
  __$$AuthCheckImplCopyWithImpl(
      _$AuthCheckImpl _value, $Res Function(_$AuthCheckImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCheckImpl implements AuthCheck {
  const _$AuthCheckImpl();

  @override
  String toString() {
    return 'AuthEvent.authCheck()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthCheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheck,
    required TResult Function(String? error) errorEvent,
    required TResult Function(String? email, String? password) signInEvent,
    required TResult Function(String? email, String? password) signUpEvent,
    required TResult Function() signOutEvent,
  }) {
    return authCheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheck,
    TResult? Function(String? error)? errorEvent,
    TResult? Function(String? email, String? password)? signInEvent,
    TResult? Function(String? email, String? password)? signUpEvent,
    TResult? Function()? signOutEvent,
  }) {
    return authCheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheck,
    TResult Function(String? error)? errorEvent,
    TResult Function(String? email, String? password)? signInEvent,
    TResult Function(String? email, String? password)? signUpEvent,
    TResult Function()? signOutEvent,
    required TResult orElse(),
  }) {
    if (authCheck != null) {
      return authCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheck value) authCheck,
    required TResult Function(ErrorEvent value) errorEvent,
    required TResult Function(SignInEvent value) signInEvent,
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(SignOutEvent value) signOutEvent,
  }) {
    return authCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheck value)? authCheck,
    TResult? Function(ErrorEvent value)? errorEvent,
    TResult? Function(SignInEvent value)? signInEvent,
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(SignOutEvent value)? signOutEvent,
  }) {
    return authCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheck value)? authCheck,
    TResult Function(ErrorEvent value)? errorEvent,
    TResult Function(SignInEvent value)? signInEvent,
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(SignOutEvent value)? signOutEvent,
    required TResult orElse(),
  }) {
    if (authCheck != null) {
      return authCheck(this);
    }
    return orElse();
  }
}

abstract class AuthCheck implements AuthEvent {
  const factory AuthCheck() = _$AuthCheckImpl;
}

/// @nodoc
abstract class _$$ErrorEventImplCopyWith<$Res> {
  factory _$$ErrorEventImplCopyWith(
          _$ErrorEventImpl value, $Res Function(_$ErrorEventImpl) then) =
      __$$ErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ErrorEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ErrorEventImpl>
    implements _$$ErrorEventImplCopyWith<$Res> {
  __$$ErrorEventImplCopyWithImpl(
      _$ErrorEventImpl _value, $Res Function(_$ErrorEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ErrorEventImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorEventImpl implements ErrorEvent {
  const _$ErrorEventImpl({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'AuthEvent.errorEvent(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorEventImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorEventImplCopyWith<_$ErrorEventImpl> get copyWith =>
      __$$ErrorEventImplCopyWithImpl<_$ErrorEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheck,
    required TResult Function(String? error) errorEvent,
    required TResult Function(String? email, String? password) signInEvent,
    required TResult Function(String? email, String? password) signUpEvent,
    required TResult Function() signOutEvent,
  }) {
    return errorEvent(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheck,
    TResult? Function(String? error)? errorEvent,
    TResult? Function(String? email, String? password)? signInEvent,
    TResult? Function(String? email, String? password)? signUpEvent,
    TResult? Function()? signOutEvent,
  }) {
    return errorEvent?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheck,
    TResult Function(String? error)? errorEvent,
    TResult Function(String? email, String? password)? signInEvent,
    TResult Function(String? email, String? password)? signUpEvent,
    TResult Function()? signOutEvent,
    required TResult orElse(),
  }) {
    if (errorEvent != null) {
      return errorEvent(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheck value) authCheck,
    required TResult Function(ErrorEvent value) errorEvent,
    required TResult Function(SignInEvent value) signInEvent,
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(SignOutEvent value) signOutEvent,
  }) {
    return errorEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheck value)? authCheck,
    TResult? Function(ErrorEvent value)? errorEvent,
    TResult? Function(SignInEvent value)? signInEvent,
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(SignOutEvent value)? signOutEvent,
  }) {
    return errorEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheck value)? authCheck,
    TResult Function(ErrorEvent value)? errorEvent,
    TResult Function(SignInEvent value)? signInEvent,
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(SignOutEvent value)? signOutEvent,
    required TResult orElse(),
  }) {
    if (errorEvent != null) {
      return errorEvent(this);
    }
    return orElse();
  }
}

abstract class ErrorEvent implements AuthEvent {
  const factory ErrorEvent({final String? error}) = _$ErrorEventImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$ErrorEventImplCopyWith<_$ErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInEventImplCopyWith<$Res> {
  factory _$$SignInEventImplCopyWith(
          _$SignInEventImpl value, $Res Function(_$SignInEventImpl) then) =
      __$$SignInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$SignInEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInEventImpl>
    implements _$$SignInEventImplCopyWith<$Res> {
  __$$SignInEventImplCopyWithImpl(
      _$SignInEventImpl _value, $Res Function(_$SignInEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$SignInEventImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignInEventImpl implements SignInEvent {
  const _$SignInEventImpl({required this.email, required this.password});

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'AuthEvent.signInEvent(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      __$$SignInEventImplCopyWithImpl<_$SignInEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheck,
    required TResult Function(String? error) errorEvent,
    required TResult Function(String? email, String? password) signInEvent,
    required TResult Function(String? email, String? password) signUpEvent,
    required TResult Function() signOutEvent,
  }) {
    return signInEvent(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheck,
    TResult? Function(String? error)? errorEvent,
    TResult? Function(String? email, String? password)? signInEvent,
    TResult? Function(String? email, String? password)? signUpEvent,
    TResult? Function()? signOutEvent,
  }) {
    return signInEvent?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheck,
    TResult Function(String? error)? errorEvent,
    TResult Function(String? email, String? password)? signInEvent,
    TResult Function(String? email, String? password)? signUpEvent,
    TResult Function()? signOutEvent,
    required TResult orElse(),
  }) {
    if (signInEvent != null) {
      return signInEvent(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheck value) authCheck,
    required TResult Function(ErrorEvent value) errorEvent,
    required TResult Function(SignInEvent value) signInEvent,
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(SignOutEvent value) signOutEvent,
  }) {
    return signInEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheck value)? authCheck,
    TResult? Function(ErrorEvent value)? errorEvent,
    TResult? Function(SignInEvent value)? signInEvent,
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(SignOutEvent value)? signOutEvent,
  }) {
    return signInEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheck value)? authCheck,
    TResult Function(ErrorEvent value)? errorEvent,
    TResult Function(SignInEvent value)? signInEvent,
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(SignOutEvent value)? signOutEvent,
    required TResult orElse(),
  }) {
    if (signInEvent != null) {
      return signInEvent(this);
    }
    return orElse();
  }
}

abstract class SignInEvent implements AuthEvent {
  const factory SignInEvent(
      {required final String? email,
      required final String? password}) = _$SignInEventImpl;

  String? get email;
  String? get password;
  @JsonKey(ignore: true)
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEventImplCopyWith<$Res> {
  factory _$$SignUpEventImplCopyWith(
          _$SignUpEventImpl value, $Res Function(_$SignUpEventImpl) then) =
      __$$SignUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$SignUpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpEventImpl>
    implements _$$SignUpEventImplCopyWith<$Res> {
  __$$SignUpEventImplCopyWithImpl(
      _$SignUpEventImpl _value, $Res Function(_$SignUpEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$SignUpEventImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignUpEventImpl implements SignUpEvent {
  const _$SignUpEventImpl({required this.email, required this.password});

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'AuthEvent.signUpEvent(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      __$$SignUpEventImplCopyWithImpl<_$SignUpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheck,
    required TResult Function(String? error) errorEvent,
    required TResult Function(String? email, String? password) signInEvent,
    required TResult Function(String? email, String? password) signUpEvent,
    required TResult Function() signOutEvent,
  }) {
    return signUpEvent(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheck,
    TResult? Function(String? error)? errorEvent,
    TResult? Function(String? email, String? password)? signInEvent,
    TResult? Function(String? email, String? password)? signUpEvent,
    TResult? Function()? signOutEvent,
  }) {
    return signUpEvent?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheck,
    TResult Function(String? error)? errorEvent,
    TResult Function(String? email, String? password)? signInEvent,
    TResult Function(String? email, String? password)? signUpEvent,
    TResult Function()? signOutEvent,
    required TResult orElse(),
  }) {
    if (signUpEvent != null) {
      return signUpEvent(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheck value) authCheck,
    required TResult Function(ErrorEvent value) errorEvent,
    required TResult Function(SignInEvent value) signInEvent,
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(SignOutEvent value) signOutEvent,
  }) {
    return signUpEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheck value)? authCheck,
    TResult? Function(ErrorEvent value)? errorEvent,
    TResult? Function(SignInEvent value)? signInEvent,
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(SignOutEvent value)? signOutEvent,
  }) {
    return signUpEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheck value)? authCheck,
    TResult Function(ErrorEvent value)? errorEvent,
    TResult Function(SignInEvent value)? signInEvent,
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(SignOutEvent value)? signOutEvent,
    required TResult orElse(),
  }) {
    if (signUpEvent != null) {
      return signUpEvent(this);
    }
    return orElse();
  }
}

abstract class SignUpEvent implements AuthEvent {
  const factory SignUpEvent(
      {required final String? email,
      required final String? password}) = _$SignUpEventImpl;

  String? get email;
  String? get password;
  @JsonKey(ignore: true)
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutEventImplCopyWith<$Res> {
  factory _$$SignOutEventImplCopyWith(
          _$SignOutEventImpl value, $Res Function(_$SignOutEventImpl) then) =
      __$$SignOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutEventImpl>
    implements _$$SignOutEventImplCopyWith<$Res> {
  __$$SignOutEventImplCopyWithImpl(
      _$SignOutEventImpl _value, $Res Function(_$SignOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutEventImpl implements SignOutEvent {
  const _$SignOutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.signOutEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheck,
    required TResult Function(String? error) errorEvent,
    required TResult Function(String? email, String? password) signInEvent,
    required TResult Function(String? email, String? password) signUpEvent,
    required TResult Function() signOutEvent,
  }) {
    return signOutEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheck,
    TResult? Function(String? error)? errorEvent,
    TResult? Function(String? email, String? password)? signInEvent,
    TResult? Function(String? email, String? password)? signUpEvent,
    TResult? Function()? signOutEvent,
  }) {
    return signOutEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheck,
    TResult Function(String? error)? errorEvent,
    TResult Function(String? email, String? password)? signInEvent,
    TResult Function(String? email, String? password)? signUpEvent,
    TResult Function()? signOutEvent,
    required TResult orElse(),
  }) {
    if (signOutEvent != null) {
      return signOutEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheck value) authCheck,
    required TResult Function(ErrorEvent value) errorEvent,
    required TResult Function(SignInEvent value) signInEvent,
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(SignOutEvent value) signOutEvent,
  }) {
    return signOutEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheck value)? authCheck,
    TResult? Function(ErrorEvent value)? errorEvent,
    TResult? Function(SignInEvent value)? signInEvent,
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(SignOutEvent value)? signOutEvent,
  }) {
    return signOutEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheck value)? authCheck,
    TResult Function(ErrorEvent value)? errorEvent,
    TResult Function(SignInEvent value)? signInEvent,
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(SignOutEvent value)? signOutEvent,
    required TResult orElse(),
  }) {
    if (signOutEvent != null) {
      return signOutEvent(this);
    }
    return orElse();
  }
}

abstract class SignOutEvent implements AuthEvent {
  const factory SignOutEvent() = _$SignOutEventImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? role) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() authLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? role)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function()? authLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? role)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? authLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(AuthLoading value) authLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(AuthLoading value)? authLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthLoading value)? authLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? role});
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
  }) {
    return _then(_$AuthenticatedImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl({required this.role});

  @override
  final String? role;

  @override
  String toString() {
    return 'AuthState.authenticated(role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? role) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() authLoading,
  }) {
    return authenticated(role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? role)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function()? authLoading,
  }) {
    return authenticated?.call(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? role)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? authLoading,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(AuthLoading value) authLoading,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(AuthLoading value)? authLoading,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthLoading value)? authLoading,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated({required final String? role}) =
      _$AuthenticatedImpl;

  String? get role;
  @JsonKey(ignore: true)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthenticatedImplCopyWith<$Res> {
  factory _$$UnAuthenticatedImplCopyWith(_$UnAuthenticatedImpl value,
          $Res Function(_$UnAuthenticatedImpl) then) =
      __$$UnAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnAuthenticatedImpl>
    implements _$$UnAuthenticatedImplCopyWith<$Res> {
  __$$UnAuthenticatedImplCopyWithImpl(
      _$UnAuthenticatedImpl _value, $Res Function(_$UnAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthenticatedImpl implements UnAuthenticated {
  const _$UnAuthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? role) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() authLoading,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? role)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function()? authLoading,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? role)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? authLoading,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(AuthLoading value) authLoading,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(AuthLoading value)? authLoading,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthLoading value)? authLoading,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements AuthState {
  const factory UnAuthenticated() = _$UnAuthenticatedImpl;
}

/// @nodoc
abstract class _$$AuthLoadingImplCopyWith<$Res> {
  factory _$$AuthLoadingImplCopyWith(
          _$AuthLoadingImpl value, $Res Function(_$AuthLoadingImpl) then) =
      __$$AuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingImpl>
    implements _$$AuthLoadingImplCopyWith<$Res> {
  __$$AuthLoadingImplCopyWithImpl(
      _$AuthLoadingImpl _value, $Res Function(_$AuthLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoadingImpl implements AuthLoading {
  const _$AuthLoadingImpl();

  @override
  String toString() {
    return 'AuthState.authLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? role) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() authLoading,
  }) {
    return authLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? role)? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function()? authLoading,
  }) {
    return authLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? role)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? authLoading,
    required TResult orElse(),
  }) {
    if (authLoading != null) {
      return authLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(AuthLoading value) authLoading,
  }) {
    return authLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unAuthenticated,
    TResult? Function(AuthLoading value)? authLoading,
  }) {
    return authLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(AuthLoading value)? authLoading,
    required TResult orElse(),
  }) {
    if (authLoading != null) {
      return authLoading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoadingImpl;
}
