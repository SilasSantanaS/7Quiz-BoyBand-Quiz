import "package:flutter/material.dart";
import "./Quiz.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("7Quiz | One Direction"),
          backgroundColor: Colors.pink,
        ),
        body: Quiz(),
      ),
    );
  }
}
