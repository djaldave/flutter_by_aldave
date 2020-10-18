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
      "answer": ["Black", "Red", "Green", "White"],
    },
    {
      "questionText": "what's your favorite animal? ",
      "answer": ["Rabbit", "dog", "snake", "cat"],
    },
    {
      "questionText": "what's your favorite instructor? ",
      "answer": ["instruct 1", "instruct 2", "instruct 3", "instruct 4"],
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {}
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
            : Result(),
      ),
    );
  }
}
