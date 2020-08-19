import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  LandingAppBar({
    Key key,
  })  : preferredSize = Size.fromHeight(100.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Image.asset(
              "assets/images/logo.png",
              scale: 6,
            ),
          ),
          Text(
            "Edulife",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
      automaticallyImplyLeading: true,
    );
  }
}
