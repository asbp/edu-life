import 'package:edu_life/components/home/home_dashboard.dart';
import 'package:edu_life/components/splash/splash1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final bool loggedIn = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: loggedIn ? HomeDashboard() : FirstSplash(),
    );
  }
}
