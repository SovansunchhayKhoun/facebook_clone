import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MyBottomNavigationBar extends StatelessWidget {
  // TODO: should be callable without props
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

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: colorScheme.background),
        ),
      ),
      child: BottomNavigationBar(
        onTap: navigateBottomBar,
        currentIndex: selectedIndex,
        items: [
          _bottomNavigationBarItem(
            context: context,
            icon: LucideIcons.home,
            label: 'Home',
            selectedIndex: selectedIndex,
            index: 0,
          ),
          _bottomNavigationBarItem(
            context: context,
            icon: LucideIcons.monitorPlay,
            label: 'Video',
            selectedIndex: selectedIndex,
            index: 1,
          ),
          _bottomNavigationBarItem(
            context: context,
            icon: LucideIcons.store,
            label: 'Marketplace',
            selectedIndex: selectedIndex,
            index: 2,
          ),
          _bottomNavigationBarItem(
            context: context,
            icon: LucideIcons.bell,
            label: 'Notifications',
            selectedIndex: selectedIndex,
            index: 3,
          ),
          _bottomNavigationBarItem(
            context: context,
            icon: LucideIcons.menu,
            label: 'Settings',
            selectedIndex: selectedIndex,
            index: 4,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem({
    required BuildContext context,
    required IconData icon,
    required String label,
    required int selectedIndex,
    required int index,
  }) {
    // ColorScheme colorScheme = Theme.of(context).colorScheme;
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
      activeIcon: Column(
        children: [
          Container(color: Colors.blue, height: 4),
          const SizedBox(
            height: 8,
          ),
          Icon(icon),
        ],
      ),
    );
  }
}
