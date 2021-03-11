import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result(this.score, this.reset);
  String get resultPhrase {
    var resultText = 'You did it!                         ';

    return resultText + 'Your Score is $score';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      TextButton(
          onPressed: reset,
          child: Text("Resart Quiz"),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.deepPurple)))
    ]));
  }
}
