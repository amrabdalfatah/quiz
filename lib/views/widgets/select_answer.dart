import 'package:flutter/material.dart';

class SelectAnswer extends StatelessWidget {
  final String answer;
  final int? groupValue;
  final int value;
  final Color color;
  final void Function(int?)? changeRadio;
  const SelectAnswer({
    super.key,
    required this.answer,
    required this.value,
    required this.changeRadio,
    required this.groupValue,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
        // color.red, color.orange
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: const Border(
          top: BorderSide(
            color: Colors.white,
            width: 2,
          ),
          left: BorderSide(
            color: Colors.white,
            width: 2,
          ),
          bottom: BorderSide(
            color: Colors.white,
            width: 2,
          ),
          right: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
      child: Row(
        children: [
          Radio<int>(
            value: value,
            groupValue: groupValue,
            onChanged: changeRadio,
            activeColor: Colors.white,
          ),
          Text(
            answer,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
