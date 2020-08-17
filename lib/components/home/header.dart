import 'package:flutter/material.dart';

import '../../config/constants.dart';

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
                color: colorPrimary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20), 
                  bottomRight: Radius.circular(20)
                )
              ),
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: <Widget>[
                  Text(
                    "Halo username !\n",
                    style: TextStyle(
                      fontSize: 24, 
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: size.height * 0.13,
              left: 20,
              child: Text(
                "Mari tingkatakan kualitas diri anda hari ini!",
                style: TextStyle(fontSize: 16, color: Colors.white),
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
                    color: colorSmallComponent,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: darkShadow
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            hintText: "Apa yang ingin anda tahu?",
                            hintStyle:
                                TextStyle(color: Colors.black),
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
