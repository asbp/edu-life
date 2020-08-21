import 'package:edu_life/src/ui/widgets/buttons/flat_button_primary.dart';
import 'package:flutter/material.dart';

class ThreadInput extends StatefulWidget {
  @override
  _ThreadInputState createState() => _ThreadInputState();
}

class _ThreadInputState extends State<ThreadInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 30),
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.close, size: 34),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(maxRadius: 30),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                            decoration:
                                InputDecoration.collapsed(hintText: "Title"),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                child: TextField(
                  maxLines: 10,
                  decoration: InputDecoration.collapsed(
                      hintText: "Enter your text here"),
                ),
              ),
            ],
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  margin: EdgeInsets.only(right: 14),
                  child: PrimaryFlatButton(text: "POST", onClicked: () {}))),
        ],
      ),
    );
  }
}
