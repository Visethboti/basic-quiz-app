import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  final Function resetQuiz;

  String getResultPhrase() {
    if (totalScore >= 40)
      return "You are me!";
    else if (totalScore > 20)
      return "GOOD";
    else if (totalScore > 10)
      return "Heresy!";
    else
      return "Really nigfen??";
  }

  Result({this.totalScore, this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Your total score is " + totalScore.toString(),
              style: TextStyle(fontSize: 28)),
          Text(getResultPhrase(), style: TextStyle(fontSize: 28)),
          Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                child: Text("Retake Quiz"),
                onPressed: resetQuiz,
              ))
        ],
      ),
    );
  }
}
