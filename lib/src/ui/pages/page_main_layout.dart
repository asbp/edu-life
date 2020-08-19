import 'package:flutter/material.dart';

import '../../constants/constant_main.dart';
import 'forum/page_forum_dashboard.dart';
import 'home/page_home_dashboard.dart';
import 'profile/page_profile_dashboard.dart';

class HomeMainLayoutPage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeMainLayoutPage> {
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
        return HomeDashboardPage();
      case 1:
        return ForumDashbardPage();
      case 2:
        return ProfilePage();
      default:
        return HomeDashboardPage();
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
