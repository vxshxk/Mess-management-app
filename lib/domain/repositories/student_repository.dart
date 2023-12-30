import 'package:dartz/dartz.dart';
import '../../core/failures/failures.dart';
import '../../data/models/user_model.dart';

abstract class UserRepository{
  Future<Either<Failure, UserModel>> getUserData();
  Future<void> changeUserData();

}