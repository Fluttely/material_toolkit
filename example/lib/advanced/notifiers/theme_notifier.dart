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

  XBoxShadowsTokens boxShadows = const XBoxShadowsTokens();
  XBreakpointsTokens breakpoints = const XBreakpointsTokens();
  XDurationsTokens durations = const XDurationsTokens();
  XElevationsTokens elevations = const XElevationsTokens();
  XFormFactor formFactor = XFormFactor.medium;
  XIconSizesTokens iconSizes = const XIconSizesTokens();
  XRadiiTokens _radiiTokens = const XRadiiTokens();
  XSpacingsTokens spacings = const XSpacingsTokens();
  XTextShadowsTokens textShadows = const XTextShadowsTokens();

  /// Gets the current primary color used in the theme.
  Color get primaryColor => _primaryColor;

  /// Gets the current radii data used in the theme.
  XRadiiTokens get radiiTokens => _radiiTokens;

  XDesignTokens get tokens => XDesignTokens(
        boxShadows: boxShadows,
        breakpoints: breakpoints,
        durations: durations,
        elevations: elevations,
        formFactor: formFactor,
        iconSizes: iconSizes,
        radii: radiiTokens,
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
  /// * [newRadiiTokens]: The new radii data to be used in the theme.
  void updateRadiiTokens(XRadiiTokens newRadiiTokens) {
    _radiiTokens = newRadiiTokens;
    notifyListeners();
  }

  /// Updates the spacings data and notifies listeners.
  void updateSpacingsTokens(XSpacingsTokens newSpacingsTokens) {
    spacings = newSpacingsTokens;
    notifyListeners();
  }

  /// Updates the icon sizes data and notifies listeners.
  void updateIconSizesTokens(XIconSizesTokens newIconSizesTokens) {
    iconSizes = newIconSizesTokens;
    notifyListeners();
  }

  /// Updates the elevations data and notifies listeners.
  void updateElevationsTokens(XElevationsTokens newElevationsTokens) {
    elevations = newElevationsTokens;
    notifyListeners();
  }

  /// Updates the durations data and notifies listeners.
  void updateDurationsTokens(XDurationsTokens newDurationsTokens) {
    durations = newDurationsTokens;
    notifyListeners();
  }

  /// Updates the breakpoints data and notifies listeners.
  void updateBreakpointsTokens(XBreakpointsTokens newBreakpointsTokens) {
    breakpoints = newBreakpointsTokens;
    notifyListeners();
  }

  /// Updates the box shadows data and notifies listeners.
  void updateBoxShadowsTokens(XBoxShadowsTokens newBoxShadowsTokens) {
    boxShadows = newBoxShadowsTokens;
    notifyListeners();
  }

  /// Updates the text shadows data and notifies listeners.
  void updateTextShadowsTokens(XTextShadowsTokens newTextShadowsTokens) {
    textShadows = newTextShadowsTokens;
    notifyListeners();
  }

  /// Updates the form factor and notifies listeners.
  void updateFormFactor(XFormFactor newFormFactor) {
    formFactor = newFormFactor;
    notifyListeners();
  }

  void resetXDesignTokens() {
    _primaryColor = _m3Baseline;
    primaryColorTextFieldController.clear();
    boxShadows = const XBoxShadowsTokens();
    breakpoints = const XBreakpointsTokens();
    durations = const XDurationsTokens();
    elevations = const XElevationsTokens();
    formFactor = XFormFactor.medium;
    iconSizes = const XIconSizesTokens();
    _radiiTokens = const XRadiiTokens();
    spacings = const XSpacingsTokens();
    textShadows = const XTextShadowsTokens();
    notifyListeners();
  }
}
