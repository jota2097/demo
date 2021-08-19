import 'package:flutter/material.dart';

import 'components/drawer_component.dart';

class HomePage extends StatefulWidget {
  static String page = 'HomePage';

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerComponent(),
        appBar: AppBar(),
        body: Center(
          child: Text("Center"),
        ));
  }
}
