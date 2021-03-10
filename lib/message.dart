import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final int resultScore;
  final Function reset;

  Message({this.resultScore, this.reset});

  //getter function
  String get resultMessage {
    String text;
    if (resultScore <= 10) {
      text = 'You are awesome';
    } else if (resultScore > 10) {
      text = 'You are bad';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultMessage,
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          child: RaisedButton(
            child: Text('Try Again'),
            onPressed: reset,
          ),
        ),
      ],
    );
  }
}
