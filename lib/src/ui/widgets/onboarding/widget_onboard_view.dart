import 'package:flutter/widgets.dart';

import '../widget_slider_tile.dart';

class OnboardPageViewWidget extends StatelessWidget {
  final BuildContext context;
  final SliderTileWidget sliderTile;

  const OnboardPageViewWidget({this.context, this.sliderTile});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(children: <Widget>[
      Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Image.asset(
              "assets/images/logo.png",
              scale: 6,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Edulife",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // This makes the blue container full width.
            Expanded(child: sliderTile),
          ],
        ),
      ),
    ]));
  }
}
