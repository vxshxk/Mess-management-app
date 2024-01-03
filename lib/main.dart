import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mess_app/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:mess_app/presentation/bloc/mess_bloc/mess_bloc.dart';
import 'core/routes.dart';
import 'core/firebase_options.dart';
import 'data/models/mess_model.dart';
import 'data/models/user_model.dart';

final authBloc = AuthBloc();
final messBloc = MessBloc();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Hive.registerAdapter(UserModelAdapter());
  Hive.registerAdapter(MessModelAdapter());
  await Hive.openBox('UserData');
  await Hive.openBox('MessData');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => authBloc..add(const AuthCheck()),
        ),
        BlocProvider(
          create: (context) => messBloc,
        ),
      ],
      child: MaterialApp(
        key: scaffoldKey,
        theme: ThemeData(
          useMaterial3: true,
        ),
        color: Colors.white,
        initialRoute: AppRoutes.loading,
        routes: AppRoutes.routes,
      ),
    );
  }
}