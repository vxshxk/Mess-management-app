import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:mess_app/presentation/screens/user_screen.dart';

import '../../data/models/user_model.dart';
import '../../data/repositories/user_repository_impl.dart';
import '../bloc/auth_bloc/auth_bloc.dart';

class RegForm extends StatelessWidget {
  const RegForm({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    String? uid = user?.uid;

    String name = "";
    String roll = "";
    String email = "";
    String role = "student";
    String mess = " ";
      return BlocListener<AuthBloc,AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87
                    ),

                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    obscureText: false,
                    onChanged: (val) {
                      name = val;
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 0,
                            horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey[400]!
                          ),

                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]!)
                        )
                    ),
                  ),
                  const SizedBox(height: 10,)
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Roll Number",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87
                    ),

                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    obscureText: false,
                    onChanged: (val) {
                      roll = val;
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 0,
                            horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey[400]!
                          ),

                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]!)
                        )
                    ),
                  ),
                  const SizedBox(height: 10,)
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87
                    ),

                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    obscureText: false,
                    onChanged: (val) {
                      email = val;
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 0,
                            horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey[400]!
                          ),

                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400]!)
                        )
                    ),
                  ),
                  const SizedBox(height: 10,)
                ],
              ),
              const SizedBox(height: 20),
              Padding(padding:
              const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  padding: const EdgeInsets.only(top: 3, left: 3),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () async {
                      if (1==1) {
                        var box = Hive.box('UserData');
                        UserModel user = UserModel(uid: uid, name: name, rollNumber: roll, email: email, role: role, mess: mess, messBalance: 0);
                        box.put(user.uid, user);
                        IUserRepository iUserRepository = IUserRepository(user: user);
                        await iUserRepository.changeUserData();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserScreen(user: user),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Invalid Credentials"),
                            )
                        );
                      }
                    },
                    color: Colors.deepPurple[400],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),

                    ),
                    child: const Text(
                      "Submit", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,

                    ),
                    ),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
