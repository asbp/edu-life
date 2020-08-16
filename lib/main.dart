import 'package:edu_life/components/home/home_dashboard.dart';
import 'package:edu_life/components/landing.dart';
import 'package:edu_life/components/splash/splash1.dart';
import 'package:flutter/material.dart';

import 'components/bottom_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: LandingScreen(firstInstall: true),
      // yg bawah dipake buat testing (langsung ke home page)
      // home:BottomNavbar(),
    );
  }
}
