import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restHandler;

  Result(this.resultScore, this.restHandler);
  String get resultPhrase {
    var resultText = "you did it";
    if (resultScore <= 10) {
      resultText = "you are awesome";
    } else if (resultScore <= 12) {
      resultText = "pretty likeable";
    } else if (resultScore <= 16) {
      resultText = "strange?";
    } else {
      resultText = "you are so cool";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restHandler,
            child: Text("Restart Quiz!"),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
