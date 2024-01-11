import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:mess_app/presentation/screens/user_screen.dart';
import '../../core/email_validator.dart';
import '../../data/models/user_model.dart';
import '../../data/repositories/user_repository_impl.dart';
import '../../main.dart';
import '../bloc/edit_bloc/edit_bloc.dart';

class RegForm extends StatelessWidget {
  RegForm({super.key});
  String? uid = FirebaseAuth.instance.currentUser?.uid;
  String? name;
  String? roll;
  String? email;
  String? role= "student";
  @override
  Widget build(BuildContext context) {
      return BlocListener<EditBloc, EditState>(
        listener: (context, state) async {
          if (state is Edit) {
            final DocumentSnapshot documentSnapshot = await db2
                .doc(uid).get();
            if (documentSnapshot.exists) {
              final UserModel curUser = UserModel.fromJson(
                  documentSnapshot.data() as Map<String, dynamic>);
              name = curUser.name;
              roll = curUser.rollNumber;
              email = curUser.email;
            } else {
              name = " ";
              roll = " ";
              email = " ";
            }
          }else{
            name = " ";
            roll = " ";
            email = " ";
          }
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
                  TextFormField(
                    initialValue: name,
                    obscureText: false,
                    onChanged: (val) {
                      name = val;
                    },
                    decoration: InputDecoration(
                      labelText: name,
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
                  TextFormField(
                    initialValue: roll,
                    obscureText: false,
                    onChanged: (val) {
                      roll = val;
                    },
                    decoration: InputDecoration(
                      labelText: roll,
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
                  TextFormField(
                    initialValue: email,
                    obscureText: false,
                    onChanged: (val) {
                      email = val;
                    },
                    decoration: InputDecoration(
                      labelText: email,
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
                  child: BlocBuilder<EditBloc, EditState>(
                  builder: (context, state) {
                    if(state is Edit){
                      return MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () async {
                          if (isEmailValid(email!) && roll?.length==6) {
                              var box = Hive.box('UserData');
                              await db2.doc(uid).update({
                                "Name": name,
                                "rollNumber": roll,
                                "email": email,
                              });
                              //  box.put(uid, );
                              editBloc.add(const UnEditDetails());
                              Navigator.of(context).pop();
                            }else{
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
                          "Edit", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,

                        ),
                        ),

                      );
                    }
                    return MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () async {
                      if (isEmailValid(email!) && roll?.length==6) {
                        var box = Hive.box('UserData');
                        UserModel user = UserModel(uid: uid, name: name, rollNumber: roll, email: email, role: role, mess: " ", messBalance: 0);
                        box.put(user.uid, user);
                        IUserRepository iUserRepository = IUserRepository(user: user);
                        await iUserRepository.changeUserData();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserScreen(),
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

                  );
                  },
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
