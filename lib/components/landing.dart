import 'dart:async';

import 'package:edu_life/components/splash/splash.dart';
import 'package:edu_life/config/constants.dart';
import 'package:flutter/material.dart';

import 'bottom_nav.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key key, @required this.firstInstall}) : super(key: key);

  final bool firstInstall;

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => widget.firstInstall
            ? Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => FirstSplash()))
            : Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => BottomNavbar())));
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 300),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                scale: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Edulife",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white
              ),
            ),
            SizedBox(height: 200),
            Center(
                child: Text(
              "By Edulife Team",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ))
          ],
        ),
      ),
    );
  }
}
