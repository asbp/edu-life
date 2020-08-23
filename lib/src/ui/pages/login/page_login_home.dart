import 'package:edu_life/src/constants/constant_main.dart';
import 'package:edu_life/src/ui/pages/register/page_register.dart';
import 'package:edu_life/src/ui/widgets/buttons/button_primary.dart';

import '../page_main_layout.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  String username;
  TextEditingController textUsername = new TextEditingController();
  TextEditingController textPassword = new TextEditingController();
  void _doLogin() {
    setState(() {
      username = textUsername.text;
    });

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HomeMainLayoutPage(username: username)));
  }

  bool _obscureText = true;
  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        SizedBox(height: 30),
        Center(
          child: Image.asset(
            "assets/images/logo.png",
            scale: 22,
          ),
        ),
        SizedBox(height: 5),
        Center(
          child: Text(
            "Edulife",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 70),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Selamat\nDatang",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/sitting1.png",
              ),
            ],
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
            controller: textUsername,
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
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: colorSecondary),
              borderRadius: BorderRadius.circular(40)),
          child: TextFormField(
            controller: textPassword,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20, right: 20),
                hintText: "password",
                labelText: "Password",
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                suffixIcon: IconButton(
                    icon: Icon(_obscureText ? Icons.lock : Icons.lock_open),
                    onPressed: () {
                      _toggle();
                    })),
            obscureText: _obscureText,
          ),
        ),
        SizedBox(height: 50),
        Container(
          child: Column(
            children: <Widget>[
              ButtonPrimary(
                  text: "Masuk",
                  onClick: () {
                    _doLogin();
                  }),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Belum memiliki akun? ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[600]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colorSecondary,
                          fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
