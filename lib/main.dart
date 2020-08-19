import 'package:flutter/material.dart';

import 'src/ui/pages/page_landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, fontFamily: 'Montserrat'),
      home: SplashscreenPage(firstInstall: true),
      // home: Register(),
    );
  }
}
