import "package:flutter/material.dart";
import 'package:hylyghtarucoflutter/stats.dart';

import 'cameraScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hylyght Aruco"),
        elevation: 0.2,
        bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(icon: new Icon(Icons.camera_alt)),
              Tab(text: "STATISTICS"),
            ]),
        actions: <Widget>[Icon(Icons.search), new Icon(Icons.menu)],
      ),
      body: new TabBarView(controller: _tabController, children: <Widget>[
        CameraScreen(),
        StatsScreen()
      ]), /*
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message),
        onPressed: () {
          print("open chats");
        },
      ),
      */
    );
  }
}
