import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import './question.dart';
import './choices.dart';
import './message.dart';

//main is the first function dart/flutter runs
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //always put methods in the same class they are needed
  var _questionIndex = 0; //this makes it a private property
  int _totalScore = 0;
  final _questions = const [
    {
      //map
      'questionText': 'What\'s your favorite game?',
      'answer': [
        {'text': 'Mario', 'score': '5'},
        {'text': 'Spongebob', 'score': '6'},
        {'text': 'Sonic Racing', 'score': '2'},
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answer': [
        {'text': 'Chicken', 'score': '3'},
        {'text': 'Fish', 'score': '6'},
        {'text': 'Vegetable Salad', 'score': '5'},
      ],
    },
  ];
  void _buttonPressed(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex += 1;
      }
    });
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Appbar'),
        ),
        //ternary operator
        body: _questionIndex < _questions.length
            ? Quiz(
                question: _questions,
                index: _questionIndex,
                btnPressed: _buttonPressed,
              )
            : Message(
                resultScore: _totalScore,
                reset: resetQuiz,
              ),
      ),
    );
  }
}
