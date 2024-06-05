import 'package:flutter/material.dart';

class ShowQuestion extends StatelessWidget {
  final List<String> question;
  final String choice;
  const ShowQuestion({
    super.key,
    required this.question,
    required this.choice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.teal[900],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: RichText(
        text: TextSpan(
          text: question[0],
          children: [
            TextSpan(
              text: choice,
            ),
            TextSpan(
              text: question[1],
            ),
          ],
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
