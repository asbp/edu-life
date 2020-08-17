import 'package:edu_life/components/button_primary.dart';
import 'package:edu_life/components/login/login.dart';
import 'package:edu_life/components/main_layout.dart';
import 'package:edu_life/config/constants.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

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
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              scale: 6,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Selamat Datang\ndi Edulife",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
              Image.asset(
                "assets/images/sitting1.png"
              )
            ],
          ),
          SizedBox(height: 25),
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
                focusedBorder: InputBorder.none
              ),
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
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  hintText: "email",
                  labelText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none
              ),
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
                  }
                )
              ),
              ),
            ),
            SizedBox(height: 30),
            Container(
            child: Column(
              children: <Widget>[
                ButtonPrimary(
                    text: "Daftar",
                    onClick: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(
                          builder: (context) => Home()
                        )
                      );
                    }
                  ),
                SizedBox(height: 10),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sudah memiliki akun ? ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[600]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(
                          builder: (context) => LoginScreen()
                        )
                      );
                    },
                    child: Text(
                      "Login",
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
        ),
      ),
    );
  }
}