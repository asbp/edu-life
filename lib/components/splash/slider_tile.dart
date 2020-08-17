import 'package:flutter/material.dart';

import '../../config/constants.dart';
import '../register/register.dart';

class SliderTile extends StatelessWidget {
  const SliderTile({
    Key key,
    @required this.img,
    this.title,
    this.desc,
    this.pageIndex,
  }) : super(key: key);

  final String img, title, desc;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(img),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 36),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              desc,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          ),
          pageIndex == 2
              ? GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                        color: colorSecondary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Daftar",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                  ),
                )
              : Text("")
        ],
      ),
    );
  }
}
