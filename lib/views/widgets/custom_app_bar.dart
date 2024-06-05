import 'package:flutter/material.dart';

import 'number_result.dart';

class CustomAppBar extends StatelessWidget {
  final int currentQuestion;
  final int allQuestions;
  final int wrongAnswers;
  final int correctAnswers;
  const CustomAppBar({
    super.key,
    required this.currentQuestion,
    required this.allQuestions,
    required this.wrongAnswers,
    required this.correctAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Question: ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          "$currentQuestion/$allQuestions",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        NumberResult(
          number: "$wrongAnswers",
          color: Colors.red,
        ),
        SizedBox(
          width: 8,
        ),
        NumberResult(
          number: "$correctAnswers",
          color: Colors.green,
        ),
      ],
    );
  }
}
