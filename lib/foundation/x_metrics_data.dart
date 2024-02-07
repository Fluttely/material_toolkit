library x_metrics_data;

import 'package:material_toolkit/material_toolkit.dart';

part '../animation/x_durations_data.dart';
part '../geometry/x_radius_data.dart';
part '../painting/x_border_radius_data.dart';
part '../painting/x_box_shadows_data.dart';
part '../sizes/x_elevations_data.dart';
part '../sizes/x_spacings_data.dart';
part 'x_icons_data.dart';
part 'x_images_data.dart';

class XMetricsData extends ThemeExtension<XMetricsData> {
  final XDurationsData xDurations;
  final XElevationsData xElevations;
  final XIconsData xIcons;
  final XImagesData xImages;
  final XRadiusData xRadius;
  final XBoxShadowsData xBoxShadows;
  final XSpacingsData xSpacings;

  XMetricsData({
    final XDurationsData? xDurations,
    final XElevationsData? xElevationSizes,
    final XIconsData? xIcons,
    final XImagesData? xImages,
    final XRadiusData? xRadius,
    final XBoxShadowsData? xBoxShadows,
    final XSpacingsData? xSpacing,
  })  : xDurations = xDurations ?? const XDurationsData(),
        xElevations = xElevationSizes ?? const XElevationsData(),
        xIcons = xIcons ?? XIconsData(),
        xImages = xImages ?? const XImagesData(),
        xRadius = xRadius ?? const XRadiusData(),
        xBoxShadows = xBoxShadows ?? const XBoxShadowsData(),
        xSpacings = xSpacing ?? const XSpacingsData();

  @override
  ThemeExtension<XMetricsData> lerp(
      ThemeExtension<XMetricsData>? other, double t) {
    if (other is! XMetricsData) {
      return this;
    } else {
      return XMetricsData(
        xDurations: xDurations,
        xElevationSizes: xElevations,
        xIcons: xIcons,
        xImages: xImages,
        xRadius: xRadius,
        xBoxShadows: xBoxShadows,
        xSpacing: xSpacings,
      );
    }
  }

  @override
  XMetricsData copyWith({
    XDurationsData? xDurations,
    XElevationsData? xElevationSizes,
    XIconsData? xIcons,
    XImagesData? xImages,
    XRadiusData? xRadius,
    XBoxShadowsData? xBoxShadows,
    XSpacingsData? xSpacing,
  }) {
    return XMetricsData(
      xDurations: xDurations ?? this.xDurations,
      xElevationSizes: xElevationSizes ?? this.xElevations,
      xIcons: xIcons ?? this.xIcons,
      xImages: xImages ?? this.xImages,
      xRadius: xRadius ?? this.xRadius,
      xBoxShadows: xBoxShadows ?? this.xBoxShadows,
      xSpacing: xSpacing ?? this.xSpacings,
    );
  }

  @override
  String toString() => '''
  SquareStyle(
    xDurations: $xDurations,
    xElevationSizes: $xElevations,
    xIcons: $xIcons,
    xImages: $xImages,
    xRadius: $xRadius,
    xBoxShadows: $xBoxShadows,
    xSpacing: $xSpacings,
  )
  ''';
}
