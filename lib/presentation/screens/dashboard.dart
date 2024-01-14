import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mess_app/main.dart';
import 'package:mess_app/presentation/widgets/go_to_add.dart';
import 'package:mess_app/presentation/widgets/mess_details.dart';
import '../../data/models/user_model.dart';
import '../widgets/nav_bar.dart';

class TabWidget1 extends StatefulWidget {
  TabWidget1({Key? key}) : super(key: key);
  User? user = FirebaseAuth.instance.currentUser;
  @override
  State<TabWidget1> createState() => _TabWidget1State();
}

class _TabWidget1State extends State<TabWidget1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 10,
          child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
              stream: db2.doc(widget.user?.uid).snapshots(),
              builder: (context, snapshot) {
                return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                  future: db2.doc(widget.user?.uid).get(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SpinKitRotatingCircle(
                        color: Colors.deepPurple[400],
                        size: 50.0,
                      );
                    }

                    if (!snapshot.hasData || snapshot.hasError || snapshot.connectionState == ConnectionState.none) {
                      return const Text("Error loading data");
                    }

                    Map<String, dynamic> resMap = snapshot.data!.data() as Map<String, dynamic>;
                    final UserModel exUser =
                    UserModel.fromJson(resMap);
                    return Column(
                      children: [
                        Expanded(
                            flex: 20,
                            child: Column(
                              children: [
                                const Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 11, 0, 0),
                                    child: Text(
                                      "Profile",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                const Expanded(flex: 1, child: SizedBox()),
                                Expanded(
                                    flex: 24,
                                    child: Padding(
                                        padding: const EdgeInsets.fromLTRB(15, 7, 15, 15),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Expanded(
                                                    flex: 1,
                                                    child: Text("NAME"),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      "${exUser.name!}",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 30,
                                                        color: Colors.deepPurple[400]
                                                      ),
                                                    ),
                                                  ),
                                                  const Expanded(
                                                    flex: 1,
                                                    child: Text("ROLL NUMBER"),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      "${exUser.rollNumber!}",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 30,
                                                          color: Colors.deepPurple[400]
                                                      ),
                                                    ),
                                                  ),
                                                  const Expanded(
                                                    flex: 1,
                                                    child: Text("EMAIL"),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      "${exUser.email!}",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 30,
                                                          color: Colors.deepPurple[400]
                                                      ),
                                                    ),
                                                  ),
                                                  const Expanded(
                                                    flex: 1,
                                                    child: Text("ROLE"),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text(
                                                      "${exUser.role!}",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 30,
                                                          color: Colors.deepPurple[400]
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ))),
                                Expanded(flex: 24,child: exUser.role != "admin" ? (exUser.mess == " " ? const GoToAddMess() : MessDetails(user: exUser)) : const SizedBox()),
                              ],
                            )
                        ),
                      ],
                    );
                  },
                );
              }
          ),
        ),
        const Expanded(flex: 1, child: NavigatorBar())
      ],
    );
  }
}



