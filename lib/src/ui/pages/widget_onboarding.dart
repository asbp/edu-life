import 'package:flutter/material.dart';

import '../../constants/constant_main.dart';
import '../../models/model_slider.dart';
import '../widgets/onboarding/widget_onboard_view.dart';
import '../widgets/widget_slider_tile.dart';
import 'login/page_login_home.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _FirstSplashState createState() => _FirstSplashState();
}

class _FirstSplashState extends State<OnboardingPage> {
  List<SliderModel> slides = new List<SliderModel>();
  int currentIdx = 0;

  PageController pagesController = new PageController(initialPage: 0);

  Widget pageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: isCurrentPage ? 12 : 8,
      width: isCurrentPage ? 12 : 8,
      decoration: BoxDecoration(
          color: isCurrentPage ? colorSecondary : Colors.grey[500],
          borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  void initState() {
    super.initState();

    slides = getSlides();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pagesController,
        itemCount: slides.length,
        onPageChanged: (value) {
          setState(() {
            currentIdx = value;
          });
        },
        itemBuilder: (context, idx) => OnboardPageViewWidget(
          context: context,
          sliderTile: SliderTileWidget(
            img: slides[idx].getImage(),
            title: slides[idx].getTitle(),
            desc: slides[idx].getDescription(),
            pageIndex: currentIdx,
          ),
        ),
      ),
      bottomSheet: currentIdx != slides.length - 1
          ? Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      pagesController.animateToPage(slides.length - 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                      print("KLIK");
                    },
                    child: Text(
                      "Lewati",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (var i = 0; i < slides.length; i++)
                        currentIdx == i
                            ? pageIndicator(true)
                            : pageIndicator(false),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      pagesController.animateToPage(currentIdx + 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                    },
                    child: Text(
                      "Selanjutnya",
                      style: TextStyle(
                          color: colorPrimary,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: EdgeInsets.only(bottom: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Kamu sudah punya akun? ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "Login di sini.",
                      style: TextStyle(
                          color: colorSecondary,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
