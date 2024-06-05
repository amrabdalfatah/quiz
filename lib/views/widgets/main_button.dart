import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String textButton;
  final bool isCompleted;
  final bool previousCompleted;
  final VoidCallback buttonClicked;

  const MainButton({
    super.key,
    required this.textButton,
    required this.buttonClicked,
    required this.isCompleted,
    required this.previousCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: previousCompleted ? buttonClicked : null,
      child: Container(
        height: 60,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.orange,
        ),
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  textButton,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.done,
                color: isCompleted ? Colors.white : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
