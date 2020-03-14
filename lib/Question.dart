import "package:flutter/material.dart";

class Question extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  int _questionsIndex;

  Question(this._questions, this._questionsIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        _questions[_questionsIndex]["title"],
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
