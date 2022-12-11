import 'package:flutter/material.dart';

import './question.dart';

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
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["What is your name?", "What is your favorite color?"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Answer 3'),
          )
        ]),
      ),
    );
  }
}
