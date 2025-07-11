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

  final primaryColorTextFieldController = TextEditingController();

  XBoxShadowsData boxShadows = const XBoxShadowsData();
  XBreakpointsData breakpoints = const XBreakpointsData();
  XDurationsData durations = const XDurationsData();
  XElevationsData elevations = const XElevationsData();
  XFormFactor formFactor = XFormFactor.medium;
  XIconSizesData iconSizes = const XIconSizesData();
  XRadiiData _radiiData = const XRadiiData();
  XSpacingsData spacings = const XSpacingsData();
  XTextShadowsData textShadows = const XTextShadowsData();

  /// Gets the current primary color used in the theme.
  Color get primaryColor => _primaryColor;

  /// Gets the current radii data used in the theme.
  XRadiiData get radiiData => _radiiData;

  XDesignTokensData get tokens => XDesignTokensData(
        boxShadows: boxShadows,
        breakpoints: breakpoints,
        durations: durations,
        elevations: elevations,
        formFactor: formFactor,
        iconSizes: iconSizes,
        radii: radiiData,
        spacings: spacings,
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

  /// Updates the spacings data and notifies listeners.
  void updateSpacingsData(XSpacingsData newSpacingsData) {
    spacings = newSpacingsData;
    notifyListeners();
  }

  /// Updates the icon sizes data and notifies listeners.
  void updateIconSizesData(XIconSizesData newIconSizesData) {
    iconSizes = newIconSizesData;
    notifyListeners();
  }

  /// Updates the elevations data and notifies listeners.
  void updateElevationsData(XElevationsData newElevationsData) {
    elevations = newElevationsData;
    notifyListeners();
  }

  /// Updates the durations data and notifies listeners.
  void updateDurationsData(XDurationsData newDurationsData) {
    durations = newDurationsData;
    notifyListeners();
  }

  /// Updates the breakpoints data and notifies listeners.
  void updateBreakpointsData(XBreakpointsData newBreakpointsData) {
    breakpoints = newBreakpointsData;
    notifyListeners();
  }

  /// Updates the box shadows data and notifies listeners.
  void updateBoxShadowsData(XBoxShadowsData newBoxShadowsData) {
    boxShadows = newBoxShadowsData;
    notifyListeners();
  }

  /// Updates the text shadows data and notifies listeners.
  void updateTextShadowsData(XTextShadowsData newTextShadowsData) {
    textShadows = newTextShadowsData;
    notifyListeners();
  }

  /// Updates the form factor and notifies listeners.
  void updateFormFactor(XFormFactor newFormFactor) {
    formFactor = newFormFactor;
    notifyListeners();
  }

  void resetXDesignTokensData() {
    _primaryColor = _m3Baseline;
    primaryColorTextFieldController.clear();
    boxShadows = const XBoxShadowsData();
    breakpoints = const XBreakpointsData();
    durations = const XDurationsData();
    elevations = const XElevationsData();
    formFactor = XFormFactor.medium;
    iconSizes = const XIconSizesData();
    _radiiData = const XRadiiData();
    spacings = const XSpacingsData();
    textShadows = const XTextShadowsData();
    notifyListeners();
  }
}
