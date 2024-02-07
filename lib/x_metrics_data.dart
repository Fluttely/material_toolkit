library x_metrics_data;

// import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_toolkit/material_toolkit.dart';

export 'painting/x_edge_insets.dart';
export 'sizes/x_icon_sizes_data.dart';

// part '../../../old/assets/x_icon_assets_data.dart';
// part '../../../old/assets/x_image_assets_data.dart';
part 'animation/x_durations_data.dart';
part 'foundation/x_icons_data.dart';
part 'foundation/x_images_data.dart';
part 'geometry/x_radius_data.dart';
part 'painting/x_border_radius_data.dart';
part 'painting/x_box_shadows_data.dart';
part 'sizes/x_elevations_data.dart';
part 'sizes/x_spacing_data.dart';

class XMetricsData extends ThemeExtension<XMetricsData> {
  final XDurationsData xDurations;
  final XElevationsData xElevationSizes;
  final XIconsData xIcons;
  final XImagesData xImages;
  final XRadiusData xRadius;
  final XBoxShadowsData xBoxShadows;
  final XSpacingData xSpacing;

  XMetricsData({
    final XDurationsData? xDurations,
    final XElevationsData? xElevationSizes,
    final XIconsData? xIcons,
    final XImagesData? xImages,
    final XRadiusData? xRadius,
    final XBoxShadowsData? xBoxShadows,
    final XSpacingData? xSpacing,
  })  : xDurations = xDurations ?? const XDurationsData(),
        xElevationSizes = xElevationSizes ?? const XElevationsData(),
        xIcons = xIcons ?? XIconsData(),
        xImages = xImages ?? const XImagesData(),
        xRadius = xRadius ?? const XRadiusData(),
        xBoxShadows = xBoxShadows ?? const XBoxShadowsData(),
        xSpacing = xSpacing ?? const XSpacingData();

  @override
  ThemeExtension<XMetricsData> lerp(
      ThemeExtension<XMetricsData>? other, double t) {
    if (other is! XMetricsData) {
      return this;
    } else {
      return XMetricsData(
        xDurations: xDurations,
        xElevationSizes: xElevationSizes,
        xIcons: xIcons,
        xImages: xImages,
        xRadius: xRadius,
        xBoxShadows: xBoxShadows,
        xSpacing: xSpacing,
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
    XSpacingData? xSpacing,
  }) {
    return XMetricsData(
      xDurations: xDurations ?? this.xDurations,
      xElevationSizes: xElevationSizes ?? this.xElevationSizes,
      xIcons: xIcons ?? this.xIcons,
      xImages: xImages ?? this.xImages,
      xRadius: xRadius ?? this.xRadius,
      xBoxShadows: xBoxShadows ?? this.xBoxShadows,
      xSpacing: xSpacing ?? this.xSpacing,
    );
  }

  @override
  String toString() => '''
  SquareStyle(
    xDurations: $xDurations,
    xElevationSizes: $xElevationSizes,
    xIcons: $xIcons,
    xImages: $xImages,
    xRadius: $xRadius,
    xBoxShadows: $xBoxShadows,
    xSpacing: $xSpacing,
  )
  ''';
}
