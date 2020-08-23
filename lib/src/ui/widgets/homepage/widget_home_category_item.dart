import 'package:flutter/material.dart';

class HomeCategoryItemWidget extends StatelessWidget {
  final String caption;
  final ImageProvider<dynamic> image;
  final Function onClick;

  const HomeCategoryItemWidget(
      {@required this.caption, @required this.image, this.onClick});

  Function _processOnTap(Function onClick) {
    return onClick ?? () {};
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: Container(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
            child: Text(
              caption,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          decoration: new BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.dstATop),
                image: image),
          ),
        ),
      ),
      new Positioned.fill(
          child: new Material(
              color: Colors.transparent,
              child: new InkWell(
                onTap: _processOnTap(this.onClick),
              )))
    ]);
  }
}
