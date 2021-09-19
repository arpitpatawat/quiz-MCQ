import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // a string named question text
  Question(this.questionText); //now Question class will take argument as string
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
