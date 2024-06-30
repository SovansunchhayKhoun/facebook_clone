import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/providers/layout_provider.dart';
import 'package:provider/provider.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Consumer<LayoutProvider>(
      builder: (context, layoutProvider, child) {
        return Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: colorScheme.background),
            ),
          ),
          child: BottomNavigationBar(
            onTap: (index) => layoutProvider.setSelectedIndex(index),
            // onTap: navigateBottomBar,
            currentIndex: layoutProvider.getSelectedIndex,
            items: [
              _bottomNavigationBarItem(
                context: context,
                icon: LucideIcons.home,
                label: 'Home',
                selectedIndex: layoutProvider.getSelectedIndex,
                index: 0,
              ),
              _bottomNavigationBarItem(
                context: context,
                icon: LucideIcons.monitorPlay,
                label: 'Video',
                selectedIndex: layoutProvider.getSelectedIndex,
                index: 1,
              ),
              _bottomNavigationBarItem(
                context: context,
                icon: LucideIcons.store,
                label: 'Marketplace',
                selectedIndex: layoutProvider.getSelectedIndex,
                index: 2,
              ),
              _bottomNavigationBarItem(
                context: context,
                icon: LucideIcons.bell,
                label: 'Notifications',
                selectedIndex: layoutProvider.getSelectedIndex,
                index: 3,
              ),
              _bottomNavigationBarItem(
                context: context,
                icon: LucideIcons.menu,
                label: 'Settings',
                selectedIndex: layoutProvider.getSelectedIndex,
                index: 4,
              ),
            ],
          ),
        );
      },
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
