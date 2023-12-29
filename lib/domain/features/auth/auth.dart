import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/failures/failures.dart';

abstract class AuthService{
  final FirebaseAuth auth;
  AuthService({required this.auth});

  Future<Either<Failure, Unit>> registerWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();

}


