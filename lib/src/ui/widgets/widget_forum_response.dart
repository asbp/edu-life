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
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
              )
            ],
          )
        ],
      )
    );
  }
}