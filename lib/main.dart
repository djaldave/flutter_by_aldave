import 'package:flutter/material.dart';
import 'package:flutter_by_aldave/answer.dart';

import 'questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Al Dave\'s App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
