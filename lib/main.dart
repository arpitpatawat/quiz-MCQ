import 'package:flutter/material.dart';
import 'package:workspace/result.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 1},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite Game?',
      'answers': [
        {'text': 'BGMI', 'score': 3},
        {'text': 'VALORANT', 'score': 4},
        {'text': 'GTA V', 'score': 2},
        {'text': 'COD : WARZONE', 'score': 1}
      ],
    }
  ];
  var _questionIndex = 0;
  // ignore: unused_field
  var _totalsocre = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalsocre = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalsocre += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    } else {
      print("no more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalsocre, _resetQuiz),
      ),
    );
  }
}
