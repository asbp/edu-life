import 'package:edu_life/src/constants/constant_main.dart';
import 'package:flutter/material.dart';

class ThreadResponse extends StatelessWidget {
  const ThreadResponse({
    Key key,
    this.username,
    this.response,
  }) : super(key: key);

  final String username, response;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 5,
                // spreadRadius: 2,
                color: Colors.black12)
          ],
        ),
        margin: EdgeInsets.only(bottom: 15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        username,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Menanggapi",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: response,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.black,
                ),
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ));
  }
}
