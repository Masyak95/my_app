import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  List names = ["John", "Joy", "Marian"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.deepPurple[300],
            ),Container(
              width: 200,
              height: 200,
              color: Colors.deepPurple[200],
            ),Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple[100],
            ),
          ],
        ),
      ),
    );
  }
}
