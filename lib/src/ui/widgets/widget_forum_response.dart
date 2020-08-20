import 'package:flutter/material.dart';

class ForumResponse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          CircleAvatar(),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Username",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Menanggapi",
                  style: TextStyle(
                    fontStyle: FontStyle.italic
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}