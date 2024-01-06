import 'package:cloud_firestore/cloud_firestore.dart';
import '../../features/mess_apply/mess_apply.dart';

class MessApplyImpl extends MessApply {
  MessApplyImpl({required super.user, required super.mess});


  @override
  Future<void> setMessToUser() async {
    final CollectionReference userCollectionReference = FirebaseFirestore
        .instance.collection('Users');
    await userCollectionReference.doc(user?.uid).update({"mess": mess?.name});
  }

  @override
  Future<void> applyMessChange(int topUp) async {
    int? ref;
    final CollectionReference userCollectionReference = FirebaseFirestore
        .instance.collection('Waitinglist');
    DocumentSnapshot documentSnapshot = await userCollectionReference.doc(
        mess?.name).get();
    if (documentSnapshot.exists) {
      Map<String, dynamic> existingData = documentSnapshot.data() as Map<
          String,
          dynamic>? ?? {};
      ref = existingData.length;
      await userCollectionReference.doc(mess?.name).update({
        "$ref": {
          "uid": user!.uid!,
          "name": user!.name!,
          "topUp": topUp,
        }
      });
    } else {
      ref = 0;
      await userCollectionReference.doc(mess?.name).set({
        "$ref": {
          "uid": user!.uid!,
          "name": user!.name!,
          "topUp": topUp,
        }
      });
    }
  }
}