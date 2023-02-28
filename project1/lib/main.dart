// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FacebookApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FacebookApp extends StatelessWidget {
  const FacebookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(199, 47, 175, 147),
        shadowColor: Color.fromARGB(210, 255, 251, 251),
        title: Text(
          "RetPlan",
          style: TextStyle(color: Color.fromARGB(206, 255, 255, 255)),
        ),
        centerTitle: true,
        leading: IconButton(
          iconSize: 30,
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.receipt),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 220, 255, 244),
      //backgroundColor: Color.fromARGB(255, 70, 207, 180),
      // body: ,
    );
  }
}
