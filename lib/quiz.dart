import 'package:flutter/material.dart';
import './question.dart';
import './choices.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final String label;
  final int index;
  final Function btnPressed;

  Quiz({
    @required this.question,
    @required this.label,
    @required this.index,
    @required this.btnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[index]['questionText']),
        ...(question[index]['answer'] as List<Map<String, Object>>)
            .map((choice) {
          return Choices(
              response: () {
                btnPressed(int.parse(choice['score']));
              },
              label: choice['text']);
        }).toList(),
      ],
    );
  }
}
