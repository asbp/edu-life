import 'package:flutter/material.dart';

import '../../../constants/constant_main.dart';
import '../../widgets/forum/widget_forum_add_thread.dart';
import '../../widgets/widget_forum_item.dart';
import '../thread/thread.dart';

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
                    "Bagikan pengalamanmu di sini!",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 20, bottom: 40),
              itemBuilder: (BuildContext context, int index) {
                return ForumItemWidget(
                  onClicked: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Thread()));
                  },
                  title: "Judul",
                  username: "Anonymous",
                );
              },
              itemCount: 10,
            ),
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
