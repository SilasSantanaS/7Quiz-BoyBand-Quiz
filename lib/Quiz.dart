import "package:flutter/material.dart";
import "./Question.dart";
import "./Answer.dart";
import "./Result.dart";

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizState();
  }
}

class QuizState extends State<Quiz> {
  final _questions = const [
    {
      "title": "Quem foi o criador da banda?",
      "options": [
        {"title": "Harry Styles", "score": 0},
        {"title": "Simon Cowell", "score": 1},
        {"title": "Selena Gomez", "score": 0},
        {"title": "Liam Payne", "score": 0}
      ]
    },
    {
      "title": "Quantos membros a banda tinha inicialmente?",
      "options": [
        {"title": "Três", "score": 0},
        {"title": "Quatro", "score": 0},
        {"title": "Cinco", "score": 1},
        {"title": "Seis", "socre": 0}
      ]
    },
    {
      "title": "Em que mês nasceu Zayn Malik?",
      "options": [
        {"title": "Fevereiro", "score": 0},
        {"title": "Setembro", "score": 0},
        {"title": "Janeiro", "score": 1},
        {"title": "Dezembro", "socre": 0}
      ]
    },
    {
      "title": "Niall Horan é Inglês?",
      "options": [
        {"title": "Verdadeiro", "score": 0},
        {"title": "Falso", "score": 1}
      ]
    },
    {
      "title": "Quem é o mais novo da banda?",
      "options": [
        {"title": "Harry Styles", "score": 1},
        {"title": "Zayn Malik", "score": 0},
        {"title": "Niall Horan", "score": 0},
        {"title": "Liam Payne", "score": 0}
      ]
    },
    {
      "title": "Qual é o título do primeiro álbum?",
      "options": [
        {"title": "Take me home", "score": 0},
        {"title": "Up all night", "score": 1},
        {"title": "Four", "score": 0},
        {"title": "Made in the A.M.", "score": 0}
      ]
    },
    {
      "title": "Quem é o mais baixo?",
      "options": [
        {"title": "Louis Thomlinson", "score": 1},
        {"title": "Zayn Malik", "score": 0},
        {"title": "Niall Horan", "score": 0},
        {"title": "Liam Payne", "score": 0}
      ]
    },
  ];
  var _questionsIndex = 0;
  var _finalScore = 0;

  void _answerQuestions(int score) {
    setState(() {
      if (score == 1) {
        _finalScore++;
      }
      _questionsIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _finalScore = 0;
    });
  }

  @override
  build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: _questionsIndex < _questions.length
            ? <Widget>[
                Question(_questions, _questionsIndex),
                ...(_questions[_questionsIndex]["options"]
                        as List<Map<String, Object>>)
                    .map((option) {
                  return Answer(
                      () => _answerQuestions(option["score"]), option["title"]);
                }).toList()
              ]
            : <Widget>[Result(_resetQuiz, _finalScore)],
      ),
    );
  }
}
