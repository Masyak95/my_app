import 'package:flutter/material.dart';

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
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            "My app bar",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[ // Исправлено: actions должен быть списком виджетов
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout),
              color: Colors.white,
            ),
          ],
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(25),
            child: const Icon(
              Icons.favorite,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
      ),
    );
  }
}
