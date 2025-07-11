library design_tokens;

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_toolkit/material_toolkit.dart';

part 'animation/x_durations_tokens.dart';
part 'geometry/x_border_widths_tokens.dart';
part 'geometry/x_breakpoints_tokens.dart';
part 'geometry/x_elevations_tokens.dart';
part 'geometry/x_form_factor.dart';
part 'geometry/x_icon_sizes_tokens.dart';
part 'geometry/x_layout_grid_tokens.dart';
part 'geometry/x_radii_tokens.dart';
part 'geometry/x_radius.dart';
part 'geometry/x_spacings_tokens.dart';
part 'painting/borders/border_radius/x_border_radius.dart';
part 'painting/borders/border_radius/x_border_radius_resolver.dart';
part 'painting/borders/input/x_input_border_resolver.dart';
part 'painting/borders/input/x_outline_input_border.dart';
part 'painting/borders/input/x_underline_input_border.dart';
part 'painting/borders/radius/x_radius_resolver.dart';
part 'painting/borders/shape/x_beveled_rectangle_border.dart';
part 'painting/borders/shape/x_continuous_rectangle_border.dart';
part 'painting/borders/shape/x_rounded_rectangle_border.dart';
part 'painting/borders/shape/x_shape_resolver.dart';
part 'painting/edge_insets/x_edge_insets_resolver.dart';
part 'painting/edge_insets/x_padding_resolver.dart';
part 'painting/x_box_shadows_tokens.dart';
part 'painting/x_gaps_resolver.dart';
part 'painting/x_google_fonts_tokens.dart';
part 'painting/x_opacities_tokens.dart';
part 'painting/x_text_shadows_tokens.dart';
part 'painting/x_z_indexes_tokens.dart';

class XDesign extends InheritedWidget {
  const XDesign({required super.child, required this.tokens, super.key});

  static XDesignTokens of(BuildContext context) {
    final tokens = context.dependOnInheritedWidgetOfExactType<XDesign>()?.tokens;

    assert(tokens != null, 'No DesignTokens found in context');

    return tokens!;
  }

  static XDesignTokens? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<XDesign>()?.tokens;
  }

  final XDesignTokens tokens;

  @override
  bool updateShouldNotify(XDesign oldWidget) => tokens != oldWidget.tokens;
}

class XDesignTokens extends ThemeExtension<XDesignTokens> {
  final XBoxShadowsTokens boxShadows;
  final XBorderWidthsTokens borderWidths;
  final XBreakpointsTokens breakpoints;
  final XDurationsTokens durations;
  final XElevationsTokens elevations;
  final XFormFactor formFactor;
  final XIconSizesTokens iconSizes;
  final XLayoutGridTokens layoutGrid;
  final XOpacitiesTokens opacities;
  final XRadiiTokens radii;
  final XSpacingsTokens spacings;
  final XTextShadowsTokens textShadows;
  final XZIndexesTokens zIndexes;
  final XGoogleFontsTokens googleFonts;

  XDesignTokens({
    this.boxShadows = const XBoxShadowsTokens(),
    this.borderWidths = const XBorderWidthsTokens(),
    this.breakpoints = const XBreakpointsTokens(),
    this.durations = const XDurationsTokens(),
    this.elevations = const XElevationsTokens(),
    this.formFactor = XFormFactor.medium,
    this.iconSizes = const XIconSizesTokens(),
    this.layoutGrid = const XLayoutGridTokens(),
    this.opacities = const XOpacitiesTokens(),
    this.radii = const XRadiiTokens(),
    this.spacings = const XSpacingsTokens(),
    this.textShadows = const XTextShadowsTokens(),
    this.zIndexes = const XZIndexesTokens(),
  }) : googleFonts = const XGoogleFontsTokens();

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
  late final gaps = XGapsResolver(spacings);
  late final edgeInsets = XEdgeInsetsResolver(spacings);
  late final padding = XPaddingResolver(edgeInsets);

  /// Radii
  late final radius = XRadiusResolver(radii);
  late final borderRadius = XBorderRadiusResolver(radii);
  late final shape = XShapeResolver(radii);
  late final inputBorder = XInputBorderResolver(radii);

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
          textShadows == other.textShadows &&
          gaps == other.gaps &&
          edgeInsets == other.edgeInsets &&
          padding == other.padding &&
          radius == other.radius &&
          borderRadius == other.borderRadius &&
          shape == other.shape &&
          inputBorder == other.inputBorder &&
          googleFonts == other.googleFonts;

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
      textShadows.hashCode ^
      gaps.hashCode ^
      edgeInsets.hashCode ^
      padding.hashCode ^
      radius.hashCode ^
      borderRadius.hashCode ^
      shape.hashCode ^
      inputBorder.hashCode ^
      googleFonts.hashCode;

  @override
  String toString() => '''
    DesignTokensTokens(
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
      radius: $radius,
      borderRadius: $borderRadius,
      shape: $shape,
      inputBorder: $inputBorder,
      googleFonts: $googleFonts,
    )
  ''';
}
