import 'package:dartz/dartz.dart';
import '../../core/failures/failures.dart';
import '../../domain/repositories/student_repository.dart';
import '../datasources/user_collection_facade.dart';
import '../models/user_model.dart';

class IUserRepository extends UserRepository{

  UserModel? user;
  IUserRepository({required this.user});
  
  @override
  Future<Either<Failure, UserModel>> getUserData() async {
    UserCollectionFacade collectionFacade = UserCollectionFacade(user: user);
    try{
      final user = await collectionFacade.getUser();
      return user.fold(
        (error) => left(ServerFailure()),
        (user) => right(user),
      );
    }catch(error) {
      return left(ServerFailure());
    }
  }

  @override
  Future<void> changeUserData() async {
    UserCollectionFacade collectionFacade = UserCollectionFacade(user: user);
    await collectionFacade.setUser();
}
}