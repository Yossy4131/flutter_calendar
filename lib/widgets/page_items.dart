import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const Button({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
      ),
      child: Text(title),
    );
  }
}
