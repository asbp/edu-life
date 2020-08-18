import 'package:edu_life/components/home/search_bar.dart';
import 'package:flutter/material.dart';

import 'header.dart';
import 'home_card_image.dart';
import 'more_submenu.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(
            search: SearchBar(),
            title: "Halo username !",
            subtitle: "Mari tingkatakan kualitas diri anda hari ini!",
          ),
          MoreOfSubMenu(subtitle: "Categories", onHitMore: () {}),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    HomeCardImage(
                        img: "assets/images/bottom_img_2.png",
                        category: "category 1"),
                    HomeCardImage(
                        img: "assets/images/bottom_img_2.png",
                        category: "category 2"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    HomeCardImage(
                        img: "assets/images/bottom_img_2.png",
                        category: "category 3"),
                    HomeCardImage(
                        img: "assets/images/bottom_img_2.png",
                        category: "category 4"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    HomeCardImage(
                        img: "assets/images/bottom_img_2.png",
                        category: "category 5"),
                    HomeCardImage(
                        img: "assets/images/bottom_img_2.png",
                        category: "category 6"),
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
