import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:navigation_bar/profile_page.dart';
import 'package:navigation_bar/settings_page.dart';

import 'favorite_page.dart';
import 'helpus_page.dart';
import 'home_page.dart';

class BottomNavigate extends StatefulWidget {
  const BottomNavigate({Key? key}) : super(key: key);

  @override
  State<BottomNavigate> createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<BottomNavigate> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final items = <Widget> [
    Icon(Icons.home, size: 30,),
    Icon(Icons.favorite, size: 30,),
    Icon(Icons.person, size: 80,),
    Icon(Icons.help, size: 30,),
    Icon(Icons.settings, size: 30,)

  ];
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;

  final screens = [
    HomePage(),
    FavoritePage(),
    ProfilePage(),
    HelpUsPage(),
    SettingsPage()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color:Colors.white)
        ),
        child: CurvedNavigationBar(
          key: navigationKey,
          color: Colors.black,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.pink,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index) ,

        ),
      ),
    );
  }
}
