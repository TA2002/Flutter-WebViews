import 'package:flutter/material.dart';
import 'home.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebViews',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Arial',
        textTheme: TextTheme(
          button: TextStyle(color: Colors.white, fontSize: 18),
          title: TextStyle(color: Colors.red),
        ),
      ),
      home: HomeMaterial(),
    );
  }
}