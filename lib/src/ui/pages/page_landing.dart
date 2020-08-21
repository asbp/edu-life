import 'dart:async';

import 'package:edu_life/src/ui/pages/page_main_layout.dart';
import 'package:edu_life/src/ui/pages/widget_onboarding.dart';
import 'package:flutter/material.dart';

import '../../constants/constant_main.dart';

class SplashscreenPage extends StatefulWidget {
  const SplashscreenPage({Key key, @required this.firstInstall})
      : super(key: key);

  final bool firstInstall;

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<SplashscreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => widget.firstInstall
            ? Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => OnboardingPage()))
            : Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => HomeMainLayoutPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.asset("assets/images/logo.png", scale: 8),
            SizedBox(
              height: 10,
            ),
            Text("Edulife",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ))
          ],
        ),
      )),
    );
  }
}
