import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mess_app/domain/usecases/auth/auth_impl.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthLoading()) {
    final auth = FirebaseAuth.instance;
    final authServiceImpl = AuthServiceImpl(auth: auth);

    on<AuthCheck>((event, emit) async{
      emit(AuthLoading());
      final Option<String> result = await authServiceImpl.getSignedInUser();
      result.fold(
            () => emit(UnAuthenticated()),
            (student) => emit(
          Authenticated(role: 'o'),
        ),
      );
    });

    on<SignInEvent>((event, emit) async{
     emit(AuthLoading());
     final result = await authServiceImpl.signInWithEmailAndPassword(email: event.email!, password: event.password!);
     result.fold(
             (l) => emit(UnAuthenticated()),
             (r) => emit(Authenticated(role: 'o'))
     );
    });

    on<SignUpEvent>((event, emit) async {
      emit(AuthLoading());
      final result = await authServiceImpl.registerWithEmailAndPassword(email: event.email!, password: event.password!);
      result.fold(
              (l) => emit(UnAuthenticated()),
              (r) => emit(Authenticated(role: 'n'))
      );
    });

    on<SignOutEvent>((event, emit) async {
      emit(AuthLoading());
      await authServiceImpl.signOut();
      emit(UnAuthenticated());
    });

  }
}
