import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mess_app/presentation/screens/sign_up.dart';
import 'package:mess_app/presentation/screens/user_screen.dart';
import '../../core/email_validator.dart';
import '../../core/routes.dart';
import '../../data/models/user_model.dart';
import '../bloc/auth_bloc/auth_bloc.dart';
import 'add_mess.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  String? email="";
  String? password="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        if(state is Authenticated) {
          if (state.role == 'n') {
            Navigator.popAndPushNamed(context, AppRoutes.user);
          }else{
            User? user = FirebaseAuth.instance.currentUser;
            String? uid = user?.uid;
            final result = await FirebaseFirestore.instance.collection('Users').doc(uid).get();
            final UserModel exUser = UserModel.fromJson(result.data() as Map<String, dynamic>);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => UserScreen(),
              ),
            );
          }
        }else if(state is UnAuthenticated){
          if(state.e == 'e'){
            Navigator.popAndPushNamed(context, AppRoutes.signIn);
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Error! Retry login"),
                )
            );
          }else {
            Navigator.popAndPushNamed(context, AppRoutes.signIn);
          }
        }else{
          Navigator.popAndPushNamed(context, AppRoutes.loading);
        }
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text("Login",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text("Login to your account",
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.grey[700]),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color:Colors.black87
                          ),

                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          onChanged: (val) {
                            email=val;
                          },
                          obscureText: false,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color:Colors.black87
                          ),

                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          obscureText: true,
                          onChanged: (val) {
                            password=val;
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
                    )
                  ],
                ),
              ),
              Padding(padding:
              const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  padding: const EdgeInsets.only(top: 3, left: 3),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () async {
                      if(isEmailValid(email!) || password!.length>=6){
                        BlocProvider.of<AuthBloc>(context).add(SignInEvent(email: email!, password: password!));
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
                      "Login", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,

                    ),
                    ),

                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Don't have an account?"),
                  const SizedBox(width: 5,),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),


            ],
          ))
        ],
      ),
      ),
),
    );
  }
}
