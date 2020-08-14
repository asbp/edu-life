import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      height: size.height * 0.35,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.35 - 27,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(20)),
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 50),
              child: Row(
                children: <Widget>[
                  Text(
                    "Hi username !\n",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.05,
            left: 10,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                SizedBox(width: size.width * 0.7),
                CircleAvatar(),
              ],
            ),
          ),
          Positioned(
              bottom: size.height * 0.12,
              left: 20,
              child: Text(
                "Let's start a great day",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                height: 54,
                margin: EdgeInsets.symmetric(horizontal: 25),
                padding: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 10),
                        blurRadius: 30,
                      )
                    ]),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.7)),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    Icon(Icons.search)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
