import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "what's your favorite color? ",
      "answer": [
        {"text": "Black", "score": 10},
        {"text": "green", "score": 20},
        {"text": "blue", "score": 30},
        {"text": "yellow", "score": 40},
      ],
    },
    {
      "questionText": "what's your favorite animal? ",
      "answer": [
        {"text": "Rabbit", "score": 45},
        {"text": "cat", "score": 48},
        {"text": "dog", "score": 34},
        {"text": "cow", "score": 12},
      ],
    },
    {
      "questionText": "what's your favorite instructor? ",
      "answer": [
        {"text": "instruct 1", "score": 22},
        {"text": "instruct 2", "score": 23},
        {"text": "instruct 3", "score": 25},
        {"text": "instruct 4", "score": 12},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {}
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Al Dave\'s App"),
          centerTitle: true,
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
