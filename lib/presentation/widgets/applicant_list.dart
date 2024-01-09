import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../core/email_validator.dart';
import '../../main.dart';

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
                      child: Row(
                        children: [
                          Expanded(
                            flex: 25,
                            child: ListTile(
                              title: Text(
                                name,
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Initial TopUp: ${resMap[idx]["topUp"]}",
                              ),
                              trailing: IconButton(
                                onPressed: () async {
                                  final result=  await FirebaseFirestore.instance
                                      .collection('Users')
                                      .doc(resMap[idx]["uid"])
                                      .get();
                                  Map<String, dynamic> res= result.data() as Map<String, dynamic>;
                                  await ReplacePrevMess(res, resMap, idx, doc!);
                                  await changeMess(resMap, idx,doc!);
                                  await deleteRequest(idx,doc!);
                                },
                                icon: const Icon(Icons.done_outline_sharp),
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: IconButton(
                              onPressed: () async {
                                await deleteRequest(idx, doc!);
                              },
                              icon: const Icon(Icons.cancel_outlined),
                              color: Colors.red,
                            ),
                          ),
                          const Expanded(
                              flex: 1,
                              child: SizedBox()
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Text("   ")
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: MaterialButton(
                      color: Colors.deepPurple[400],
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),

                      ),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: const Text("Close", style: TextStyle(color: Colors.white),)),
                ),
                Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Text("   ")
                  ),
                ),
              ],
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

