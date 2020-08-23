import 'package:flutter/material.dart';

import '../../../constants/constant_main.dart';

class PrimaryFlatButton extends StatelessWidget {
  const PrimaryFlatButton({
    Key key,
    this.onClicked,
    this.text,
  }) : super(key: key);

  final Function onClicked;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: colorPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: onClicked,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
