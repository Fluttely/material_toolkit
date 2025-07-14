import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// A [ChangeNotifier] that holds the state of the [DesignTokens] and
/// provides methods to update them.
class ThemeNotifier extends ChangeNotifier {
  /// The box shadow tokens.
  BoxShadowTokensData boxShadows = const BoxShadowTokensData();

  /// The border width tokens.
  BorderWidthTokensData borderWidths = const BorderWidthTokensData();

  /// The breakpoint tokens.
  BreakpointTokensData breakpoints = const BreakpointTokensData();

  /// The motion tokens.
  MotionTokensData motions = const MotionTokensData();

  /// The elevation tokens.
  ElevationTokensData elevations = const ElevationTokensData();

  /// The form factor.
  MaterialFormFactor formFactor = MaterialFormFactor.medium;

  /// The icon size tokens.
  IconSizeTokensData iconSizes = const IconSizeTokensData();

  /// The layout grid tokens.
  LayoutGridTokensData layoutGrid = const LayoutGridTokensData();

  /// The opacity tokens.
  OpacityTokensData opacities = const OpacityTokensData();

  /// The radius tokens.
  RadiusTokensData radii = const RadiusTokensData();

  /// The spacing tokens.
  SpacingTokensData spacings = const SpacingTokensData();

  /// The text shadow tokens.
  TextShadowTokensData textShadows = const TextShadowTokensData();

  /// The z-index tokens.
  ZIndexTokensData zIndexes = const ZIndexTokensData();

  /// Returns the [DesignTokens] created from the current notifier state.
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
  void updateBoxShadowsTokens(BoxShadowTokensData newBoxShadows) {
    boxShadows = newBoxShadows;
    notifyListeners();
  }

  /// Updates the border widths tokens and notifies listeners.
  void updateBorderWidthsTokens(BorderWidthTokensData newBorderWidths) {
    borderWidths = newBorderWidths;
    notifyListeners();
  }

  /// Updates the breakpoints tokens and notifies listeners.
  void updateBreakpointsTokens(BreakpointTokensData newBreakpoints) {
    breakpoints = newBreakpoints;
    notifyListeners();
  }

  /// Updates the motions tokens and notifies listeners.
  void updateDurationsTokens(MotionTokensData newMotions) {
    motions = newMotions;
    notifyListeners();
  }

  /// Updates the elevations tokens and notifies listeners.
  void updateElevationsTokens(ElevationTokensData newElevations) {
    elevations = newElevations;
    notifyListeners();
  }

  /// Updates the form factor and notifies listeners.
  void updateFormFactor(MaterialFormFactor newFormFactor) {
    formFactor = newFormFactor;
    notifyListeners();
  }

  /// Updates the icon sizes tokens and notifies listeners.
  void updateIconSizesTokens(IconSizeTokensData newIconSizes) {
    iconSizes = newIconSizes;
    notifyListeners();
  }

  /// Updates the layout grid tokens and notifies listeners.
  void updateLayoutGridTokens(LayoutGridTokensData newLayoutGrid) {
    layoutGrid = newLayoutGrid;
    notifyListeners();
  }

  /// Updates the opacities tokens and notifies listeners.
  void updateOpacitiesTokens(OpacityTokensData newOpacities) {
    opacities = newOpacities;
    notifyListeners();
  }

  /// Updates the radii tokens and notifies listeners.
  void updateRadiiTokens(RadiusTokensData newRadii) {
    radii = newRadii;
    notifyListeners();
  }

  /// Updates the spacings tokens and notifies listeners.
  void updateSpacingsTokens(SpacingTokensData newSpacings) {
    spacings = newSpacings;
    notifyListeners();
  }

  /// Updates the text shadows tokens and notifies listeners.
  void updateTextShadowsTokens(TextShadowTokensData newTextShadows) {
    textShadows = newTextShadows;
    notifyListeners();
  }

  /// Updates the z-indexes tokens and notifies listeners.
  void updateZIndexesTokens(ZIndexTokensData newZIndexes) {
    zIndexes = newZIndexes;
    notifyListeners();
  }

  /// Resets all design tokens to their default values.
  void resetDesignTokens() {
    boxShadows = const BoxShadowTokensData();
    borderWidths = const BorderWidthTokensData();
    breakpoints = const BreakpointTokensData();
    motions = const MotionTokensData();
    elevations = const ElevationTokensData();
    formFactor = MaterialFormFactor.medium;
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
