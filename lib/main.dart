import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("Answer 2"),
            ),
          ],
        ),
      ),
    );
  }
}
