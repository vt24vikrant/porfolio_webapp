import 'package:flutter/material.dart';
import 'package:portfolio/pages/HomePage.dart';
import 'package:portfolio/theme/theme_data.dart'; // Import the theme file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}
