library design_tokens;

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

part 'animation/x_durations_data.dart';
part 'geometry/x_breakpoints_tokens.dart';
part 'geometry/x_elevations_tokens.dart';
part 'geometry/x_form_factor.dart';
part 'geometry/x_icon_sizes_tokens.dart';
part 'geometry/x_radii_tokens.dart';
part 'geometry/x_radius.dart';
part 'geometry/x_spacings_tokens.dart';
part 'painting/borders/input/x_input_borders.dart';
part 'painting/borders/input/x_outline_input_border.dart';
part 'painting/borders/input/x_underline_input_border.dart';
part 'painting/borders/shape/x_beveled_rectangle_border.dart';
part 'painting/borders/shape/x_continuous_rectangle_border.dart';
part 'painting/borders/shape/x_rounded_rectangle_border.dart';
part 'painting/borders/shape/x_shapes.dart';
part 'painting/borders/x_border_radii.dart';
part 'painting/borders/x_border_radius.dart';
part 'painting/borders/x_radius_controller.dart';
part 'painting/x_box_shadows_tokens.dart';
part 'painting/x_edge_insets.dart';
part 'painting/x_gaps.dart';
// part 'painting/x_google_fonts_data.dart';
part 'painting/x_padding.dart';
part 'painting/x_text_shadows_tokens.dart';

class XDesign extends InheritedWidget {
  const XDesign({required super.child, required this.data, super.key});

  static XDesignTokens of(BuildContext context) {
    final tokens = context.dependOnInheritedWidgetOfExactType<XDesign>()?.data;

    assert(tokens != null, 'No DesignTokens found in context');

    return tokens!;
  }

  static XDesignTokens? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<XDesign>()?.data;
  }

  final XDesignTokens data;

  @override
  bool updateShouldNotify(XDesign oldWidget) => data != oldWidget.data;
}

class XDesignTokens extends ThemeExtension<XDesignTokens> {
  final XBoxShadowsTokens boxShadows;
  final XBreakpointsTokens breakpoints;
  final XDurationsTokens durations;
  final XElevationsTokens elevations;
  final XFormFactor formFactor;
  // final XGoogleFontsData googleFonts;
  final XIconSizesTokens iconSizes;
  final XRadiiTokens radii;
  final XSpacingsTokens spacings;
  final XTextShadowsTokens textShadows;
  // blurs:
  // Typography:
  // - Font family mapping (from Figma font name to Flutter name)
  // - Font weight
  // - Line height
  // - Font size
  // - Letter spacing
  // - Text decoration
  // Colors / palettes:
  // shadows:
  // border widths:
  // - Border radius:
  // - opacity:

  // Theme extension
  // - Borders
  // - Border radii
  // - Box Shadows
  // - Colors
  // - Dimensions (also with px)
  // - Font families
  // - Font weights
  // - Line height (only %)
  // - Numbers
  // - Opacity (also with %)
  // - Edge insets
  // - Text cases
  // - Text decorations
  // - Text styles
// Introduce token categories mirroring common design-system practices (colors, typography, border width, opacity, etc.).

  XDesignTokens({
    final XBoxShadowsTokens? boxShadows,
    final XBreakpointsTokens? breakpoints,
    final XDurationsTokens? durations,
    final XElevationsTokens? elevations,
    final XFormFactor? formFactor,
    // final XGoogleFontsData? googleFonts,
    final XIconSizesTokens? iconSizes,
    final XRadiiTokens? radii,
    final XSpacingsTokens? spacings,
    final XTextShadowsTokens? textShadows,
  })  : boxShadows = boxShadows ?? const XBoxShadowsTokens(),
        breakpoints = breakpoints ?? const XBreakpointsTokens(),
        durations = durations ?? const XDurationsTokens(),
        elevations = elevations ?? const XElevationsTokens(),
        formFactor = formFactor ?? XFormFactor.medium,
        // googleFonts = googleFonts ?? const XGoogleFontsData(),
        iconSizes = iconSizes ?? const XIconSizesTokens(),
        radii = radii ?? const XRadiiTokens(),
        spacings = spacings ?? const XSpacingsTokens(),
        textShadows = textShadows ?? const XTextShadowsTokens();

  factory XDesignTokens.material({Map<String, dynamic>? overrides}) {
    XDesignTokens tokens = XDesignTokens();
    if (overrides != null) {
      tokens = tokens.copyWith(
        boxShadows: overrides['boxShadows'] != null
            ? XBoxShadowsTokens.fromMap(overrides['boxShadows'] as Map<String, dynamic>)
            : null,
        breakpoints: overrides['breakpoints'] != null
            ? XBreakpointsTokens.fromMap(overrides['breakpoints'] as Map<String, dynamic>)
            : null,
        durations: overrides['durations'] != null
            ? XDurationsTokens.fromMap(overrides['durations'] as Map<String, dynamic>)
            : null,
        elevations: overrides['elevations'] != null
            ? XElevationsTokens.fromMap(overrides['elevations'] as Map<String, dynamic>)
            : null,
        iconSizes: overrides['iconSizes'] != null
            ? XIconSizesTokens.fromMap(overrides['iconSizes'] as Map<String, dynamic>)
            : null,
        radii: overrides['radii'] != null ? XRadiiTokens.fromMap(overrides['radii'] as Map<String, dynamic>) : null,
        spacings: overrides['spacings'] != null
            ? XSpacingsTokens.fromMap(overrides['spacings'] as Map<String, dynamic>)
            : null,
        textShadows: overrides['textShadows'] != null
            ? XTextShadowsTokens.fromMap(overrides['textShadows'] as Map<String, dynamic>)
            : null,
      );
    }
    return tokens;
  }

  factory XDesignTokens.fromMap(Map<String, dynamic> map) {
    return XDesignTokens.material(overrides: map);
  }

  factory XDesignTokens.fromJson(String json) {
    return XDesignTokens.fromMap(jsonDecode(json) as Map<String, dynamic>);
  }

  /// Spacings
  late final XGaps gaps = XGaps(spacings);
  late final XEdgeInsets edgeInsets = XEdgeInsets(spacings);
  late final XPadding padding = XPadding(edgeInsets);

  /// Radii
  late final XRadiusController radius = XRadiusController(radii);
  late final XBorderRadii borderRadius = XBorderRadii(radii);
  late final XShapes shape = XShapes(radii);
  late final XInputBorders inputBorder = XInputBorders(radii);

  // GoogleFonts get googleFonts => GoogleFonts;

  @override
  ThemeExtension<XDesignTokens> lerp(ThemeExtension<XDesignTokens>? other, double t) {
    if (other is! XDesignTokens) {
      return this;
    } else {
      return XDesignTokens(
        boxShadows: boxShadows,
        breakpoints: breakpoints,
        durations: durations,
        elevations: elevations,
        formFactor: formFactor,
        // googleFonts: googleFonts,
        iconSizes: iconSizes,
        radii: radii,
        spacings: spacings,
        textShadows: textShadows,
      );
    }
  }

  @override
  XDesignTokens copyWith({
    XBoxShadowsTokens? boxShadows,
    XBreakpointsTokens? breakpoints,
    XDurationsTokens? durations,
    XElevationsTokens? elevations,
    XFormFactor? formFactor,
    // XGoogleFontsData? googleFonts,
    XIconSizesTokens? iconSizes,
    XRadiiTokens? radii,
    XSpacingsTokens? spacings,
    XTextShadowsTokens? textShadows,
  }) {
    return XDesignTokens(
      boxShadows: boxShadows ?? this.boxShadows,
      breakpoints: breakpoints ?? this.breakpoints,
      durations: durations ?? this.durations,
      elevations: elevations ?? this.elevations,
      formFactor: formFactor ?? this.formFactor,
      // googleFonts: googleFonts ?? this.googleFonts,
      iconSizes: iconSizes ?? this.iconSizes,
      radii: radii ?? this.radii,
      spacings: spacings ?? this.spacings,
      textShadows: textShadows ?? this.textShadows,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is XDesignTokens &&
          boxShadows == other.boxShadows &&
          breakpoints == other.breakpoints &&
          durations == other.durations &&
          elevations == other.elevations &&
          formFactor == other.formFactor &&
          iconSizes == other.iconSizes &&
          radii == other.radii &&
          spacings == other.spacings &&
          textShadows == other.textShadows;

  @override
  int get hashCode =>
      boxShadows.hashCode ^
      breakpoints.hashCode ^
      durations.hashCode ^
      elevations.hashCode ^
      formFactor.hashCode ^
      iconSizes.hashCode ^
      radii.hashCode ^
      spacings.hashCode ^
      textShadows.hashCode;

  @override
  String toString() => '''
    DesignTokensData(
      boxShadows: $boxShadows,
      breakpoints: $breakpoints,
      durations: $durations,
      elevations: $elevations,
      formFactor: $formFactor,
      iconSizes: $iconSizes,
      radii: $radii,
      spacings: $spacings,
      textShadows: $textShadows,
      gaps: $gaps,
      edgeInsets: $edgeInsets,
      padding: $padding,
    )
  ''';
  // borderRadii: $borderRadii,
  // shapes: $shapes,
  // inputBorders: $inputBorders,
  // googleFonts: $googleFonts,
}
