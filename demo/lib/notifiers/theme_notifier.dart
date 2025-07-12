import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class ThemeNotifier extends ChangeNotifier {
  BoxShadowTokens boxShadows = const BoxShadowTokens();
  BorderWidthTokens borderWidths = const BorderWidthTokens();
  BreakpointTokens breakpoints = const BreakpointTokens();
  DurationTokens durations = const DurationTokens();
  ElevationTokens elevations = const ElevationTokens();
  FormFactor formFactor = FormFactor.medium;
  IconSizeTokens iconSizes = const IconSizeTokens();
  LayoutGridTokens layoutGrid = const LayoutGridTokens();
  OpacityTokens opacities = const OpacityTokens();
  RadiusTokens radii = const RadiusTokens();
  SpacingTokens spacings = const SpacingTokens();
  TextShadowTokens textShadows = const TextShadowTokens();
  ZIndexTokens zIndexes = const ZIndexTokens();

  DesignTokens get tokens => DesignTokens(
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
  void updateBoxShadowsTokens(BoxShadowTokens newBoxShadows) {
    boxShadows = newBoxShadows;
    notifyListeners();
  }

  /// Updates the borderWidths tokens and notifies listeners.
  void updateBorderWidthsTokens(BorderWidthTokens newBorderWidths) {
    borderWidths = newBorderWidths;
    notifyListeners();
  }

  /// Updates the breakpoints tokens and notifies listeners.
  void updateBreakpointsTokens(BreakpointTokens newBreakpoints) {
    breakpoints = newBreakpoints;
    notifyListeners();
  }

  /// Updates the durations tokens and notifies listeners.
  void updateDurationsTokens(DurationTokens newDurations) {
    durations = newDurations;
    notifyListeners();
  }

  /// Updates the elevations tokens and notifies listeners.
  void updateElevationsTokens(ElevationTokens newElevations) {
    elevations = newElevations;
    notifyListeners();
  }

  /// Updates the form factor and notifies listeners.
  void updateFormFactor(FormFactor newFormFactor) {
    formFactor = newFormFactor;
    notifyListeners();
  }

  /// Updates the icon sizes tokens and notifies listeners.
  void updateIconSizesTokens(IconSizeTokens newIconSizes) {
    iconSizes = newIconSizes;
    notifyListeners();
  }

  /// Updates the layoutGrid tokens and notifies listeners.
  void updateLayoutGridTokens(LayoutGridTokens newLayoutGrid) {
    layoutGrid = newLayoutGrid;
    notifyListeners();
  }

  /// Updates the opacities tokens and notifies listeners.
  void updateOpacitiesTokens(OpacityTokens newOpacities) {
    opacities = newOpacities;
    notifyListeners();
  }

  /// Updates the radii tokens and notifies listeners.
  void updateRadiiTokens(RadiusTokens newRadii) {
    radii = newRadii;
    notifyListeners();
  }

  /// Updates the spacings tokens and notifies listeners.
  void updateSpacingsTokens(SpacingTokens newSpacings) {
    spacings = newSpacings;
    notifyListeners();
  }

  /// Updates the text shadows tokens and notifies listeners.
  void updateTextShadowsTokens(TextShadowTokens newTextShadows) {
    textShadows = newTextShadows;
    notifyListeners();
  }

  /// Updates the zIndexes tokens and notifies listeners.
  void updateZIndexesTokens(ZIndexTokens newZIndexes) {
    zIndexes = newZIndexes;
    notifyListeners();
  }

  void resetDesignTokens() {
    boxShadows = const BoxShadowTokens();
    borderWidths = const BorderWidthTokens();
    breakpoints = const BreakpointTokens();
    durations = const DurationTokens();
    elevations = const ElevationTokens();
    formFactor = FormFactor.medium;
    iconSizes = const IconSizeTokens();
    layoutGrid = const LayoutGridTokens();
    opacities = const OpacityTokens();
    radii = const RadiusTokens();
    spacings = const SpacingTokens();
    textShadows = const TextShadowTokens();
    zIndexes = const ZIndexTokens();
    notifyListeners();
  }
}
