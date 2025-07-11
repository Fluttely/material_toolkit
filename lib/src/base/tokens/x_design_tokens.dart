library design_tokens;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

part 'animation/x_durations_data.dart';
part 'geometry/x_breakpoints_data.dart';
part 'geometry/x_elevations_data.dart';
part 'geometry/x_form_factor.dart';
part 'geometry/x_icon_sizes_data.dart';
part 'geometry/x_radii_data.dart';
part 'geometry/x_radius.dart';
part 'geometry/x_spaces_data.dart';
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
part 'painting/x_box_shadows_data.dart';
part 'painting/x_edge_insets.dart';
part 'painting/x_gaps.dart';
// part 'painting/x_google_fonts_data.dart';
part 'painting/x_padding.dart';
part 'painting/x_text_shadows_data.dart';

class XDesignTokens extends InheritedWidget {
  const XDesignTokens({required super.child, required this.data, super.key});

  static XDesignTokensData of(BuildContext context) {
    final tokens = context.dependOnInheritedWidgetOfExactType<XDesignTokens>()?.data;

    assert(tokens != null, 'No DesignTokens found in context');

    return tokens!;
  }

  static XDesignTokensData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<XDesignTokens>()?.data;
  }

  final XDesignTokensData data;

  @override
  bool updateShouldNotify(XDesignTokens oldWidget) => data != oldWidget.data;
}

class XDesignTokensData extends ThemeExtension<XDesignTokensData> {
  final XBoxShadowsData boxShadows;
  final XBreakpointsData breakpoints;
  final XDurationsData durations;
  final XElevationsData elevations;
  final XFormFactor formFactor;
  // final XGoogleFontsData googleFonts;
  final XIconSizesData iconSizes;
  final XRadiiData radii;
  final XSpacesData spaces;
  final XTextShadowsData textShadows;
  // blurs

  XDesignTokensData({
    final XBoxShadowsData? boxShadows,
    final XBreakpointsData? breakpoints,
    final XDurationsData? durations,
    final XElevationsData? elevations,
    final XFormFactor? formFactor,
    // final XGoogleFontsData? googleFonts,
    final XIconSizesData? iconSizes,
    final XRadiiData? radii,
    final XSpacesData? spaces,
    final XTextShadowsData? textShadows,
  })  : boxShadows = boxShadows ?? const XBoxShadowsData(),
        breakpoints = breakpoints ?? const XBreakpointsData(),
        durations = durations ?? const XDurationsData(),
        elevations = elevations ?? const XElevationsData(),
        formFactor = formFactor ?? XFormFactor.medium,
        // googleFonts = googleFonts ?? const XGoogleFontsData(),
        iconSizes = iconSizes ?? const XIconSizesData(),
        radii = radii ?? const XRadiiData(),
        spaces = spaces ?? const XSpacesData(),
        textShadows = textShadows ?? const XTextShadowsData();

  /// Spaces
  late final XGaps gaps = XGaps(spaces);
  late final XEdgeInsets edgeInsets = XEdgeInsets(spaces);
  late final XPadding padding = XPadding(edgeInsets);

  /// Radii
  late final XRadiusController radius = XRadiusController(radii);
  late final XBorderRadii borderRadius = XBorderRadii(radii);
  late final XShapes shape = XShapes(radii);
  late final XInputBorders inputBorder = XInputBorders(radii);

  // GoogleFonts get googleFonts => GoogleFonts;

  @override
  ThemeExtension<XDesignTokensData> lerp(ThemeExtension<XDesignTokensData>? other, double t) {
    if (other is! XDesignTokensData) {
      return this;
    } else {
      return XDesignTokensData(
        boxShadows: boxShadows,
        breakpoints: breakpoints,
        durations: durations,
        elevations: elevations,
        formFactor: formFactor,
        // googleFonts: googleFonts,
        iconSizes: iconSizes,
        radii: radii,
        spaces: spaces,
        textShadows: textShadows,
      );
    }
  }

  @override
  XDesignTokensData copyWith({
    XBoxShadowsData? boxShadows,
    XBreakpointsData? breakpoints,
    XDurationsData? durations,
    XElevationsData? elevations,
    XFormFactor? formFactor,
    // XGoogleFontsData? googleFonts,
    XIconSizesData? iconSizes,
    XRadiiData? radii,
    XSpacesData? spaces,
    XTextShadowsData? textShadows,
  }) {
    return XDesignTokensData(
      boxShadows: boxShadows ?? this.boxShadows,
      breakpoints: breakpoints ?? this.breakpoints,
      durations: durations ?? this.durations,
      elevations: elevations ?? this.elevations,
      formFactor: formFactor ?? this.formFactor,
      // googleFonts: googleFonts ?? this.googleFonts,
      iconSizes: iconSizes ?? this.iconSizes,
      radii: radii ?? this.radii,
      spaces: spaces ?? this.spaces,
      textShadows: textShadows ?? this.textShadows,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is XDesignTokensData &&
          boxShadows == other.boxShadows &&
          breakpoints == other.breakpoints &&
          durations == other.durations &&
          elevations == other.elevations &&
          formFactor == other.formFactor &&
          iconSizes == other.iconSizes &&
          radii == other.radii &&
          spaces == other.spaces &&
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
      spaces.hashCode ^
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
      spaces: $spaces,
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
