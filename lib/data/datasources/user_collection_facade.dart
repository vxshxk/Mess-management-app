import 'package:dartz/dartz.dart';
import '../../core/failures/failures.dart';
import '../models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserCollectionFacade {
  UserModel? user;

  UserCollectionFacade({required this.user});

  final CollectionReference userCollectionReference = FirebaseFirestore.instance.collection('Users');

  Future<Either<Failure,UserModel>> setUser() async {
    try{
      await userCollectionReference.doc(user?.uid).set(user?.toJson());
      print("yah");
      return right(user!); //returns the updated User
    }catch(error) {
      return left(ServerFailure());
    }
  }

 Future<Either<Failure, UserModel>> getUser() async {
  try {
    final DocumentSnapshot documentSnapshot = await userCollectionReference.doc(user!.uid).get();

    if (documentSnapshot.exists) {
      final UserModel user = UserModel.fromJson(documentSnapshot.data() as Map<String, dynamic>);
      return right(user);
    } else {
      // Handle the case when the document does not exist
      return left(TypeFailure());
    }
  } catch (e) {
    return left(ServerFailure());
  }
}

 
}
