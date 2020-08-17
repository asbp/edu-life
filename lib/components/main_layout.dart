import 'package:flutter/material.dart';

import '../config/constants.dart';
import 'forum/forum.dart';
import 'home/dashboard.dart';
import 'profile/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  initState() {
    super.initState();
  }

  Widget getPage() {
    switch (_selectedIndex) {
      case 0:
        return Dashboard();
      case 1:
        return Forum();
      case 2:
        return Profile();
      default:
        return Dashboard();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: getPage(),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Forum'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        backgroundColor: colorPrimary,
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 0.0,
      ),
    );
  }
}
