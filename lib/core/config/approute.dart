import 'package:flutter/material.dart';
import '../../feature/home/HomeScreen.dart';
import '../../feature/login/LoginScreen.dart';



class AppRoutes {
  static const String login = '/';
  static const String home = '/home';
  static const String futurebuilder = '/FutureBuilderScreen';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const HomeScreen(),
    login: (context) => const LoginScreen(),
  };
}