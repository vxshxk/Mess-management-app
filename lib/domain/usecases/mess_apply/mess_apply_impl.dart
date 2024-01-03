import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mess_app/core/failures/failures.dart';
import 'package:mess_app/data/repositories/user_repository_impl.dart';
import '../../features/mess_apply/mess_apply.dart';

class MessApplyImpl extends MessApply{
  MessApplyImpl({required super.user, required super.mess});


  @override
  Future<void> setMessToUser() async {
    final CollectionReference userCollectionReference = FirebaseFirestore.instance.collection('Users');
    await userCollectionReference.doc(user?.uid).update({"mess" : mess?.name});
  }

  @override
  Future<void> applyMessChange(String topUp) async {
    final CollectionReference userCollectionReference = FirebaseFirestore.instance.collection('Waitinglist');
    await userCollectionReference.doc(mess?.name).set({user!.uid! : topUp});
  }
}