import 'package:flutter/material.dart';

class LayoutProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get getSelectedIndex => _selectedIndex;

  void setSelectedIndex(int newIndex) {
    _selectedIndex = newIndex;
    notifyListeners();
  }
}
