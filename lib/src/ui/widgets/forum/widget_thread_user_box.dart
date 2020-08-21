import 'package:flutter/material.dart';

class ThreadUserBoxWidget extends StatelessWidget {
  final String username;
  final String dateCreated;

  const ThreadUserBoxWidget(
      {@required this.username, @required this.dateCreated});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(margin: EdgeInsets.only(right: 10), child: CircleAvatar()),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              username,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              dateCreated,
            )
          ],
        ),
      ],
    );
  }
}
