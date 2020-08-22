import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../constants/constant_main.dart';
import '../../widgets/buttons/button_primary.dart';
import '../login/page_login_home.dart';
import '../page_main_layout.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  bool _obscureText = true;
  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  TextEditingController textEmail = new TextEditingController();
  TextEditingController textUsername = new TextEditingController();
  TextEditingController textPassword = new TextEditingController();

  Dio dio = new Dio();

  void registerUser() async {
    var url = 'http://10.0.2.2:8080/api/register';

    try {
      Response res = await dio.post(url, data: {
        "username": textUsername.text,
        "email": textEmail.text,
        "password": textPassword.text,
      });

      print("MASUK");
      print(res.statusCode);
    } catch (e) {
      print("ERROR");
      print(e);
    }
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
                controller: textEmail,
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
            SizedBox(height: 30),
            Container(
              child: Column(
                children: <Widget>[
                  ButtonPrimary(
                      text: "Daftar",
                      onClick: () {
                        // final snackBar = SnackBar(
                        //   content: Text('Yay! A SnackBar!'),
                        //   action: SnackBarAction(
                        //     label: 'Undo',
                        //     onPressed: () {
                        //     },
                        //   ),
                        // );
                        registerUser();
                        print("REGIS");
                        // registerUser().then((value) => value
                        //     ? Navigator.pushReplacement(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => HomeMainLayoutPage()))
                        //     : Scaffold.of(context).showSnackBar(snackBar));
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
}
