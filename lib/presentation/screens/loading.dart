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
      child: const SpinKitRotatingCircle(
        color: Colors.white,
        size: 50.0,
      ),
    );
  }
}
