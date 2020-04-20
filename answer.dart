import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(10.0),
        elevation: 6.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
