import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/models/mess_model.dart';
import '../main.dart';

bool isEmailValid(String email) {
  // Define a regular expression for a simple email pattern
  final RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  // Check if the provided email matches the regex pattern
  return emailRegex.hasMatch(email);
}

Future<void> getAllDocuments({required List<MessModel> list}) async {
  list.clear();
  try {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('Mess')
        .get();

    for (QueryDocumentSnapshot document in querySnapshot.docs) {
      final MessModel mess = MessModel.fromJson(
          document.data() as Map<String, dynamic>);
      list.add(mess);
    }
  } catch (e) {
    print("Error getting documents: $e");
  }
}


Future<void> changeMess(Map<String, dynamic> resMap, String idx, String doc) async {
  db2.doc(resMap[idx]["uid"]).update({"mess": doc, "messBalance" : resMap[idx]["topUp"]});
  db1.doc(doc).update({"members": FieldValue.arrayUnion([resMap[idx]["uid"]]), "currentSize" : FieldValue.increment(1)});
}

Future<void> deleteRequest(String idx, String doc) async {
  await db.doc(doc).update(<String, dynamic>{
    idx : FieldValue.delete(),
  });
}

Future<void> ReplacePrevMess(Map<String, dynamic> res, Map<String, dynamic> resMap, String idx, String doc) async {
  if(res["mess"]!=" "){
    DocumentSnapshot snapshot = await db1.doc(doc).get();
    await db1.doc(doc).update({
      "members": FieldValue.arrayRemove([resMap[idx]["uid"]]),
      "currentSize": FieldValue.increment(-1)
    });
  }
}