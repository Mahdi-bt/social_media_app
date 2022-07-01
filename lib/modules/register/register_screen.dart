import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = '/register';

  const RegisterScreen({Key? key}) : super(key: key);
  static Route route() => MaterialPageRoute(
      builder: (_) => const RegisterScreen(),
      settings: const RouteSettings(name: routeName));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Screen'),
      ),
    );
  }
}
