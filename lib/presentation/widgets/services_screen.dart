import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

final db = FirebaseFirestore.instance.collection('Waitinglist');
final db2 = FirebaseFirestore.instance.collection('Users');
class TabWidget3 extends StatelessWidget {
  const TabWidget3({Key? key});

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

class ApplicantList extends StatelessWidget {
  final String? doc;

  ApplicantList({super.key, required this.doc});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      future: db.doc(doc).get(),
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

        Map<String, dynamic> resMap = snapshot.data!.data() as Map<String, dynamic>;

        return Column(
          children: [
            SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: resMap.length,
                itemBuilder: (context, index) {
                  String idx = index.toString();
                  String name = resMap[idx]["name"];
                  return Material(
                    color: Colors.white,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.deepPurple[300]!,
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Initial TopUp: ${resMap[idx]["topUp"]}",
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            // Handle when cancel button is pressed
                          },
                          icon: const Icon(Icons.cancel_outlined),
                          color: Colors.red,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
            child: TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text("Close")),
                          ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white
                ),
              ),
            )

          ],
        );
      },
    );
  }
}
