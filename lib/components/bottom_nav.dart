import 'package:edu_life/config/constants.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key key, this.selectedIndex}) : super(key: key);

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: colorPrimary,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -10), blurRadius: 30, color: Colors.white),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: selectedIndex == 0
                          ? BorderSide(color: Colors.white, width: 6)
                          : BorderSide(color: colorPrimary, width: 0))),
              child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {

                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: selectedIndex == 1
                          ? BorderSide(color: Colors.white, width: 6)
                          : BorderSide(color: colorPrimary, width: 0))),
              child: IconButton(
                icon: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                onPressed: () {
                  
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: selectedIndex == 2
                          ? BorderSide(color: Colors.white, width: 6)
                          : BorderSide(color: colorPrimary, width: 0))),
              child: IconButton(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.white,
                ),
                onPressed: () {
                 
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
