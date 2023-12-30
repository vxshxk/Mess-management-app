import 'package:flutter/material.dart';
import 'package:mess_app/presentation/screens/reg_form.dart';
import 'package:mess_app/presentation/screens/sign_in.dart';
import 'package:mess_app/presentation/screens/sign_up.dart';
import '../presentation/screens/loading.dart';


class AppRoutes {
  static const String loading = "/loading";
  static const String signIn = "/signIn";
  static const String signUp = "/signUp";
  static const String user = "/userScreen";

  static Map<String, WidgetBuilder> routes = {
    '/signIn': (context) => SignIn(),
    '/loading': (context) => const Loading(),
    '/signUp': (context) => SignUp(),
    '/userScreen': (context) => const RegForm(),
  };
}