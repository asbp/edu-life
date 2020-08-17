import 'package:flutter/material.dart';

import 'components/landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, fontFamily: 'Montserrat'),
      home: LandingScreen(firstInstall: true),
      // home: Register(),
    );
  }
}
