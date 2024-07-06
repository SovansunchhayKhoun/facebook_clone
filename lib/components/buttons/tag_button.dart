import 'package:flutter/material.dart';

class TagButton extends StatelessWidget {
  final String title;

  final VoidCallback onButtonPressed;

  const TagButton({
    super.key,
    this.title = 'button',
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color.fromRGBO(94, 94, 94, 0.741),
      ),
      onPressed: onButtonPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Text(
          title,
          style: const TextStyle(
               fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
