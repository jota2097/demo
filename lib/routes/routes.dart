import 'package:flutter/material.dart';

import '../home.dart';

Map<String, WidgetBuilder> getApplicationRoutes(BuildContext context) {
  return <String, WidgetBuilder>{
    //LoginPage.page: (BuildContext context) => LoginPage(),
    HomePage.page: (BuildContext context) => HomePage(),
  };
}
