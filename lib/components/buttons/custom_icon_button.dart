import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onPressed;

  const CustomIconButton(
      {super.key, required this.icon, this.text = '', required this.onPressed});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme.surface,
        ),
        child: Center(
          child: TextButton(
            onPressed: onPressed,
            child: Icon(
              icon,
              size: 25,
              color: colorScheme.inversePrimary,
            ),
          ),
        ),
      ),
      const SizedBox(height: 8),
      if (text.isNotEmpty) ...[
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: colorScheme.inversePrimary),
        ),
      ]
    ]);
  }
}
