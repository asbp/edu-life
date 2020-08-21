import 'package:edu_life/src/constants/constant_main.dart';
import 'package:flutter/material.dart';

class DetailArticle extends StatefulWidget {
  @override
  _DetailArticleState createState() => _DetailArticleState();
}

class _DetailArticleState extends State<DetailArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        leading: new IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 35),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Judul Artikel",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Author: Nama Author",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic)),
              ),
            ),
            SizedBox(height: 3),
            Padding(
              padding: EdgeInsets.only(left: 35),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Created at 24 Agustus 2020",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                height: 100,
                width: 312,
                child: Center(
                    child:
                        Text("Image", style: TextStyle(color: Colors.white))),
                decoration: BoxDecoration(color: colorPrimary)),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 35),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis at tellus at urna condimentum mattis pellentesque id. Tortor condimentum lacinia quis vel eros. Nibh sit amet commodo nulla facilisi. Pellentesque habitant\nLorem Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis at tellus at urna condimentum mattis pellentesque id. Tortor condimentum lacinia quis vel eros. Nibh sit amet commodo nulla facilisi. Pellentesque habitant",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
