import 'dart:async';

import 'package:flutter/material.dart';

import '../config/constants.dart';
import 'main_layout.dart';
import 'splash/splash.dart';

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
            : Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Home())));
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
            Image.asset("assets/images/logo.png", scale: 3),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
      bottomNavigationBar: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "EduLife",
                style: Theme.of(context).textTheme.subtitle1.merge(
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
              )
            ],
          )),
    );
  }
}
