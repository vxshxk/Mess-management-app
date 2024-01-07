import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hive/hive.dart';
import 'package:mess_app/domain/features/network/network.dart';
import 'package:mess_app/main.dart';
import 'package:mess_app/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:mess_app/presentation/screens/user_screen.dart';
import '../../core/routes.dart';
import '../../data/models/user_model.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        if(state is Authenticated) {
          if (state.role == 'n') {
            Navigator.popAndPushNamed(context, AppRoutes.user);
          }else{
              var box = Hive.box('UserData');
              User? user = FirebaseAuth.instance.currentUser;
              String? uid = user?.uid;
              //print("Loading: ${Hive.box('UserData').get(uid).name}");
              bool isData = await NetworkInfoImpl().isConnected;
              print(isData);
              try {
                 if (true) {
                   final result = await FirebaseFirestore.instance
                       .collection('Users')
                       .doc(uid)
                       .get();
                   final UserModel exUser =
                   UserModel.fromJson(result.data() as Map<String, dynamic>);
                   Navigator.pushReplacement(
                     context,
                     MaterialPageRoute(
                       builder: (context) => UserScreen(user: exUser),
                     ),
                   );
                 } else {
                   final UserModel exUser = box.get(uid);
                   Navigator.pushReplacement(
                     context,
                     MaterialPageRoute(
                       builder: (context) => UserScreen(user: exUser),
                     ),
                   );
                 }
               }catch (e) {
                print(e.toString());
                 try{
                final UserModel exUser = box.get(uid);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserScreen(user: exUser),
                  ),
                );
              }catch(e){
                   print(e.toString());
                   authBloc.add(ErrorEvent(error: e.toString()));
                 }
            }
          }
        }else if(state is UnAuthenticated){

          Navigator.popAndPushNamed(context, AppRoutes.signIn);
        }else{
          Navigator.popAndPushNamed(context, AppRoutes.loading);
        }
      },
      child: Container(
        color: Colors.white,
        child: SpinKitRotatingCircle(
          color: Colors.deepPurple[400],
          size: 50.0,
        ),
      ),
    );
  }
}


