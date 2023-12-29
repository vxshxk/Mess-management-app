import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mess_app/presentation/bloc/auth_bloc/auth_bloc.dart';

import 'core/routes.dart';
import 'core/firebase_options.dart';

final authBloc = AuthBloc();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => authBloc,
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        color: Colors.black,
        initialRoute: AppRoutes.signIn,
        routes: AppRoutes.routes,
      ),
    );
  }
}