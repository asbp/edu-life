import 'package:edu_life/components/profile/profile_edit.dart';
import 'package:flutter/material.dart';
import '../../config/constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 50),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/logo.png",
                      scale: 3,
                    ),
                    Text(
                      "Username",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "5",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                        "POST",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      ),
                    
                    SizedBox(height: 5),
                    FlatButton(
                      color: colorPrimary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileEdit()));
                      },
                      child: Text(
                        "\tPengaturan\t",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 35),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Post",
                style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
              )
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 450,
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return cardPost('Bentuk Pertanyaan/Response', 'by: Username');
                } 
              )
          ),

          // cardPost('Bentuk Pertanyaan/Response', 'by:Username'),
          // cardPost('Bentuk Pertanyaan/Response', 'by:Username'),
          // cardPost('Bentuk Pertanyaan/Response', 'by:Username'),
          // cardPost('Bentuk Pertanyaan/Response', 'by:Username'),
          // cardPost('Bentuk Pertanyaan/Response', 'by:Username'),
          // cardPost('Bentuk Pertanyaan/Response', 'by:Username'),
        ],
      ),
    )
    );
    
  }
}

Widget cardPost(title, username) {
  return Card(
      margin: EdgeInsets.only(top: 10, left: 30, right: 30),
      elevation: 8,
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
