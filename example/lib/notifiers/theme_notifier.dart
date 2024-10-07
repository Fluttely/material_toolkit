import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// Material 3 baseline color.
const Color _m3Baseline = Color(0xFF6750A4);

/// [ThemeNotifier] is a [ChangeNotifier] that manages and notifies
/// changes to the theme's primary color and radii data.
///
/// This class allows real-time updates to the theme through methods
/// that update the primary color and the radii data. When changes are
/// made, it notifies any listeners that are subscribed to this notifier.
class ThemeNotifier extends ChangeNotifier {
  Color _primaryColor = _m3Baseline;
  XBoxShadowsData boxShadows = const XBoxShadowsData();
  XBreakpointsData breakpoints = const XBreakpointsData();
  XDurationsData durations = const XDurationsData();
  XElevationsData elevations = const XElevationsData();
  XFormFactor formFactor = XFormFactor.medium;
  XIconSizesData iconSizes = const XIconSizesData();
  XRadiiData _radiiData = const XRadiiData();
  XSpacesData spaces = const XSpacesData();
  XTextShadowsData textShadows = const XTextShadowsData();

  /// Gets the current primary color used in the theme.
  Color get primaryColor => _primaryColor;

  /// Gets the current radii data used in the theme.
  XRadiiData get radiiData => _radiiData;

  XMetricsData get metrics => XMetricsData(
        boxShadows: boxShadows,
        breakpoints: breakpoints,
        durations: durations,
        elevations: elevations,
        formFactor: formFactor,
        iconSizes: iconSizes,
        radii: radiiData,
        spaces: spaces,
        textShadows: textShadows,
      );

  /// Updates the primary color by converting the input hex string
  /// into a [Color] and notifies listeners.
  ///
  /// If the input is not valid, the primary color will default
  /// back to the Material 3 baseline color.
  ///
  /// * [newHexColor]: A string representing a hex color (e.g., 'FF0000' for red).
  void updatePrimaryColor(String newHexColor) {
    try {
      _primaryColor = Color(int.parse(newHexColor, radix: 16) + 0xFF000000);
    } catch (_) {
      _primaryColor = _m3Baseline;
    }
    notifyListeners();
  }

  /// Updates the radii data and notifies listeners.
  ///
  /// * [newRadiiData]: The new radii data to be used in the theme.
  void updateRadiiData(XRadiiData newRadiiData) {
    _radiiData = newRadiiData;
    notifyListeners();
  }

  void resetMetricsData() {
    boxShadows = const XBoxShadowsData();
    breakpoints = const XBreakpointsData();
    durations = const XDurationsData();
    elevations = const XElevationsData();
    formFactor = XFormFactor.medium;
    iconSizes = const XIconSizesData();
    _radiiData = const XRadiiData();
    spaces = const XSpacesData();
    textShadows = const XTextShadowsData();
    notifyListeners();
  }
}
