import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
              onPressed: () {},
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Answer 2"),
            ),
          ],
        ),
      ),
    );
  }
}
