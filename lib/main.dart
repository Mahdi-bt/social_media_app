import 'package:flutter/material.dart';
import 'package:social_media_app/shared/config/router/app_router.dart';
import 'package:social_media_app/styles/thems.dart';

import 'modules/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: LoginScreen.routeName,
      theme: lightTheme,
      home: const HomeScreen(),
    );
  }
}
