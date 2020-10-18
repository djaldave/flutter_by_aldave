import 'package:flutter/material.dart';

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
      "what's your favorite color? ",
      "what's your favorite animal? ",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Al Dave\'s App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 2"),
            ),
          ],
        ),
      ),
    );
  }
}
