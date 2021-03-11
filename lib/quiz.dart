import 'package:flutter/material.dart';
import 'package:flutter_application_1/questions.dart';

import 'answers.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestions;
  List<Map<String, Object>> questions;
  final int questionsidx;

  Quiz(@required this.answerQuestions, @required this.questions,
      @required this.questionsidx);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questions(questions[questionsidx]['questionText']),
        ...(questions[questionsidx]['answers'] as List<Map<String, Object>>)
            .map((answers) {
          return Answers(
              () => answerQuestions(answers['score']), answers['text']);
        }).toList()
      ],
    );
  }
}
