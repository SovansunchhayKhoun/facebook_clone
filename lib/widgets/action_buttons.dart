import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ActionButtons extends StatelessWidget {
  final ColorScheme colorScheme;

  const ActionButtons({super.key, required this.colorScheme});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0), // Padding around the row
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            // ignore: avoid_print
            onPressed: () => print('Like button pressed'),
            icon: Icon(
              LucideIcons.thumbsUp,
              size: 16,
              color: colorScheme.inversePrimary,
            ),
            label: Text(
              'Like',
              style: TextStyle(color: colorScheme.inversePrimary),
            ),
          ),
          TextButton.icon(
            // ignore: avoid_print
            onPressed: () => print('Comment button pressed'),
            icon: Icon(
              LucideIcons.messageCircle,
              size: 16,
              color: colorScheme.inversePrimary,
            ),
            label: Text(
              'Comment',
              style: TextStyle(color: colorScheme.inversePrimary),
            ),
          ),
          TextButton.icon(
            // ignore: avoid_print
            onPressed: () => print('Share button pressed'),
            icon: Icon(
              LucideIcons.forward,
              size: 16,
              color: colorScheme.inversePrimary,
            ),
            label: Text(
              'Share',
              style: TextStyle(color: colorScheme.inversePrimary),
            ),
          ),
        ],
      ),
    );
  }
}
