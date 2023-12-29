import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mess_app/core/email_validator.dart';
import 'package:mess_app/core/routes.dart';
import 'package:mess_app/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:mess_app/presentation/screens/sign_in.dart';
import '../../main.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  String? email="";
  String? password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if(state is Authenticated){
          Navigator.popAndPushNamed(context, AppRoutes.user);
          print(state.toString());
        }else if(state is UnAuthenticated){
          print(state.toString());
          Navigator.popAndPushNamed(context, AppRoutes.signIn);
        }else if(state is AuthLoading){
          Navigator.popAndPushNamed(context, AppRoutes.loading);
          print(state.toString());
        }else{
          print(state.toString());
        }
      },
      child: Container(
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
                  const Text("Register",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text("Create a new account",
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
                          obscureText: false,
                          onChanged: (val) {
                            email=val;
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
                  onPressed: () async{
                    print(BlocProvider.of<AuthBloc>(context).state.toString());
                    if(isEmailValid(email!) || password!.length>=6){
                      BlocProvider.of<AuthBloc>(context).add(SignUpEvent(email: email!, password: password!));
                      print(BlocProvider.of<AuthBloc>(context).state.toString());
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Invalid Credentials"),
                        )
                      );
                    }
                  },
                  color: const Color(0xff0095FF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: const Text(
                    "Sign Up", style: TextStyle(
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
                  const Text("Already have an account?"),
                  const SizedBox(width: 5,),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: const Text(
                      "Sign In",
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

