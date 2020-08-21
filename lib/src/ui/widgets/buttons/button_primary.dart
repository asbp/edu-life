import 'package:flutter/material.dart';

import '../../../constants/constant_main.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    Key key,
    this.onClick,
    this.text,
  }) : super(key: key);

  final Function onClick;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      onPressed: onClick,
      color: colorSecondary,
      child: Container(
        width: 330,
        height: 50,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
