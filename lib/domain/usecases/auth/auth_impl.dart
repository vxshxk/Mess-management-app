import 'package:dartz/dartz.dart';
import 'package:mess_app/core/failures/failures.dart';
import 'package:mess_app/domain/features/auth/auth.dart';

class AuthServiceImpl extends AuthService{

  AuthServiceImpl({required super.auth});


  @override
  Future<Either<Failure, Unit>> registerWithEmailAndPassword({required String email, required String password}) async {
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
      return right(unit);
    }catch(e){
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> signInWithEmailAndPassword({required String email, required String password}) async {
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return right(unit);
    }catch(e){
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<void> signOut() async {
    await auth.signOut();
  }

}

