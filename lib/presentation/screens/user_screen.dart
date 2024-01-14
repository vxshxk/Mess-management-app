import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mess_app/presentation/screens/add_mess.dart';
import '../../core/routes.dart';
import '../../data/models/user_model.dart';
import '../../main.dart';
import '../bloc/auth_bloc/auth_bloc.dart';
import '../bloc/mess_bloc/mess_bloc.dart';
import '../bloc/nav_bloc/nav_bloc.dart';
import 'dashboard.dart';
import 'mess_list.dart';
import 'services_screen.dart';


class UserScreen extends StatelessWidget {
  UserScreen({super.key});

  int currentIndex = 0;

  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: db2.doc(user?.uid).get(),
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

          Map<String, dynamic> resMap = snapshot.data!.data() as Map<
              String,
              dynamic>;
          UserModel exUser =
              UserModel.fromJson(resMap);


          return Scaffold(
            appBar: AppBar(
              title: BlocBuilder<NavBloc, NavState>(
                builder: (context, state) {
                  if (state is Second) {
                    return const Text("Apply");
                  } else if (state is Third) {
                    return const Text("Your Mess");
                  }
                  return const Text("Home");
                },
              ),
              actions: [
                exUser.role == "admin"
                    ? IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddMessScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.add),
                  tooltip: "Add Mess",
                )
                    : IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Center(child: Text("Application Status", style: TextStyle(fontSize: 20),)),
                          content: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                                  stream: db2.doc(user?.uid).snapshots(),
                                  builder: (context, snapshot) {
                                    Map<String, dynamic> resMap = snapshot.data!.data() as Map<String, dynamic>;
                                      if(resMap["status"] == "a"){
                                        return const Text("You haven't applied for any mess yet!");
                                    }else if(resMap["status"] == "r"){
                                        return const Text("Applied! Request pending");
                                     }
                                      else if(resMap["status"] == "d"){
                                        messBloc.add(const Back());
                                        return const Text("Sorry! Your request was deleted");
                                      }
                                      messBloc.add(const Back());
                                      return const Text("Mess change request approved! Your mess has been changed");
                                  }
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Center(
                                child: TextButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, child: const Text("Close")),
                              )
                            ],
                          )
                        );
                      },
                    );
                },
                  icon: const Icon(Icons.notifications),
                  color: Colors.deepPurple[400],
                  tooltip: "Request Status",
                ),
                TextButton(
                  onPressed: () {
                    authBloc.add(const SignOutEvent());
                    navBloc.add(const FirstPage());
                    Navigator.of(context).popAndPushNamed(AppRoutes.signIn);
                    messBloc.add(const Back());
                  },
                  child: const Text("Sign Out"),
                ),
              ],
            ),
            body: BlocBuilder<NavBloc, NavState>(
              builder: (context, state) {
                if (state is Second) {
                  return TabWidget2(user: exUser);
                } else if (state is Third) {
                  return TabWidget3(user: exUser);
                }
                return TabWidget1();
              },
            ),

          );
        });
  }
}
