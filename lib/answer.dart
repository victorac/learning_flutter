import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handleSelect;
  final String answerText;

  const Answer(this.answerText, this.handleSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: handleSelect,
        child: Text(answerText),
      ),
    );
  }
}
