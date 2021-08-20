import 'package:flutter/material.dart';

const double defaultLetterSpacing = 0.3;

TextTheme _buildTextTheme() {
  return TextTheme(
    headline1: TextStyle(
      fontSize: 22.0,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      letterSpacing: defaultLetterSpacing,
    ),
    headline2: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      letterSpacing: defaultLetterSpacing,
    ),
    headline3: TextStyle(
      fontSize: 16.0,
      color: Colors.black,
      fontWeight: FontWeight.w300,
      letterSpacing: defaultLetterSpacing,
    ),
  );
}

AppBarTheme _buildAppBarTheme() {
  return AppBarTheme(
      elevation: 0.0,
      color: Colors.white,
      centerTitle: true,
      actionsIconTheme: const IconThemeData(color: Colors.pink),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              letterSpacing: defaultLetterSpacing)));
}

ThemeData buildTheme() {
  return ThemeData(
    textTheme: _buildTextTheme(),
    appBarTheme: _buildAppBarTheme(),
    iconTheme: IconThemeData(color: Colors.pink),
    highlightColor: Colors.pink.withOpacity(.3),
    primarySwatch: Colors.blue,
  );
}
