import 'package:flutter/material.dart';

import 'package:flutter_application_1/quiz.dart';
import 'package:flutter_application_1/result.dart';

// void main() {
//   runApp(HomePage());
// }

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _questionsidx = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 15},
        {'text': 'Green', 'score': 17},
        {'text': 'White', 'score': 20},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 10},
        {'text': 'Lion', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your age ?',
      'answers': [
        {'text': '<18', 'score': 10},
        {'text': '18-21', 'score': 10},
        {'text': '21-30', 'score': 10},
        {'text': '>30', 'score': 10},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionsidx = 0;
    });
    _totalScore = 0;
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      if (_questionsidx < _questions.length) {
        _questionsidx = _questionsidx + 1;
      }
    });

    print(_questionsidx);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My First App"),
              backgroundColor: Colors.black,
            ),
            body: _questionsidx < _questions.length
                ? Quiz(_answerQuestions, _questions, _questionsidx)
                : Result(_totalScore, _resetQuiz)));
  }
}
