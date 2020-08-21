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
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pageList = List<Widget>();

  @override
  void initState(){
    pageList.add(HomeDashboardPage());
    pageList.add(ForumDashbardPage());
    pageList.add(ProfilePage());
    super.initState();
  }

  final _pageOptions = [
    HomeDashboardPage(),
    ForumDashbardPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pageOptions,
      ),
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
        
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        backgroundColor: colorPrimary,
        iconSize: 30,
        elevation: 0.0,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        
      ),
    );
  }
}
