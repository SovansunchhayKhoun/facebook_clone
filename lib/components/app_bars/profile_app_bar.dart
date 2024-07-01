import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const ProfileAppBar({
    super.key,
    this.title,
  });

  final double appBarHeight = 60;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    AppBarTheme appBarTheme = Theme.of(context).appBarTheme;
    return PreferredSize(
      preferredSize: Size.fromHeight(appBarHeight),
      child: AppBar(
        backgroundColor: appBarTheme.backgroundColor,
        centerTitle: true,
        title: Text(
          title ?? '',
          style: textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(LucideIcons.search),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
