import 'package:edu_life/src/ui/pages/thread/page_thread_comment.dart';
import 'package:edu_life/src/ui/widgets/buttons/button_primary.dart';
import 'package:edu_life/src/ui/widgets/forum/widget_thread_user_box.dart';
import 'package:flutter/material.dart';

class ThreadPage extends StatefulWidget {
  @override
  _ThreadState createState() => _ThreadState();
}

class _ThreadState extends State<ThreadPage> {

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
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Text(
            "Thread",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ThreadUserBoxWidget(
                  username: "Pengguna", dateCreated: "1 Januari 2020 10:10"),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  _showMyDialog();
                },
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
          ),
          SizedBox(height: 20),
          ButtonPrimary(
            onClick: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) => ThreadComment()));
            },
            text: "Tanggapi",
          ),
          SizedBox(height: 20),
          Text(
            "Tanggapan",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Container(    
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
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
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
          ),
        ],
      ),
      // keyboard to comment
      
    );
  }
}
