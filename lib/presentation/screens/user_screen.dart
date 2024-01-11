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
                    return const Text("Tab 2");
                  } else if (state is Third) {
                    return const Text("Tab 3");
                  }
                  return const Text("Tab 1");
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
                    : const SizedBox(),
                TextButton(
                  onPressed: () {
                    authBloc.add(const SignOutEvent());
                    Navigator.of(context).popAndPushNamed(AppRoutes.signIn);
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
