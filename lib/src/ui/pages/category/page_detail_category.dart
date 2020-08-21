import 'dart:convert';

import 'package:edu_life/src/constants/constant_main.dart';
import 'package:edu_life/src/models/category.dart';
import 'package:edu_life/src/ui/pages/category/page_detail_article.dart';
import 'package:edu_life/src/ui/widgets/widget_forum_item.dart';
import 'package:flutter/material.dart';

class DetailCategory extends StatefulWidget {
  final String title;

  const DetailCategory({Key key, this.title}) : super(key: key);

  @override
  _DetailCategoryState createState() => _DetailCategoryState();
}

class _DetailCategoryState extends State<DetailCategory> {
  List<Category> parseJson(String response) {
    if (response == null) {
      return [];
    }
    final parsed = json.decode(response.toString()).cast();
    // print("aaaaaaaaa$parsed");
    return parsed.map<Category>((json) => new Category.fromJson(json)).toList();
    ;
  }

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
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(20, 0, 20, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    ),
                    Image.asset("assets/images/sitting8.png", scale: 0.9)
                  ],
                ),
              ),
            ],
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.25,
              minChildSize: 0.22,
              maxChildSize: 0.76,
              builder: (BuildContext ctx, s) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 10)
                      ]),
                  child: ListView(
                    controller: s,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 50,
                          height: 8,
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        margin: EdgeInsets.only(bottom: 6),
                        child: Text(
                          "Related Article",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                      FutureBuilder(
                        future: DefaultAssetBundle.of(context).loadString(
                            "assets/json/article_${widget.title}.json"),
                        builder: (context, snapshot) {
                          List<Category> categories =
                              parseJson(snapshot.data.toString());
                          // return Text(categories[0].author);
                          return Container(
                            height: 500,
                            child: ListView.builder(
                                itemCount: categories.length,
                                itemBuilder: (context, index) {
                                  return ForumItemWidget(
                                    title: categories[index].title,
                                    username: categories[index].author,
                                    onClicked: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailArticle(categories: categories, idx: index,)));
                                    },
                                  );
                                }),
                          );
                        },
                      ),
                      // ForumItemWidget(
                      //   title: "title 1",
                      //   username: "author1",
                      //   onClicked: () {
                      //     Navigator.pushReplacement(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => DetailArticle()));
                      //   },
                      // ),
                      // ForumItemWidget(
                      //   title: "title 2",
                      //   username: "author2",
                      //   onClicked: () {},
                      // ),
                      // ForumItemWidget(
                      //   title: "title 3",
                      //   username: "author1",
                      //   onClicked: () {},
                      // ),
                      // ForumItemWidget(
                      //   title: "title 4",
                      //   username: "author3",
                      //   onClicked: () {},
                      // ),
                      // ForumItemWidget(
                      //   title: "title 4",
                      //   username: "author4",
                      //   onClicked: () {},
                      // ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
