import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;

  Result(this.score, this.reset);

  String get resultPhrase {
    String resultText;
    if (score <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (score <= 12) {
      resultText = "Pretty likeable!";
    } else if (score <= 12) {
      resultText = "You are ... strange?!";
    } else {
      resultText = "You are so bad";
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
            onPressed: reset,
            textColor: Colors.blue,
            child: Text("Restart Quiz!"),
          )
        ],
      ),
    );
  }
}
