import 'package:flutter/material.dart';

class ShowInformation extends StatelessWidget {
  final String textInfo;
  final Color color;
  const ShowInformation({
    super.key,
    required this.textInfo,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: color,
      ),
      child: Text(
        textInfo,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
