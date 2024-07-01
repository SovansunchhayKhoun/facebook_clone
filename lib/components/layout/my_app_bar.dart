import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
  });

  final double appBarHeight = 60;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return AppBar(
      title: Text(
        'facebook',
        style: textTheme.headlineLarge,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(LucideIcons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            LucideIcons.messageCircle,
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: Container(
          height: 0.5,
          color: colorScheme.tertiary,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
