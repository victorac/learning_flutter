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
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 0},
        {'text': 'Green', 'score': 0},
        {'text': 'Blue', 'score': 0},
      ]
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rat', 'score': 10},
        {'text': 'Lion', 'score': 4},
        {'text': 'Snake', 'score': 2},
        {'text': 'Elephant', 'score': 100},
      ]
    },
  ];

  void _handleSelect(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _handleRestart() {
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
            title: Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  handleSelect: _handleSelect,
                )
              : Result(
                  totalScore: _totalScore,
                  handleRestart: _handleRestart,
                )),
    );
  }
}
