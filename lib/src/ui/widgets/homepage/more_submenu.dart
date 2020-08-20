import 'package:flutter/material.dart';

import '../../../constants/constant_main.dart';

class MoreOfSubMenuWidget extends StatelessWidget {
  const MoreOfSubMenuWidget({
    Key key,
    this.subtitle,
    this.onHitMore,
  }) : super(key: key);

  final String subtitle;
  final Function onHitMore;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: <Widget>[
          Container(
            height: 24,
            child: Text(
              subtitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          FlatButton(
            color: colorPrimary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: onHitMore,
            child: Text(
              "Lihat semua",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
