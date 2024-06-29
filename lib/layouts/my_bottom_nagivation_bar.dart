import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) navigateBottomBar;

  const MyBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.navigateBottomBar,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return BottomNavigationBarTheme(
      data: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: colorScheme.secondary,
        unselectedItemColor: colorScheme.tertiary,
        selectedItemColor: colorScheme.primary,
        selectedLabelStyle:
            const TextStyle(overflow: TextOverflow.visible, fontSize: 10),
        unselectedLabelStyle:
            const TextStyle(overflow: TextOverflow.visible, fontSize: 10),
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: colorScheme.background))),
        child: BottomNavigationBar(
          onTap: navigateBottomBar,
          currentIndex: selectedIndex,
          items: [
            bottomNavigationBarItem(
              context: context,
              icon: LucideIcons.home,
              label: 'Home',
              selectedIndex: selectedIndex,
              index: 0,
            ),
            bottomNavigationBarItem(
              context: context,
              icon: LucideIcons.monitorPlay,
              label: 'Video',
              selectedIndex: selectedIndex,
              index: 1,
            ),
            bottomNavigationBarItem(
              context: context,
              icon: LucideIcons.store,
              label: 'Marketplace',
              selectedIndex: selectedIndex,
              index: 2,
            ),
            bottomNavigationBarItem(
              context: context,
              icon: LucideIcons.bell,
              label: 'Notifications',
              selectedIndex: selectedIndex,
              index: 3,
            ),
            bottomNavigationBarItem(
              context: context,
              icon: LucideIcons.menu,
              label: 'Menu',
              selectedIndex: selectedIndex,
              index: 4,
            ),
          ],
        ),
      ),
    );
  }
}

BottomNavigationBarItem bottomNavigationBarItem({
  required BuildContext context,
  required IconData icon,
  required String label,
  required int selectedIndex,
  required int index,
}) {
  // ColorScheme colorScheme = Theme.of(context).colorScheme;
  return BottomNavigationBarItem(
    icon: Container(
      child: Icon(
        icon,
        // color:
        // isSelectedIndex ? colorScheme.primary : colorScheme.inversePrimary,
      ),
    ),
    label: label,
  );
}
