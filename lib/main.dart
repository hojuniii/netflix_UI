import 'package:flutter/material.dart';
import 'package:netflix/screen/home_screen.dart';
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
              Container(
                  child: Center(
                child: Text('search'),
              )),
              Container(
                  child: Center(
                child: Text('save'),
              )),
              Container(
                  child: Center(
                child: Text('more'),
              )),
              
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
