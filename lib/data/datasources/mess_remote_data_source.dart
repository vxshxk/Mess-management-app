import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../core/failures/failures.dart';
import '../models/mess_model.dart';

class MessCollectionFacade {
  MessModel? mess;

  MessCollectionFacade({required this.mess});

  final CollectionReference messCollectionReference = FirebaseFirestore.instance
      .collection('Mess');

  Future<Either<Failure, MessModel>> setMess() async {
    try {
      await messCollectionReference.doc(mess?.name).set(mess?.toJson());
      print("yah");
      return right(mess!); //returns the updated mess
    } catch (error) {
      return left(ServerFailure());
    }
  }

  Future<Either<Failure, MessModel>> getMess() async {
    try {
      final DocumentSnapshot documentSnapshot = await messCollectionReference
          .doc(mess!.name).get();

      if (documentSnapshot.exists) {
        final MessModel mess = MessModel.fromJson(
            documentSnapshot.data() as Map<String, dynamic>);
        return right(mess);
      } else {
        // Handle the case when the document does not exist
        return left(TypeFailure());
      }
    } catch (e) {
      return left(ServerFailure());
    }
  }

}