import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(context) {
    const questions = [
      {
        "questionText": "What's your favorite color?",
        "answers": ["Black", "Red", "Green", "White"],
      },
      {
        "questionText": "What's your favorite animal?",
        "answers": ["Rabbit", "Snake", "Elephant", "Lion"],
      },
      {
        "questionText": "Who's your favorite instructor?",
        "answers": ["Max", "Max", "Max", "Max"],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]["questionText"],
            ),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) => Answer(_answerQuestion, answer))
                .toList()
          ],
        ),
      ),
    );
  }
}
