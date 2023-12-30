import 'package:flutter/material.dart';

import '../../core/routes.dart';
import '../../data/models/user_model.dart';
import '../../main.dart';
import '../bloc/auth_bloc/auth_bloc.dart';

class AdminScreen extends StatelessWidget {
  final UserModel? user;
  const AdminScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Screen"),
        actions: [
          TextButton(
            onPressed: () {
              authBloc.add(const SignOutEvent());
              Navigator.of(context).popAndPushNamed(AppRoutes.signIn);
            },
            child: const Text("Sign Out"),
          ),
        ]
      ),
      body: Center(
        child: Text("${user?.name} is an admin Nigga"),
      ),
    );
  }
}
