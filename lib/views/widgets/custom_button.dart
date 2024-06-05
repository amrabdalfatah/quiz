import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback buttonClicked;
  final IconData icon;
  const CustomButton({
    super.key,
    required this.buttonClicked,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: MaterialButton(
        onPressed: buttonClicked,
        color: Colors.orange,
        child: Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
