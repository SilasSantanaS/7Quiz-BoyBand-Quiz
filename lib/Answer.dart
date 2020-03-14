import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function _answerQuestions;
  final String _answerText;

  Answer(this._answerQuestions, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_answerText),
        onPressed: _answerQuestions,
        color: Colors.purple,
        textColor: Colors.white,
      ),
    );
  }
}
