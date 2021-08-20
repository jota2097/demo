import 'package:demo/style/styles.dart';
import 'package:flutter/material.dart';

import '../components/common/drawer_component.dart';
import 'tickets.dart';

class HomePage extends StatefulWidget {
  static String page = 'HomePage';

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _userImage =
      'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerComponent(
        userImage: _userImage,
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(_userImage)),
          )
        ],
      ),
      body: Container(
        padding:
            EdgeInsets.only(left: paddingContainer, right: paddingContainer),
        color: Colors.white,
        child: PageView(
          children: [
            TicketsPage(),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.stretch,
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Container(
            //       padding: EdgeInsets.only(bottom: paddingContainer),
            //       child: Text(
            //         "Home",
            //         style: Theme.of(context).textTheme.headline1,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
