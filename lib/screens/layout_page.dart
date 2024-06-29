import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/layouts/my_bottom_navigation_bar.dart';
import 'package:project/screens/feeds/feeds_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key, this.selectedIndex = 0});

  final int? selectedIndex;

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int? _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  List pages = [
    const FeedsScreen(),
  ];

  List<String> titles = [
    'Feeds',
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: rootBundle.loadString('.env'),
        initialData: '',
        builder: (context, snapshot) => pages[_selectedIndex!],
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
