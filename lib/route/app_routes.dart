import 'package:chat_box/view/home/home_page.dart';
import 'package:chat_box/view/login/login_page.dart';
import 'package:chat_box/view/registration/registration_page.dart';
import 'package:chat_box/view/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => SplashPage());
      case '/registration':
        return MaterialPageRoute(builder: (_) => RegistrationPage());

      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());

      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());

      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}
