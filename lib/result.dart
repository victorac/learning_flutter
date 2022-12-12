import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function handleRestart;
  final int totalScore;
  String get resultPhrase {
    String resultText;
    if (totalScore < 10) {
      resultText = 'You are a snake!';
    } else if (totalScore < 20) {
      resultText = 'You are not a snake!';
    } else {
      resultText = 'You are an elephant!';
    }
    return resultText;
  }

  const Result({this.handleRestart, this.totalScore});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('Final score: ' + totalScore.toString()),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: handleRestart,
            child: Text("Restart!"),
          ),
        ],
      ),
    );
  }
}
