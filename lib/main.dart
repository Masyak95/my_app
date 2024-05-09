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
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.deepPurple,
              width: 350,
            ),
            Container(
              color: Colors.blue,
              width: 350,
            ),
            Container(
              color: Colors.green,
              width: 350,
            ),
          ],
        ),
      ),
    );
  }
}
