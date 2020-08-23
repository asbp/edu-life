import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../constants/constant_main.dart';
import '../../widgets/buttons/button_primary.dart';
import '../login/page_login_home.dart';
import '../page_main_layout.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _username = '';
  String _email = '';
  String _password = '';

  bool _obscureText = true;
  String username;
  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  TextEditingController textEmail = new TextEditingController();
  TextEditingController textUsername = new TextEditingController();
  TextEditingController textPassword = new TextEditingController();

  // dummy register
  void register() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print("form validate");

      setState(() {
        username = textUsername.text;
      });
      
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomeMainLayoutPage(username: username)));
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
    print(_username);
    print(_email);
    print(_password);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  "Selamat Datang\ndi Edulife",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Image.asset("assets/images/sitting1.png")
              ],
            ),
            SizedBox(height: 25),
            Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: formUI(),
            ),
            SizedBox(height: 10),
            SizedBox(height: 30),
            Container(
              child: Column(
                children: <Widget>[
                  ButtonPrimary(
                      text: "Daftar",
                      onClick: () {
                        register();
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => HomeMainLayoutPage()));
                      }),
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
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
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

  Widget formUI() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: colorSecondary),
              borderRadius: BorderRadius.circular(20)),
          child: TextFormField(
            controller: textUsername,
            keyboardType: TextInputType.text,
            // key: _formKey,
            validator: (value) {
              if (value.length < 6) {
                print('is empty');
                return 'Username must be more than 6 charater';
              } else
                return null;
            },
            onSaved: (String val) {
              _username = val;
            },
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
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: colorSecondary),
              borderRadius: BorderRadius.circular(20)),
          child: TextFormField(
            controller: textEmail,
            // key: _formKey,
            keyboardType: TextInputType.emailAddress,
            validator: (String val) {
              Pattern pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regex = new RegExp(pattern);
              if (!regex.hasMatch(val))
                return 'Enter Valid Email';
              else
                return null;
            },
            onSaved: (String val) {
              _email = val;
            },
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20, right: 20),
                hintText: "email",
                labelText: "Email",
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: colorSecondary),
              borderRadius: BorderRadius.circular(20)),
          child: TextFormField(
            controller: textPassword,
            // key: _formKey,
            keyboardType: TextInputType.text,
            validator: (String val) {
              if (val.length < 8)
                return 'Password must be more than 8 charater';
              else
                return null;
            },
            onSaved: (String val) {
              _username = val;
            },
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
      ],
    );
  }
}
