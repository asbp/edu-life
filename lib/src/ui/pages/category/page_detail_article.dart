import 'package:edu_life/src/constants/constant_main.dart';
import 'package:edu_life/src/models/category.dart';
import 'package:flutter/material.dart';

class DetailArticle extends StatefulWidget {
  final List<Category> categories;
  final int idx;

  const DetailArticle({Key key, this.categories, this.idx}) : super(key: key);

  @override
  _DetailArticleState createState() => _DetailArticleState();
}

class _DetailArticleState extends State<DetailArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
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
                    widget.categories[widget.idx].title,
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
                child: Text("Author: ${widget.categories[widget.idx].author}",
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
                  widget.categories[widget.idx].dateCreated.substring(0, widget.categories[widget.idx].dateCreated.indexOf('|')),
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
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    widget.categories[widget.idx].content,
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
