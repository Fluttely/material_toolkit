import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class ThemeNotifier extends ChangeNotifier {
  BoxShadowTokensData boxShadows = const BoxShadowTokensData();
  BorderWidthTokensData borderWidths = const BorderWidthTokensData();
  BreakpointTokensData breakpoints = const BreakpointTokensData();
  MotionTokensData motions = const MotionTokensData();
  ElevationTokensData elevations = const ElevationTokensData();
  FormFactor formFactor = FormFactor.medium;
  IconSizeTokensData iconSizes = const IconSizeTokensData();
  LayoutGridTokensData layoutGrid = const LayoutGridTokensData();
  OpacityTokensData opacities = const OpacityTokensData();
  RadiusTokensData radii = const RadiusTokensData();
  SpacingTokensData spacings = const SpacingTokensData();
  TextShadowTokensData textShadows = const TextShadowTokensData();
  ZIndexTokensData zIndexes = const ZIndexTokensData();

  DesignTokens get tokens => DesignTokens(
    boxShadows: boxShadows,
    borderWidths: borderWidths,
    breakpoints: breakpoints,
    motions: motions,
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
  void updateBoxShadowTokensData(BoxShadowTokensData newBoxShadows) {
    boxShadows = newBoxShadows;
    notifyListeners();
  }

  /// Updates the borderWidths tokens and notifies listeners.
  void updateBorderWidthTokensData(BorderWidthTokensData newBorderWidths) {
    borderWidths = newBorderWidths;
    notifyListeners();
  }

  /// Updates the breakpoints tokens and notifies listeners.
  void updateBreakpointTokensData(BreakpointTokensData newBreakpoints) {
    breakpoints = newBreakpoints;
    notifyListeners();
  }

  /// Updates the motions tokens and notifies listeners.
  void updateMotionTokensData(MotionTokensData newMotions) {
    motions = newMotions;
    notifyListeners();
  }

  /// Updates the elevations tokens and notifies listeners.
  void updateElevationTokensData(ElevationTokensData newElevations) {
    elevations = newElevations;
    notifyListeners();
  }

  /// Updates the form factor and notifies listeners.
  void updateFormFactor(FormFactor newFormFactor) {
    formFactor = newFormFactor;
    notifyListeners();
  }

  /// Updates the icon sizes tokens and notifies listeners.
  void updateIconSizeTokensData(IconSizeTokensData newIconSizes) {
    iconSizes = newIconSizes;
    notifyListeners();
  }

  /// Updates the layoutGrid tokens and notifies listeners.
  void updateLayoutGridTokensData(LayoutGridTokensData newLayoutGrid) {
    layoutGrid = newLayoutGrid;
    notifyListeners();
  }

  /// Updates the opacities tokens and notifies listeners.
  void updateOpacityTokensData(OpacityTokensData newOpacities) {
    opacities = newOpacities;
    notifyListeners();
  }

  /// Updates the radii tokens and notifies listeners.
  void updateRadiusTokensData(RadiusTokensData newRadii) {
    radii = newRadii;
    notifyListeners();
  }

  /// Updates the spacings tokens and notifies listeners.
  void updateSpacingTokensData(SpacingTokensData newSpacings) {
    spacings = newSpacings;
    notifyListeners();
  }

  /// Updates the text shadows tokens and notifies listeners.
  void updateTextShadowTokensData(TextShadowTokensData newTextShadows) {
    textShadows = newTextShadows;
    notifyListeners();
  }

  /// Updates the zIndexes tokens and notifies listeners.
  void updateZIndexTokensData(ZIndexTokensData newZIndexes) {
    zIndexes = newZIndexes;
    notifyListeners();
  }

  void resetDesignTokens() {
    boxShadows = const BoxShadowTokensData();
    borderWidths = const BorderWidthTokensData();
    breakpoints = const BreakpointTokensData();
    motions = const MotionTokensData();
    elevations = const ElevationTokensData();
    formFactor = FormFactor.medium;
    iconSizes = const IconSizeTokensData();
    layoutGrid = const LayoutGridTokensData();
    opacities = const OpacityTokensData();
    radii = const RadiusTokensData();
    spacings = const SpacingTokensData();
    textShadows = const TextShadowTokensData();
    zIndexes = const ZIndexTokensData();
    notifyListeners();
  }
}
