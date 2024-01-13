import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mess_app/presentation/widgets/admin_mess.dart';

import '../../data/models/user_model.dart';
import '../../main.dart';

class UserList extends StatelessWidget {
  final String? doc;

  const UserList({Key? key, required this.doc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      future: db1.doc(doc).get(),
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
        List<dynamic> users = resMap["members"] ;

        if (users == null) {
          // Handle the case where "members" is null, maybe show an error message or return an empty widget.
          return const Text("No members data available");
        }


        return Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                        future: db2.doc(users[index]).get(),
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

                          Map<String, dynamic> resMap2 = snapshot.data!.data() as Map<String, dynamic>;
                          final UserModel exUser =
                          UserModel.fromJson(resMap2);

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
                                    flex: 50,
                                    child: ListTile(
                                      title: Text(
                                        resMap2["name"],
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        "Mess Balance: ${resMap2["messBalance"]}", // Fixed typo here
                                      ),
                                      trailing: IconButton(
                                        onPressed: () async {
                                          db2.doc(exUser.uid).update({"mess": " ","status": "a"});
                                          db1.doc(exUser.mess).update({
                                            "currentSize" : FieldValue.increment(-1),
                                            "members" : FieldValue.arrayRemove([exUser.uid])
                                          });
                                        },
                                        icon: const Icon(Icons.remove_circle, color: Colors.red,),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 7,
                                    child: IconButton(
                                      onPressed: () async {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => AdminMessList(user: exUser),
                                          ),
                                        );
                                      },
                                      icon: const Icon(Icons.publish_sharp),
                                      color: Colors.deepPurple[400],
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: SizedBox(),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Text("   "),
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
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Close", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Text("   "),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}