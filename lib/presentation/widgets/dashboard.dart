import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../data/models/user_model.dart';

final db2 = FirebaseFirestore.instance.collection('Users');

class TabWidget1 extends StatefulWidget {
  UserModel? user;
  TabWidget1({Key? key, required this.user}) : super(key: key);

  @override
  State<TabWidget1> createState() => _TabWidget1State();
}

class _TabWidget1State extends State<TabWidget1> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: db2.doc(widget.user?.uid).snapshots(),
      builder: (context, snapshot) {
        return Column(
          children: [
            Expanded(
                flex: 20,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 18,
                            ),
                            const Text(
                              "Profile",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            IconButton(
                              icon: const Icon(Icons.refresh),
                              onPressed: ()  async{
                                    final result = await FirebaseFirestore
                                        .instance
                                        .collection('Users')
                                        .doc(widget.user?.uid)
                                        .get();
                                    widget.user = UserModel.fromJson(
                                        result.data() as Map<String, dynamic>);
                                    setState(() {

                                    });
                                },)
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
                                              Text("Name: ${widget.user?.name}"),
                                              const SizedBox(),
                                              Text("Roll No.: ${widget.user?.rollNumber}"),
                                              const SizedBox(),
                                              Text("email: ${widget.user?.email}"),
                                              const SizedBox(),
                                              Text("role: ${widget.user?.role}"),
                                              const SizedBox(),
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
                                            flex: 3, child: Text("Current mess: ${widget.user?.mess}")),
                                        Expanded(
                                            flex: 5, child: Text("Mess Balance: ${widget.user?.messBalance}"))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ))),
                   Expanded(flex: 8,child: MessDetails(user: widget.user))

                  ],
                )
            ),
          ],
        );
      }
    );
  }
}

class MessDetails extends StatelessWidget {
  final UserModel? user;
  MessDetails({
    super.key, required this.user,
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
                                  Text("Name: ${user?.mess}"),
                                  const SizedBox(),
                                  const Text("Roll No.: "),
                                  const SizedBox(),
                                  const Text("Year: "),
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

