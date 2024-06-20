library x_metrics_data;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_toolkit/material_toolkit.dart';

part 'animation/x_durations_data.dart';
part 'geometry/x_breakpoints_data.dart';
part 'geometry/x_elevations_data.dart';
part 'geometry/x_form_factor.dart';
part 'geometry/x_icon_sizes_data.dart';
part 'geometry/x_radii_data.dart';
part 'geometry/x_spaces_data.dart';
part 'painting/x_border_radii.dart';
part 'painting/x_border_shapes.dart';
part 'painting/x_box_shadows_data.dart';
part 'painting/x_edge_insets.dart';
part 'painting/x_gaps.dart';
part 'painting/x_google_fonts_data.dart';
part 'painting/x_padding.dart';
part 'painting/x_text_shadows_data.dart';

class XMetrics extends InheritedWidget {
  const XMetrics({required super.child, required this.data, super.key});

  static XMetricsData of(BuildContext context) {
    final metricsData = context.dependOnInheritedWidgetOfExactType<XMetrics>()?.data;

    assert(metricsData != null, 'No XMetrics found in context');

    return metricsData!;
  }

  static XMetricsData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<XMetrics>()?.data;
  }

  final XMetricsData data;

  @override
  bool updateShouldNotify(XMetrics oldWidget) => data != oldWidget.data;
}

class XMetricsData extends ThemeExtension<XMetricsData> {
  final XBoxShadowsData boxShadows;
  final XBreakpointsData breakpoints;
  final XDurationsData durations;
  final XElevationsData elevations;
  final XFormFactor formFactor;
  final XGoogleFontsData googleFonts;
  final XIconSizesData iconSizes;
  final XRadiiData radii;
  final XSpacesData spaces;
  final XTextShadowsData textShadows;

  XMetricsData({
    final XBoxShadowsData? boxShadows,
    final XBreakpointsData? breakpoints,
    final XDurationsData? durations,
    final XElevationsData? elevations,
    final XFormFactor? formFactor,
    final XGoogleFontsData? googleFonts,
    final XIconSizesData? iconSizes,
    final XRadiiData? radii,
    final XSpacesData? spaces,
    final XTextShadowsData? textShadows,
  })  : boxShadows = boxShadows ?? const XBoxShadowsData(),
        breakpoints = breakpoints ?? const XBreakpointsData(),
        durations = durations ?? const XDurationsData(),
        elevations = elevations ?? const XElevationsData(),
        formFactor = formFactor ?? XFormFactor.medium,
        googleFonts = googleFonts ?? const XGoogleFontsData(),
        iconSizes = iconSizes ?? const XIconSizesData(),
        radii = radii ?? const XRadiiData(),
        spaces = spaces ?? const XSpacesData(),
        textShadows = textShadows ?? const XTextShadowsData();

  XGaps get gaps => XGaps(spaces);

  XBorderRadii get borderRadii => XBorderRadii(radii);
  XBorderShapes get borderShapes => XBorderShapes(borderRadii);

  XEdgeInsets get edgeInsets => XEdgeInsets(spaces);
  XPadding get padding => XPadding(edgeInsets);

  @override
  ThemeExtension<XMetricsData> lerp(ThemeExtension<XMetricsData>? other, double t) {
    if (other is! XMetricsData) {
      return this;
    } else {
      return XMetricsData(
        boxShadows: boxShadows,
        breakpoints: breakpoints,
        durations: durations,
        elevations: elevations,
        formFactor: formFactor,
        googleFonts: googleFonts,
        iconSizes: iconSizes,
        radii: radii,
        spaces: spaces,
        textShadows: textShadows,
      );
    }
  }

  @override
  XMetricsData copyWith({
    XBoxShadowsData? boxShadows,
    XBreakpointsData? breakpoints,
    XDurationsData? durations,
    XElevationsData? elevations,
    XFormFactor? formFactor,
    XGoogleFontsData? googleFonts,
    XIconSizesData? iconSizes,
    XRadiiData? radii,
    XSpacesData? spaces,
    XTextShadowsData? textShadows,
  }) {
    return XMetricsData(
      boxShadows: boxShadows ?? this.boxShadows,
      breakpoints: breakpoints ?? this.breakpoints,
      durations: durations ?? this.durations,
      elevations: elevations ?? this.elevations,
      formFactor: formFactor ?? this.formFactor,
      googleFonts: googleFonts ?? this.googleFonts,
      iconSizes: iconSizes ?? this.iconSizes,
      radii: radii ?? this.radii,
      spaces: spaces ?? this.spaces,
      textShadows: textShadows ?? this.textShadows,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is XMetricsData &&
          boxShadows == other.boxShadows &&
          breakpoints == other.breakpoints &&
          durations == other.durations &&
          elevations == other.elevations &&
          formFactor == other.formFactor &&
          googleFonts == other.googleFonts &&
          iconSizes == other.iconSizes &&
          radii == other.radii &&
          spaces == other.spaces &&
          textShadows == other.textShadows &&
          gaps == other.gaps &&
          edgeInsets == other.edgeInsets &&
          padding == other.padding &&
          borderRadii == other.borderRadii &&
          runtimeType == other.runtimeType;

  @override
  int get hashCode =>
      boxShadows.hashCode ^
      breakpoints.hashCode ^
      durations.hashCode ^
      elevations.hashCode ^
      formFactor.hashCode ^
      googleFonts.hashCode ^
      iconSizes.hashCode ^
      radii.hashCode ^
      spaces.hashCode ^
      textShadows.hashCode ^
      gaps.hashCode ^
      edgeInsets.hashCode ^
      padding.hashCode ^
      borderRadii.hashCode;

  @override
  String toString() => '''
    XMetricsData(
      boxShadows: $boxShadows,
      breakpoints: $breakpoints,
      durations: $durations,
      elevations: $elevations,
      formFactor: $formFactor,
      googleFonts: $googleFonts,
      iconSizes: $iconSizes,
      radii: $radii,
      spaces: $spaces,
      textShadows: $textShadows,
      gaps: $gaps,
      borderRadii: $borderRadii,
      shapes: $borderShapes,
      edgeInsetses: $edgeInsets,
      paddings: $padding,
    )
  ''';
}
