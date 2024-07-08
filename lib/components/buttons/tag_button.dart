import 'package:flutter/material.dart';

class TagButton extends StatelessWidget {
  final String title;
  final double borderRadius;
  final Color color;

  final VoidCallback onButtonPressed;

  const TagButton({
    super.key,
    this.title = 'button',
    required this.color,
    this.borderRadius = 18,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: colorScheme.surface,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius))),
      onPressed: onButtonPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, color: color),
        ),
      ),
    );
  }
}
