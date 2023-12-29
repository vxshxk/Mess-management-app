import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mess_app/domain/usecases/auth/auth_impl.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(UnAuthenticated()) {
    final auth = FirebaseAuth.instance;
    final authServiceImpl = AuthServiceImpl(auth: auth);
    on<SignInEvent>((event, emit) async{
     emit(AuthLoading());
     final result = await authServiceImpl.signInWithEmailAndPassword(email: event.email!, password: event.password!);
     result.fold(
             (l) => emit(UnAuthenticated()),
             (r) => emit(Authenticated())
     );
    });

    on<SignUpEvent>((event, emit) async {
      emit(AuthLoading());
      final result = await authServiceImpl.registerWithEmailAndPassword(email: event.email!, password: event.password!);
      result.fold(
              (l) => emit(UnAuthenticated()),
              (r) => emit(Authenticated())
      );
    });

    on<SignOutEvent>((event, emit) async {
      emit(AuthLoading());
      await authServiceImpl.signOut();
      emit(UnAuthenticated());
    });

  }
}
