import 'package:flutter/material.dart';

import '../../pages/category/page_detail_category.dart';
import 'widget_home_category_item.dart';

class HomepageCategoryGridView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeCatGridState();
}

class _HomeCatGridState extends State<HomepageCategoryGridView> {
  List<String> articles = ["career", "ethics", "finance"];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 200 / 300,
      padding: EdgeInsets.all(20),
      children: List.generate(articles.length, (index) {
        return HomeCategoryItemWidget(
          caption: articles[index],
          image: AssetImage("assets/images/life2.jpg"),
          onClick: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailCategory(
                          title: articles[index],
                        )));
          },
        );
      }),
    );
  }
}
