import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:navigation_bar/bottomNavigationBar.dart';
import 'package:navigation_bar/favorite_page.dart';
import 'package:navigation_bar/helpus_page.dart';
import 'package:navigation_bar/profile_page.dart';
import 'package:navigation_bar/settings_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: BottomNavigate(),
    );
  }
}


