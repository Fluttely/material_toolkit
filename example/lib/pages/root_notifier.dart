import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// Material 3 baseline color.
const Color _m3Baseline = Color(0xFF6750A4);

/// [RootNotifier] is a [ChangeNotifier] that manages and notifies
/// changes to the theme's primary color and radii data.
///
/// This class allows real-time updates to the theme through methods
/// that update the primary color and the radii data. When changes are
/// made, it notifies any listeners that are subscribed to this notifier.
class RootNotifier extends ChangeNotifier {
  Color _primaryColor = _m3Baseline;
  XRadiiData _radiiData = const XRadiiData();

  /// Gets the current primary color used in the theme.
  Color get primaryColor => _primaryColor;

  /// Gets the current radii data used in the theme.
  XRadiiData get radiiData => _radiiData;

  /// Updates the primary color by converting the input hex string
  /// into a [Color] and notifies listeners.
  ///
  /// If the input is not valid, the primary color will default
  /// back to the Material 3 baseline color.
  ///
  /// * [hexColor]: A string representing a hex color (e.g., 'FF0000' for red).
  void updatePrimaryColor(String hexColor) {
    try {
      _primaryColor = Color(int.parse(hexColor, radix: 16) + 0xFF000000);
    } catch (_) {
      _primaryColor = _m3Baseline;
    }
    notifyListeners(); // Notifies the listening widgets about the change.
  }

  /// Updates the radii data and notifies listeners.
  ///
  /// * [newRadiiData]: The new radii data to be used in the theme.
  void updateRadiiData(XRadiiData newRadiiData) {
    _radiiData = newRadiiData;
    notifyListeners(); // Notifies the listening widgets about the change.
  }
}
