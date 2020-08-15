import 'package:edu_life/components/splash/slider_tile.dart';
import 'package:edu_life/config/slider.dart';
import 'package:flutter/material.dart';

class FirstSplash extends StatefulWidget {
  @override
  _FirstSplashState createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
  List<SliderModel> slides = new List<SliderModel>();
  @override
  void initState() {
    super.initState();

    slides = getSlides();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: slides.length,
        itemBuilder: (context, idx) {
          return SliderTile(
            img: slides[idx].getImage(),
            title: slides[idx].getTitle(),
            desc: slides[idx].getDescription(),
          );
        },
      ),
    );
  }
}
