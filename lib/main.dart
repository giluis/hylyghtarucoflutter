import 'package:flutter/material.dart';
import 'package:hylyghtarucoflutter/home.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Hylyght Aruco",
      theme: new ThemeData(
        primaryColor: new Color(0xff075e54),
        accentColor: new Color(0xff25d366)
      ),
      home: new Home()
    );
  }
}

