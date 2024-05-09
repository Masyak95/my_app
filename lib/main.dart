import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

   void userTapped(){
     print("tap");
   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       body: Center(
         child: GestureDetector(
           onTap: userTapped,
           child: Container(
             width: 300,
             height: 300,
             color: Colors.blue,
             child: Center(child: Text("Tap me!")),
           ),
         ),
       ),
      ),
    );
  }
}
