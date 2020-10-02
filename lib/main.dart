import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(
    MyApp()); //func from material.dart, input is a class // execute the app class

class MyApp extends StatefulWidget {
  // Connect to MyAppState
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// the _ is used to make this a private class, default all class are public unless we use _
class _MyAppState extends State<MyApp> {
  // _ mean this is a private variable (cannot be change from other files)
  int _questionIndex = 0;
  int _totalScore = 0;

  final _questionList = const [
    {
      "questionText": "What is your favorite tank?",
      "answers": [
        {"text": "Pz IV", "score": 9},
        {"text": "M1A2", "score": 6},
        {"text": "Type 99A", "score": 2},
        {"text": "King Tiger", "score": 10},
        {"text": "T-55/54", "score": 4},
        {"text": "E-100", "score": 7}
      ]
    },
    {
      "questionText": "What is your favorite rifle?",
      "answers": [
        {"text": "G36", "score": 5},
        {"text": "M1 Garand", "score": 2},
        {"text": "Kar98", "score": 6},
        {"text": "M4A1", "score": 4},
        {"text": "Fn FAL", "score": 10},
        {"text": "1911", "score": 1},
        {"text": "Stg 44", "score": 8},
        {"text": "AK 47", "score": 4}
      ]
    },
    {
      "questionText": "What is your favorite shell?",
      "answers": [
        {"text": "HEAT", "score": 3},
        {"text": "APBC", "score": 7},
        {"text": "HESH", "score": 5},
        {"text": "APCBC", "score": 10}
      ]
    },
    {
      "questionText": "What is your favorite furher?",
      "answers": [
        {"text": "Franco", "score": 5},
        {"text": "Hitler", "score": 10},
        {"text": "Stalin", "score": 1},
        {"text": "Augustus", "score": 4}
      ]
    },
  ];

  // Only re-render when this variable is changed
  void _answerQuestion(int scoreGot) {
    setState(() {
      ++_questionIndex;
    });

    _totalScore += scoreGot;

    print("Button Pressed");
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("flutter complete guide"),
        ),
        body: _questionIndex < _questionList.length
            ? Quiz(
                questionList: _questionList,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(totalScore: _totalScore, resetQuiz: _resetQuiz),
      ),
    );
  }
}
