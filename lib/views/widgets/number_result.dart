import 'package:flutter/material.dart';

class NumberResult extends StatelessWidget {
  final String number;
  final Color color;

  const NumberResult({
    super.key,
    required this.color,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: color,
        border: const Border(
          top: BorderSide(
            width: 2,
          ),
          bottom: BorderSide(
            width: 2,
          ),
          left: BorderSide(
            width: 2,
          ),
          right: BorderSide(
            width: 2,
          ),
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          number,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
