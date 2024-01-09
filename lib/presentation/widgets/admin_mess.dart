import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../data/models/mess_model.dart';

class AdminMessList extends StatelessWidget {
  const AdminMessList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance.collection('Mess').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return SpinKitRotatingCircle(
                color: Colors.deepPurple[400],
                size: 50.0,
              ); // Show a loading indicator while waiting for data
            }

            if (!snapshot.hasData || snapshot.hasError) {
              return const Text("Error loading data"); // Handle error state
            }


            return SingleChildScrollView(
              child: Material(
                child: Column(
                  children: [
                    const SizedBox(height: 90),
                    const Text("List of available messes",style: TextStyle(fontWeight: FontWeight.bold)),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        Map<String,dynamic> resMa= snapshot.data!.docs[index].data();
                        MessModel userone = MessModel.fromJson(resMa);
                        return Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.deepPurple[300]!,
                            ),
                          ),
                          child: Expanded(
                            flex: 9,
                            child: ListTile(
                              onTap: () async {
                                //await ReplacePrevMess(resMap2, resMa, idx, doc!);
                                //await changeMess(resMa, idx,doc!);
                                //await deleteRequest(idx,doc!);
                              },
                              title: Text(
                                userone.name!,
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Capacity: ${userone.currentSize!}/${userone.size}",
                              ),

                            ),
                          ),
                        );
                      },
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
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Close", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}





