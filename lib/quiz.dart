import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //its type of if - else
      children: [
        Question(questions[questionIndex]['questionText']
            as String), //we are converting it into a string bcoz in the Question class we have specifed that we will be using a string inside question
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          //here we have to define that 'answers' is a list full of string list<string>.
          return Answer(
              () => answerQuestion(answer['score']),
              answer['text']
                  as String); //three dots means all list are now separted, since we were having many lists in a one and column expects a single list inside it so we have to separte every list.
        }).toList() //converts the value map gives into a list
      ],
    );
  }
}
