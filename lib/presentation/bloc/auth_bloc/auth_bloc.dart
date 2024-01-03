import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/auth/auth_impl.dart';
import '../../../main.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const UnAuthenticated()) {
    final auth = FirebaseAuth.instance;
    final authServiceImpl = AuthServiceImpl(auth: auth);

    on<AuthCheck>((event, emit) async{
      emit(const AuthLoading());
      final Option<String> result = await authServiceImpl.getSignedInUser();
      result.fold(
            () => emit(const UnAuthenticated()),
            (student) => emit(
          const Authenticated(role: 'o'),
        ),
      );
    });

    on<ErrorEvent>((event, emit) async{
      emit(const UnAuthenticated());
      MyApp().scaffoldKey?.currentState?.showBottomSheet((context) => Text(event.error.toString()));
    });

    on<SignInEvent>((event, emit) async{
      emit(const AuthLoading());
      final result = await authServiceImpl.signInWithEmailAndPassword(email: event.email!, password: event.password!);
      result.fold(
              (l) => emit(const UnAuthenticated()),
              (r) => emit(const Authenticated(role: 'o'))
      );
    });

    on<SignUpEvent>((event, emit) async {
      emit(const AuthLoading());
      final result = await authServiceImpl.registerWithEmailAndPassword(email: event.email!, password: event.password!);
      result.fold(
              (l) => emit(const UnAuthenticated()),
              (r) => emit(const Authenticated(role: 'n'))
      );
    });

    on<SignOutEvent>((event, emit) async {
      emit(const AuthLoading());
      await authServiceImpl.signOut();
      emit(const UnAuthenticated());
    });

  }
}
