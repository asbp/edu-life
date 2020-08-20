import 'package:edu_life/src/ui/pages/forum/widget_add_thread.dart';
import 'package:edu_life/src/ui/pages/thread/thread.dart';
import 'package:flutter/material.dart';

import '../../../constants/constant_main.dart';
import '../../widgets/widget_forum_item.dart';

class ForumDashbardPage extends StatefulWidget {
  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<ForumDashbardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: colorPrimary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0, // has the effect of softening the shadow
                  spreadRadius: 0.05, // has the effect of extending the shadow
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 30, top: 60),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forum",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Bagikan pengalaman anda disini!",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // padding: const EdgeInsets.only(left: 30, top: 25, right: 30),
            height: 460,
            // children: <Widget>[
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ForumItemWidget(
                  onClicked: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Thread()));
                  },
                  title: "Title",
                  username: "Anonymous",
                );
              },
              itemCount: 100,
            ),
            // ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ThreadInput()));
        },
        child: Icon(Icons.add),
        backgroundColor: colorPrimary,
      ),
    );
  }
}
