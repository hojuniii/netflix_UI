import 'package:flutter/material.dart';
import 'package:netflix/screen/home_screen.dart';
import 'package:netflix/screen/like_screen.dart';
import 'package:netflix/screen/more_screen.dart';
import 'package:netflix/screen/search_screen.dart';
import 'package:netflix/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController _controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HoFlix',
      theme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              SearchScreen(),
              LikeScreen(),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
