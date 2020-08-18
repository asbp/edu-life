import 'package:edu_life/components/forum/forum_item.dart';
import 'package:edu_life/components/home/header.dart';
import 'package:edu_life/components/home/search_bar.dart';
import 'package:edu_life/config/constants.dart';
import 'package:flutter/material.dart';

class Forum extends StatefulWidget {
  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Header(
            search: SearchBar(),
            title: "Forum",
            subtitle: "Bagikan Pengalaman kamu!",
          ),
          Column(
            children: <Widget>[
              ForumItem(
                onClicked: (){},
                title: "Judul 1",
                username: "user 1",
              ),
              ForumItem(
                onClicked: (){},
                title: "Judul 2",
                username: "user 2",
              ),
              ForumItem(
                onClicked: (){},
                title: "Judul 3",
                username: "user 2",
              ),
              ForumItem(
                onClicked: (){},
                title: "Judul 4",
                username: "user 3",
              ),
              ForumItem(
                onClicked: (){},
                title: "Judul 5",
                username: "user 1",
              ),
              ForumItem(
                onClicked: (){},
                title: "Judul 6",
                username: "anonymous",
              ),
              ForumItem(
                onClicked: (){},
                title: "Judul 7",
                username: "anonymous",
              ),
              ForumItem(
                onClicked: (){},
                title: "Judul 8",
                username: "user 5",
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: colorPrimary,
      ),
    );
  }
}

