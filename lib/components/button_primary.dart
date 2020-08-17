import 'package:edu_life/config/constants.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    Key key, this.onClick, this.text,
  }) : super(key: key);

  final Function onClick;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
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
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
