import 'package:edu_life/src/constants/constant_main.dart';
import 'package:edu_life/src/ui/pages/profile/page_profile_edit.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key, this.username}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();

  final String username;
}

class _ProfileState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, bottom: 20),
            decoration: BoxDecoration(
                color: colorPrimary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                boxShadow: darkShadow),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/logo.png",
                      scale: 12,
                    ),
                    Text(
                      widget.username,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "5",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "POST",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      FlatButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileEditPage()));
                        },
                        child: Text(
                          "\tPengaturan\t",
                          style: TextStyle(fontSize: 14, color: colorPrimary),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 35, bottom: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Post",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Container(
              height: 555,
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return cardPost(
                        'Bentuk Pertanyaan/Response', 'by: ${widget.username}');
                  })),

          // cardPost('Bentuk Pertanyaan/Response', 'by:Username'),
          // cardPost('Bentuk Pertanyaan/Response', 'by:Username'),
          // cardPost('Bentuk Pertanyaan/Response', 'by:Username'),
          // cardPost('Bentuk Pertanyaan/Response', 'by:Username'),
          // cardPost('Bentuk Pertanyaan/Response', 'by:Username'),
          // cardPost('Bentuk Pertanyaan/Response', 'by:Username'),
        ],
      ),
    ));
  }
}

Widget cardPost(title, username) {
  return Container(
      margin: EdgeInsets.only(top: 10, left: 30, right: 30),
      decoration: BoxDecoration(
        color: colorSmallComponent,
        boxShadow: darkShadow,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: ListTile(
        leading: Image.asset("assets/images/logo.png", scale: 5),
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black),
        ),
        subtitle: Text(
          username,
          style: TextStyle(fontSize: 10, color: Colors.black),
        ),
      ));
}
