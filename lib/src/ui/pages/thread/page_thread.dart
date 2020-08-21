import 'package:edu_life/src/ui/widgets/buttons/button_primary.dart';
import 'package:edu_life/src/ui/widgets/widget_forum_response.dart';
import 'package:flutter/material.dart';

class ThreadPage extends StatefulWidget {
  @override
  _ThreadState createState() => _ThreadState();
}

class _ThreadState extends State<ThreadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black87,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Text(
            "Thread",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      child: CircleAvatar()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Date created",
                      )
                    ],
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
          ),
          SizedBox(height: 20),
          ButtonPrimary(
            onClick: () {},
            text: "Tanggapi",
          ),
          SizedBox(height: 20),
          Text(
            "Responses",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ForumResponse()
        ],
      ),
    );
  }
}
