part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthLoading extends AuthState {}

class Authenticated extends AuthState {
  String? role;
  Authenticated({required this.role});
}

class UnAuthenticated extends AuthState {}
