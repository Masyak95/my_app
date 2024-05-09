import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              color: Colors.deepPurple,
              height: 350,
            ),
            Container(
              color: Colors.blue,
              height: 350,
            ),
            Container(
              color: Colors.green,
              height: 350,
            ),
          ],
        ),
      ),
    );
  }
}
