import 'package:flutter/material.dart';
import 'package:social_media_app/layout/home_layout.dart';
import 'package:social_media_app/modules/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeLayout.route();
      case '/login':
        return LoginScreen.route();
      case '/register':
        return RegisterScreen.route();
      case '/splash':
        return SplashScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('ERROR '),
        ),
      ),
      settings: const RouteSettings(name: '/error'),
    );
  }
}
