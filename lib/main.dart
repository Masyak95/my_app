import 'package:flutter/material.dart';
import 'package:my_app/pages/first_page.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        "/firstPage": (context) => FirstPage(),
        "/homepage": (context) => HomePage(),
        "/settingspage": (context) => SettingsPage(),
      },
    );
  }
}
