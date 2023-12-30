part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated({required String? role}) = Authenticated;
  const factory AuthState.unAuthenticated() = UnAuthenticated;
  const factory AuthState.authLoading() = AuthLoading;
}
