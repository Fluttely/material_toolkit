import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class ThemeNotifier extends ChangeNotifier {
  XBoxShadowsTokens boxShadows = const XBoxShadowsTokens();
  XBorderWidthsTokens borderWidths = const XBorderWidthsTokens();
  XBreakpointsTokens breakpoints = const XBreakpointsTokens();
  XDurationsTokens durations = const XDurationsTokens();
  XElevationsTokens elevations = const XElevationsTokens();
  XFormFactor formFactor = XFormFactor.medium;
  XIconSizesTokens iconSizes = const XIconSizesTokens();
  XLayoutGridTokens layoutGrid = const XLayoutGridTokens();
  XOpacitiesTokens opacities = const XOpacitiesTokens();
  XRadiiTokens radii = const XRadiiTokens();
  XSpacingsTokens spacings = const XSpacingsTokens();
  XTextShadowsTokens textShadows = const XTextShadowsTokens();
  XZIndexesTokens zIndexes = const XZIndexesTokens();

  XDesignTokens get tokens => XDesignTokens(
    boxShadows: boxShadows,
    borderWidths: borderWidths,
    breakpoints: breakpoints,
    durations: durations,
    elevations: elevations,
    formFactor: formFactor,
    iconSizes: iconSizes,
    layoutGrid: layoutGrid,
    opacities: opacities,
    radii: radii,
    spacings: spacings,
    textShadows: textShadows,
    zIndexes: zIndexes,
  );

  /// Updates the box shadows tokens and notifies listeners.
  void updateBoxShadowsTokens(XBoxShadowsTokens newBoxShadows) {
    boxShadows = newBoxShadows;
    notifyListeners();
  }

  /// Updates the borderWidths tokens and notifies listeners.
  void updateBorderWidthsTokens(XBorderWidthsTokens newBorderWidths) {
    borderWidths = newBorderWidths;
    notifyListeners();
  }

  /// Updates the breakpoints tokens and notifies listeners.
  void updateBreakpointsTokens(XBreakpointsTokens newBreakpoints) {
    breakpoints = newBreakpoints;
    notifyListeners();
  }

  /// Updates the durations tokens and notifies listeners.
  void updateDurationsTokens(XDurationsTokens newDurations) {
    durations = newDurations;
    notifyListeners();
  }

  /// Updates the elevations tokens and notifies listeners.
  void updateElevationsTokens(XElevationsTokens newElevations) {
    elevations = newElevations;
    notifyListeners();
  }

  /// Updates the form factor and notifies listeners.
  void updateFormFactor(XFormFactor newFormFactor) {
    formFactor = newFormFactor;
    notifyListeners();
  }

  /// Updates the icon sizes tokens and notifies listeners.
  void updateIconSizesTokens(XIconSizesTokens newIconSizes) {
    iconSizes = newIconSizes;
    notifyListeners();
  }

  /// Updates the layoutGrid tokens and notifies listeners.
  void updateLayoutGridTokens(XLayoutGridTokens newLayoutGrid) {
    layoutGrid = newLayoutGrid;
    notifyListeners();
  }

  /// Updates the opacities tokens and notifies listeners.
  void updateOpacitiesTokens(XOpacitiesTokens newOpacities) {
    opacities = newOpacities;
    notifyListeners();
  }

  /// Updates the radii tokens and notifies listeners.
  void updateRadiiTokens(XRadiiTokens newRadii) {
    radii = newRadii;
    notifyListeners();
  }

  /// Updates the spacings tokens and notifies listeners.
  void updateSpacingsTokens(XSpacingsTokens newSpacings) {
    spacings = newSpacings;
    notifyListeners();
  }

  /// Updates the text shadows tokens and notifies listeners.
  void updateTextShadowsTokens(XTextShadowsTokens newTextShadows) {
    textShadows = newTextShadows;
    notifyListeners();
  }

  /// Updates the zIndexes tokens and notifies listeners.
  void updateZIndexesTokens(XZIndexesTokens newZIndexes) {
    zIndexes = newZIndexes;
    notifyListeners();
  }

  void resetXDesignTokens() {
    boxShadows = const XBoxShadowsTokens();
    borderWidths = const XBorderWidthsTokens();
    breakpoints = const XBreakpointsTokens();
    durations = const XDurationsTokens();
    elevations = const XElevationsTokens();
    formFactor = XFormFactor.medium;
    iconSizes = const XIconSizesTokens();
    layoutGrid = const XLayoutGridTokens();
    opacities = const XOpacitiesTokens();
    radii = const XRadiiTokens();
    spacings = const XSpacingsTokens();
    textShadows = const XTextShadowsTokens();
    zIndexes = const XZIndexesTokens();
    notifyListeners();
  }
}
