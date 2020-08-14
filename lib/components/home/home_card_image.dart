import 'package:flutter/material.dart';

class HomeCardImage extends StatelessWidget {
  const HomeCardImage({
    Key key,
    @required this.img, this.category,
  }) : super(key: key);

  final String img, category;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 30,
            color: Colors.black12
          )
      ]),
      child: Stack(
        children: <Widget>[
          Image.asset(img),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              category,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
          )
        ],
      ),
    );
  }
}
