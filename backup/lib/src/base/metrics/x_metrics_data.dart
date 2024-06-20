library x_metrics_data;

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
part 'geometry/x_spaces_data.dart';
part 'painting/x_border_radii.dart';
part 'painting/x_box_shadows_data.dart';
part 'painting/x_edge_insets.dart';
part 'painting/x_gaps.dart';
part 'painting/x_padding.dart';
part 'painting/x_border_shapes.dart';

class XMetricsData extends ThemeExtension<XMetricsData> {
  final XBoxShadowsData boxShadows;
  final XBreakpointsData breakpoints;
  final XDurationsData durations;
  final XElevationsData elevations;
  final XFormFactor formFactor;
  final XRadiiData radii;
  final XSpacesData spaces;

  // XMetricsData({
  //   final XBoxShadowsData? boxShadows,
  //   final XBreakpointsData? breakpoints,
  //   final XDurationsData? durations,
  //   final XElevationsData? elevations,
  //   final XFormFactor? formFactor,
  //   final XRadiiData? radii,
  //   final XSpacesData? spaces,
  //   // final XTextShadowsData? textShadows,
  // })  : boxShadows = boxShadows ?? const XBoxShadowsData(),
  //       breakpoints = breakpoints ?? const XBreakpointsData(),
  //       durations = durations ?? const XDurationsData(),
  //       elevations = elevations ?? const XElevationsData(),
  //       formFactor = formFactor ?? XFormFactor.medium,
  //       radii = radii ?? const XRadiiData(),
  //       spaces = spaces ?? const XSpacesData();

  XMetricsData({
    final XBoxShadowsData? boxShadows,
    final XBreakpointsData? breakpoints,
    final XDurationsData? durations,
    final XElevationsData? elevations,
    final XFormFactor? formFactor,
    final XRadiiData? radii,
    final XSpacesData? spaces,
    // final XTextShadowsData? textShadows,
  })  : boxShadows = boxShadows ?? const XBoxShadowsData(),
        breakpoints = breakpoints ?? const XBreakpointsData(),
        durations = durations ?? const XDurationsData(),
        elevations = elevations ?? const XElevationsData(),
        formFactor = formFactor ?? XFormFactor.medium,
        radii = radii ?? const XRadiiData(),
        spaces = spaces ?? const XSpacesData();

  XGaps get gaps => XGaps(spaces);

  XBorderRadii get borderRadii => XBorderRadii(radii);
  XBorderShapes get borderShapes => XBorderShapes(borderRadii);
  // TODO: NOW?
  // XBoxShapes get boxShapes => XBoxShapes(borderRadii);

  XEdgeInsets get edgeInsets => XEdgeInsets(spaces);
  XPadding get padding => XPadding(edgeInsets);

  @override
  ThemeExtension<XMetricsData> lerp(
      ThemeExtension<XMetricsData>? other, double t) {
    if (other is! XMetricsData) {
      return this;
    } else {
      return XMetricsData(
        boxShadows: boxShadows,
        breakpoints: breakpoints,
        durations: durations,
        elevations: elevations,
        formFactor: formFactor,
        radii: radii,
        spaces: spaces,
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
    XRadiiData? radii,
    XSpacesData? spaces,
  }) {
    return XMetricsData(
      boxShadows: boxShadows ?? this.boxShadows,
      breakpoints: breakpoints ?? this.breakpoints,
      durations: durations ?? this.durations,
      elevations: elevations ?? this.elevations,
      formFactor: formFactor ?? this.formFactor,
      radii: radii ?? this.radii,
      spaces: spaces ?? this.spaces,
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
          radii == other.radii &&
          spaces == other.spaces &&
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
      radii.hashCode ^
      spaces.hashCode ^
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
      radii: $radii,
      spaces: $spaces,
      gaps: $gaps,
      borderRadii: $borderRadii,
      shapes: $borderShapes,
      edgeInsetses: $edgeInsets,
      paddings: $padding,
    )
  ''';
}
