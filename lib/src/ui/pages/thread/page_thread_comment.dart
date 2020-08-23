import 'package:edu_life/src/constants/constant_main.dart';
import 'package:edu_life/src/ui/pages/thread/page_thread.dart';
import 'package:flutter/material.dart';

class ThreadComment extends StatefulWidget {
  @override
  _ThreadCommentState createState() => _ThreadCommentState();
}

class _ThreadCommentState extends State<ThreadComment> {
  @override
  Widget build(BuildContext context) {

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Peringatan'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Apakah anda yakin akan menghapus ini?'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Hapus'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('Batal'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) => ThreadPage()));
          },
          color: Colors.black87,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Expanded(
              child: Container(   
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Username",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Menanggapi",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          _showMyDialog();
                        },
                      )
                    ],
                  )
    )
            ),
          )
          
        ],
      ),
      bottomNavigationBar: Container(
        padding: MediaQuery.of(context).viewInsets,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          child: Row(
            children: <Widget>[
              Container(
                width: 300,
                margin: EdgeInsets.only(right: 10, bottom: 10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: colorSecondary),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    hintText: "Komentar...",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                    ),
                  ),
              ),
              Expanded(
                child: FlatButton(
                  color: colorSecondary,
                  onPressed: () {
                     Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) => ThreadPage()));
                  },
                  child: Text(
                    "KIRIM",
                    style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),
                    
                  ),
                ),
              )
              
            ],
          )
        )
      )
    );
  }
  
}
