import 'package:edu_life/src/ui/pages/category/page_detail_category.dart';
import 'package:edu_life/src/ui/widgets/homepage/widget_home_category_item.dart';
import 'package:flutter/material.dart';

class HomepageCategoryGridView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeCatGridState();
}

class _HomeCatGridState extends State<HomepageCategoryGridView> {
  List<String> articles = ["Karir","Etika","Finansial"];

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
          image: AssetImage("assets/images/bottom_img_2.png"),
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
