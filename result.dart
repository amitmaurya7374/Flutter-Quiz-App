import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;
  Result(this.resultScore,this.reset);
  String get resultPhrase {
    var resultText = 'You did it! 😀';
    if (resultScore < 5) {
      resultText = 'Your are innocent';
    } else if (resultScore >= 8) {
      resultText = 'You are not innocent person 😠';
    } else if (resultScore <= 4) {
      resultText = 'You are very very innnocent person keep it up ! ';
    } else {
      resultText = 'Ha Ha 😀';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            color: Colors.blue,
            elevation: 6.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              'Reset Quiz',
              style: TextStyle(color: Colors.white),
            ),
            onPressed:reset,
          ),
        ],
      ),
    );
  }
}
