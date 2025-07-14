import 'package:flutter/material.dart';

/// A [ChangeNotifier] that holds the state of the root page.
class RootNotifier extends ChangeNotifier {
  /// The currently selected index of the navigation bar.
  int selectedIndex = 0;

  /// Called when an item in the navigation bar is tapped.
  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
