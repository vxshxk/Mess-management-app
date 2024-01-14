import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mess_app/domain/features/notifications/fcm.dart';
import 'package:mess_app/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:mess_app/presentation/bloc/edit_bloc/edit_bloc.dart';
import 'package:mess_app/presentation/bloc/mess_bloc/mess_bloc.dart';
import 'package:mess_app/presentation/bloc/nav_bloc/nav_bloc.dart';
import 'package:mess_app/presentation/bloc/notif_bloc/notif_bloc.dart';
import 'package:mess_app/presentation/bloc/validator_bloc/val_bloc.dart';
import 'core/routes.dart';
import 'core/firebase_options.dart';
import 'data/models/mess_model.dart';
import 'data/models/user_model.dart';
import 'domain/features/notifications/local_notifs.dart';

final authBloc = AuthBloc();
final messBloc = MessBloc();
final navBloc = NavBloc();
final editBloc = EditBloc();
final valBloc = ValBloc();
final notifBloc = NotifBloc();

final db0 = FirebaseFirestore.instance;

final db = db0.collection('Waitinglist');
final db1 = db0.collection('Mess');
final db2 = db0.collection('Users');

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
  await FireNotif().initNotifs();
  NotificationService().initNotification();
  db0.settings = const Settings(persistenceEnabled: true,cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => authBloc..add(const AuthCheck()),
        ),
        BlocProvider(
          create: (context) => messBloc,
        ),
        BlocProvider(
          create: (context) => navBloc,
        ),
        BlocProvider(
          create: (context) => editBloc,
        ),
        BlocProvider(
          create: (context) => valBloc,
        ),
        BlocProvider(
          create: (context) => notifBloc,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
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