import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomIconButton({super.key, required this.icon, this.text = ''});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme.tertiaryContainer,
        ),
        child: Center(
          child: TextButton(
            child: Icon(
              icon,
              size: 25,
              color: colorScheme.tertiary,
            ),
            onPressed: () {},
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
