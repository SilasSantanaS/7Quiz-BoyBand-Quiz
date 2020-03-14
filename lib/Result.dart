import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final Function _resetQuiz;
  final int _finalScore;

  Result(this._resetQuiz, this._finalScore);

  String get finalPercentage {
    return ((_finalScore * 100) / 7).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 60),
        child: Column(children: <Widget>[
          Text(finalPercentage + " %",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          Text(
            "Parabéns! Confira sua porcentagem de acertos",
            style: TextStyle(fontSize: 12),
          ),
          FlatButton(onPressed: _resetQuiz, child: Text("JOGAR NOVAMENTE"))
        ]));
  }
}
