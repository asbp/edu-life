import 'package:flutter/material.dart';

class SliderTile extends StatelessWidget {
  const SliderTile({
    Key key,
    @required this.img, this.title, this.desc,
  }) : super(key: key);

  final String img, title, desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(img),
          SizedBox(height: 20),
          Text(title),
          SizedBox(height: 12),
          Text(desc)
        ],
      ),
    );
  }
}