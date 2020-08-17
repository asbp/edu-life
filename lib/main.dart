import 'package:edu_life/components/landing.dart';
import 'package:edu_life/components/login/login.dart';
import 'package:flutter/material.dart';

import 'components/register/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat'
      ),
      home: LandingScreen(firstInstall: true),
      // home: Register(),
    );
  }
}
