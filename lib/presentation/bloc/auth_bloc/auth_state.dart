part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthLoading extends AuthState {}

class Authenticated extends AuthState {}

class UnAuthenticated extends AuthState {}
