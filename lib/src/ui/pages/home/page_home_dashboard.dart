import 'package:edu_life/src/ui/pages/category/page_detail_category.dart';
import 'package:flutter/material.dart';

import '../../widgets/homepage/home_card_image.dart';
import '../../widgets/homepage/more_submenu.dart';
import '../../widgets/homepage/search_bar.dart';
import '../../widgets/homepage/widget_home_header.dart';

class HomeDashboardPage extends StatelessWidget {
  const HomeDashboardPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HomeHeaderWidget(
            search: SearchBar(),
            title: "Halo username !",
            subtitle: "Mari tingkatakan kualitas diri anda hari ini!",
          ),
          MoreOfSubMenuWidget(subtitle: "Categories", onHitMore: () {}),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    HomeCardImageWidget(
                      img: "assets/images/bottom_img_2.png",
                      category: "career",
                      onClicked: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailCategory(title: "career",)));
                      },
                    ),
                    HomeCardImageWidget(
                      img: "assets/images/bottom_img_2.png",
                      category: "ethics",
                      onClicked: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailCategory(title: "ethics",)));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    HomeCardImageWidget(
                      img: "assets/images/bottom_img_2.png",
                      category: "finance",
                      onClicked: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailCategory(title: "finance",)));
                      },
                    ),
                    HomeCardImageWidget(
                      img: "assets/images/bottom_img_2.png",
                      category: "category 4",
                      onClicked: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailCategory(title: "category 4",)));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    HomeCardImageWidget(
                      img: "assets/images/bottom_img_2.png",
                      category: "category 5",
                      onClicked: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailCategory(title: "category 5",)));
                      },
                    ),
                    HomeCardImageWidget(
                      img: "assets/images/bottom_img_2.png",
                      category: "category 6",
                      onClicked: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailCategory(title: "category 6",)));
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
