import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mess_app/presentation/widgets/applicant_list.dart';

import '../../main.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: db.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SpinKitRotatingCircle(
              color: Colors.deepPurple[400],
              size: 50.0,
            );
          }

          if (!snapshot.hasData || snapshot.hasError) {
            return const Text("Error loading data");
          }

          return SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                String mess = snapshot.data!.docs[index].id;
                int applicants = snapshot.data!.docs[index].data().length;
                return Material(
                  color: Colors.white,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.deepPurple[300]!,
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        mess,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Applicants: $applicants",
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ApplicantList(doc: mess),
                            ),
                          );
                        },
                        icon: const Icon(Icons.show_chart_rounded),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

