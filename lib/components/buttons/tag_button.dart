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
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: colorScheme.surface,
      ),
      onPressed: onButtonPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
    );
  }
}
