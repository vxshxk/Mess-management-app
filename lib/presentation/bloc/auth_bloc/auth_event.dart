part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheck() = AuthCheck;
  const factory AuthEvent.signInEvent({
    required String? email,
    required String? password
}) = SignInEvent;
  const factory AuthEvent.signUpEvent({
    required String? email,
    required String? password
}) = SignUpEvent;
  const factory AuthEvent.signOutEvent() = SignOutEvent;
}
