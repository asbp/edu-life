import 'package:edu_life/src/constants/constant_main.dart';
import 'package:edu_life/src/ui/pages/page_main_layout.dart';
import 'package:edu_life/src/ui/widgets/buttons/button_primary.dart';
import 'package:edu_life/src/ui/widgets/widget_forum_response.dart';
import 'package:flutter/material.dart';

class Thread extends StatefulWidget {
  @override
  _ThreadState createState() => _ThreadState();
}

class _ThreadState extends State<Thread> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (){
             Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeMainLayoutPage()
              ) 
            );                            
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Text(
            "Thread",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 20),
          Row(
            
            children: <Widget>[
              CircleAvatar(),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Date created",
                  )
                ],
              ),
              SizedBox(width: 160,),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: (){},
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
          ),
          SizedBox(height: 20),
          ButtonPrimary(
            onClick: (){},
            text: "Tanggapi",
          ),
          SizedBox(height: 20),
          Text(
            "Responses",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 20),
          Container(    
            // padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                CircleAvatar(),
                SizedBox(width: 20,),
                Column(
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
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                    )
                  ],
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}