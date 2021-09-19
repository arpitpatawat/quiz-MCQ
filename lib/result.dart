import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 3) {
      resultText = 'you are noob';
    } else if (resultScore <= 6) {
      resultText = 'mid level gamer';
    } else if (resultScore <= 9) {
      resultText = 'u r pro dude!';
    } else {
      resultText = 'you should start streaming!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                  fontSize: 16.0, decoration: TextDecoration.underline),
            ),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
