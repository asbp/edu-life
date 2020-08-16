import 'package:edu_life/components/forum/forum.dart';
import 'package:edu_life/components/profile/profile.dart';
import 'package:flutter/material.dart';

import '../config/constants.dart';
import 'home/home_dashboard.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
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
    switch(_selectedIndex) {
      case 0: return HomeDashboard();
      case 1: return Forum();
      case 2: return Profile();
      default: return HomeDashboard();
    }
  }

  @override
  Widget build(BuildContext context) {
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