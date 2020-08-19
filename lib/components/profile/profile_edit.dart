import 'package:flutter/material.dart';
import '../../config/constants.dart';
import 'profile.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
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
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                scale: 3,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Ganti Foto Profil",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: colorSecondary),
                  borderRadius: BorderRadius.circular(40)),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    hintText: "username",
                    labelText: "Username",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: colorSecondary),
                  borderRadius: BorderRadius.circular(40)),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    hintText: "nama",
                    labelText: "Nama",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: colorSecondary),
                  borderRadius: BorderRadius.circular(40)),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    hintText: "example@gmail.com",
                    labelText: "E-mail",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: colorSecondary),
                  borderRadius: BorderRadius.circular(40)),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    hintText: "081234567891",
                    labelText: "No.Telp",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            SizedBox(height: 10),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    color: colorPrimary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text(
                      "\tUbah Data\t",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  FlatButton(
                    color: colorPrimary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text(
                      "\tUbah Password\t",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ])
          ],
        ));
  }
}
