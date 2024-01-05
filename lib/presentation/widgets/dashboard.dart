import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../data/models/user_model.dart';

final db2 = FirebaseFirestore.instance.collection('Users');

class TabWidget1 extends StatelessWidget {
  final UserModel? user;
  const TabWidget1({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 20,
            child: Column(
              children: [
                const Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 11, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 8,
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 7, 15, 15),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.grey[100]),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15.0,
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 15.0,
                                    ),
                                    const Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          radius: 100.0,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Column(
                                        children: [
                                          Text("Name: ${user?.name}"),
                                          const SizedBox(),
                                          Text("Roll No.: ${user?.rollNumber}"),
                                          const SizedBox(),
                                          Text("email: ${user?.email}"),
                                          const SizedBox(),
                                          Text("role: ${user?.role}"),
                                          const SizedBox(),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 3, child: Text("Placeholder")),
                                    Expanded(
                                        flex: 5, child: Text("Placeholder"))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ))),
            StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
              stream: db2.doc(user?.uid).snapshots(),
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

                return user?.mess == " " ? const Expanded(flex: 9, child: GoToAddMess()): const MessDetails();
              },
            )

              ],
            )
        ),
      ],
    );
  }
}

class MessDetails extends StatelessWidget {
  const MessDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 11, 0, 0),
            child: Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Text(
                  "Mess Details",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 8,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 7, 15, 15),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 15.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15.0,
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 100.0,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Column(
                                children: [
                                  Text("Name: "),
                                  SizedBox(),
                                  Text("Roll No.: "),
                                  SizedBox(),
                                  Text("Year: "),
                                  SizedBox(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 3, child: Text("Placeholder")),
                            Expanded(
                                flex: 5, child: Text("Placeholder"))
                          ],
                        ),
                      )
                    ],
                  ),
                ))),
      ],
    );
  }
}

class GoToAddMess extends StatelessWidget {
  const GoToAddMess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 5,
          child: Center(child: Text("You haven't registered to any mess yet,"))
        ),
        Expanded(
          flex: 1,
          child: TextButton(
              onPressed: () {
              },
              child: const Text("Register for a mess")
          ),
        ),
        const SizedBox(height: 120,)
      ],
    );
  }
}

