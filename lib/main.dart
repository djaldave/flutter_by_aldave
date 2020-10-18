import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Print Question");
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
            Text("The Questions"),
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
