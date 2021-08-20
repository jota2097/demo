import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'routes/routes.dart';
import 'style/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //    navigatorKey: NavigationService.instance.navigationKey,
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      initialRoute: HomePage.page,
      routes: getApplicationRoutes(context),
    );
  }
}
