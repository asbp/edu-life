import 'package:edu_life/components/home/header.dart';
import 'package:edu_life/components/home/home_card_image.dart';
import 'package:edu_life/components/home/more_submenu.dart';
import 'package:flutter/material.dart';

class HomeDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(), 
            MoreOfSubMenu(subtitle: "Categories", onHitMore: (){}),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      HomeCardImage(img: "assets/images/bottom_img_2.png", category: "category 1"),
                      HomeCardImage(img: "assets/images/bottom_img_2.png", category: "category 2"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      HomeCardImage(img: "assets/images/bottom_img_2.png", category: "category 3"),
                      HomeCardImage(img: "assets/images/bottom_img_2.png", category: "category 4"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      HomeCardImage(img: "assets/images/bottom_img_2.png", category: "category 5"),
                      HomeCardImage(img: "assets/images/bottom_img_2.png", category: "category 6"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}