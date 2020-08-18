import 'package:edu_life/components/home/search_bar.dart';
import 'package:flutter/material.dart';

import '../../config/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    this.search,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final Widget search;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      height: title == "Forum" ? size.height * 0.3 : size.height * 0.35,
      child: Stack(
        children: <Widget>[
          Container(
            height: title == "Forum"
                ? size.height * 0.3 - 27
                : size.height * 0.35 - 27,
            decoration: BoxDecoration(
                color: colorPrimary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Container(
              margin:
                  EdgeInsets.only(left: 20, top: title == "Forum" ? 10 : 30),
              child: Row(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: title == "Forum" ? size.height * 0.1 : size.height * 0.13,
              left: 20,
              child: Text(
                subtitle,
                style: TextStyle(fontSize: 16, color: Colors.white),
              )),
          search
        ],
      ),
    );
  }
}
