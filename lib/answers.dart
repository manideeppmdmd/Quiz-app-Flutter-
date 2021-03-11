import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function questionchanger;
  final String answers;
  Answers(this.questionchanger, this.answers);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answers),
        textColor: Colors.white,
        onPressed: questionchanger,
        color: Colors.grey.shade800,
      ),
    );
  }
}
