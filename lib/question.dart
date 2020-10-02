import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final mean that questionText can be change during compile but is locked and cannot be change afterward
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // Container is like a div
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
