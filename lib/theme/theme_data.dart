// lib/theme.dart
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    fontFamily: "GoogleSansRegular",
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Colors.black),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    fontFamily: "GoogleSansRegular",
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
    ),
  );
}
