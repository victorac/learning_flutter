import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function handleSelect;

  const Quiz({this.questions, this.questionIndex, this.handleSelect});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) =>
                Answer(answer['text'], () => handleSelect(answer['score'])))
            .toList()
      ],
    );
  }
}
