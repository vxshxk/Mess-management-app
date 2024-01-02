import 'package:cloud_firestore/cloud_firestore.dart';
import '../data/models/mess_model.dart';

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