import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mess_app/presentation/bloc/auth_bloc/auth_bloc.dart';
import '../../core/routes.dart';

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
              Navigator.popAndPushNamed(context, AppRoutes.logged);
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


