library x_metrics_data;

import 'package:design_system_toolkit/design_system_toolkit.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_toolkit/material_toolkit.dart';

part 'animations/x_durations_data.dart';
part 'assets/x_icon_assets_data.dart';
part 'assets/x_image_assets_data.dart';
// part 'shadows/x_box_shadows_data.dart';
part 'shadows/x_shadows_data.dart';
part 'shapes/x_radius_data.dart';
part 'sizes/x_elevations_data.dart';
part 'sizes/x_spacings_data.dart';
part 'x_icons_data.dart';
part 'x_images_data.dart';

class XMetricsData extends ThemeExtension<XMetricsData> {
  final XDurationsData durations;
  final XElevationsData elevationSizes;
  final XIconsData icons;
  final XImagesData images;
  final XRadiusData radius;
  final XBoxShadowsData shadows;
  final XSpacingsData spacing;

  const XMetricsData({
    final XDurationsData? durations,
    final XElevationsData? elevationSizes,
    final XIconsData? icons,
    final XImagesData? images,
    final XRadiusData? radius,
    final XBoxShadowsData? shadows,
    final XSpacingsData? spacing,
  })  : durations = durations ?? const XDurationsData(),
        elevationSizes = elevationSizes ?? const XElevationsData(),
        icons = icons ?? const XIconsData(),
        images = images ?? const XImagesData(),
        radius = radius ?? const XRadiusData(),
        shadows = shadows ?? const XBoxShadowsData(),
        spacing = spacing ?? const XSpacingsData();

  @override
  ThemeExtension<XMetricsData> lerp(
      ThemeExtension<XMetricsData>? other, double t) {
    if (other is! XMetricsData) {
      return this;
    } else {
      return XMetricsData(
        durations: durations,
        elevationSizes: elevationSizes,
        icons: icons,
        images: images,
        radius: radius,
        shadows: shadows,
        spacing: spacing,
      );
    }
  }

  @override
  XMetricsData copyWith({
    XDurationsData? durations,
    XElevationsData? elevationSizes,
    XIconsData? icons,
    XImagesData? images,
    XRadiusData? radius,
    XBoxShadowsData? shadows,
    XSpacingsData? spacing,
  }) {
    return XMetricsData(
      durations: durations ?? this.durations,
      elevationSizes: elevationSizes ?? this.elevationSizes,
      icons: icons ?? this.icons,
      images: images ?? this.images,
      radius: radius ?? this.radius,
      shadows: shadows ?? this.shadows,
      spacing: spacing ?? this.spacing,
    );
  }

  @override
  String toString() => '''
  SquareStyle(
    durations: $durations,
    elevationSizes: $elevationSizes,
    icons: $icons,
    images: $images,
    radius: $radius,
    shadows: $shadows,
    spacing: $spacing,
  )
  ''';
}
