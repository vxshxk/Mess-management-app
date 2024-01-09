import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mess_app/main.dart';
import 'package:mess_app/presentation/bloc/nav_bloc/nav_bloc.dart';
import 'package:mess_app/presentation/widgets/go_to_add.dart';
import 'package:mess_app/presentation/widgets/mess_details.dart';
import '../../data/models/user_model.dart';
import 'nav_bar.dart';

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

                    if (!snapshot.hasData || snapshot.hasError) {
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
                                        SizedBox(
                                          width: 18,
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
                                                          Text("Name: ${resMap["name"]}"),
                                                          const SizedBox(),
                                                          Text("Roll No.: ${resMap["rollNum"]}"),
                                                          const SizedBox(),
                                                          Text("email: ${resMap["email"]}"),
                                                          const SizedBox(),
                                                          Text("role: ${resMap["role"]}"),
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
                                                        flex: 3, child: Text("Current mess: ${resMap["mess"]}")),
                                                    Expanded(
                                                        flex: 5, child: Text("Mess Balance: ${resMap["messBalance"]}"))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ))),
                                Expanded(flex: 8,child: exUser.mess == " " ? const GoToAddMess() : MessDetails(user: exUser)),
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



