import 'package:flutter/material.dart';

class ActionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ActionAppBar({super.key, this.title});

  final String? title;
  final double appBarHeight = 60;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    AppBarTheme appBarTheme = Theme.of(context).appBarTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return PreferredSize(
      preferredSize: Size.fromHeight(appBarHeight),
      child: AppBar(
        backgroundColor: appBarTheme.backgroundColor,
        centerTitle: true,
        title: Text(
          title ?? '',
          style: textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        leadingWidth: 85,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Cancel",
            style: TextStyle(
              fontSize: 16,
              color: colorScheme.primary,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Publish",
              style: TextStyle(
                fontSize: 16,
                color: colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
