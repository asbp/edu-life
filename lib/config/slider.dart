class SliderModel {
  String imgPath, title, description;

  SliderModel({this.imgPath, this.title, this.description});

  void setImgAsset(String imgPath) {
    this.imgPath = imgPath;
  }

  void setTitle(String title) {
    this.title = title;
  }

  void setDesctiption(String desc) {
    this.description = desc;
  }

  String getImage() {
    return this.imgPath;
  }

  String getTitle() {
    return this.title;
  }

  String getDescription() {
    return this.description;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();

  SliderModel slide = new SliderModel();

  slide.setImgAsset("assets/images/logo.png");
  slide.setTitle("by Edulife Team");
  slide.setDesctiption("");
  slides.add(slide);

  SliderModel slide1 = new SliderModel();

  slide1.setImgAsset("assets/images/standing19.png");
  slide1.setTitle("Tata Krama");
  slide1.setDesctiption(
      "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaa aaaaaaaaa aa aaaaaaaaaaaaaaaa");
  slides.add(slide1);

  SliderModel slide2 = new SliderModel();

  slide2.setImgAsset("assets/images/sitting8.png");
  slide2.setTitle("Adab dan Adat");
  slide2
      .setDesctiption("bbbbbbbbbbbbbbb bbb bbbbbbbb bb bbb b bbbbbbbbbbbbbbbb");
  slides.add(slide2);

  SliderModel slide3 = new SliderModel();

  slide3.setImgAsset("assets/images/standing6.png");
  slide3.setTitle("Yuk Mulai Belajar");
  slide3.setDesctiption(
      "cc ccccccc cccc ccccccccccccc ccccccccccccc cccccc ccc ccccc");
  slides.add(slide3);

  return slides;
}
