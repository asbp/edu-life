import 'package:flutter/material.dart';

import '../../../constants/constant_main.dart';

class AllCategory extends StatefulWidget {
  @override
  _AllCategoryState createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 35),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Semua\nKategori",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(height: 20),
          cardCategory("Etika"),
          cardCategory("Karir"),
          cardCategory("Finansial"),
          
        ],
      )),
    );
  }
}

Widget cardCategory(category) {
  return GestureDetector(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.only(top: 10, left: 20, right: 20),
          height: 90,
          width: 350,
          decoration: BoxDecoration(
            color: colorSecondary,
            boxShadow: darkShadow,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ListTile(
            //leading: Image.asset("assets/image/sitting8.png", scale:6),
            title: Text(
              category,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          )));
}
