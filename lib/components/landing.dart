import 'dart:async';

import 'package:edu_life/components/home/home_dashboard.dart';
import 'package:edu_life/components/splash/splash1.dart';
import 'package:edu_life/config/constants.dart';
import 'package:flutter/material.dart';

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
                MaterialPageRoute(builder: (context) => HomeDashboard())));
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
                scale: 4,
              ),
            ),
            SizedBox(height: 300),
            Center(
                child: Text(
              "By Edulife Team",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
            ))
          ],
        ),
      ),
    );
  }
}
