import 'package:edu_life/src/constants/constant_main.dart';
import 'package:edu_life/src/ui/pages/forum/page_forum_dashboard.dart';
import 'package:flutter/material.dart';

class ThreadInput extends StatefulWidget {
  @override
  _ThreadInputState createState() => _ThreadInputState();
}

class _ThreadInputState extends State<ThreadInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black87,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:20),
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(maxRadius: 30),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            decoration:
                                InputDecoration.collapsed(hintText: "Judul / Topik"),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  maxLines: 10,
                  decoration: InputDecoration.collapsed(
                      hintText: "Apa yang ingin anda bagikan?"),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: MediaQuery.of(context).viewInsets,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(width: 300),
            Expanded(
                child: FlatButton(
                  color: colorSecondary,
                  onPressed: () {
                     Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) => ForumDashbardPage()));
                  },
                  child: Text(
                    "KIRIM",
                    style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                    
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
