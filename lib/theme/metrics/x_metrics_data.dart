library x_metrics_data;

import 'package:design_system_toolkit/design_system_toolkit.dart';
import 'package:material_toolkit/material_toolkit.dart';

part 'animations/x_durations_data.dart';
part 'assets/x_icon_assets_data.dart';
part 'assets/x_image_assets_data.dart';
// part 'shadows/x_box_shadows_data.dart';
part 'shapes/x_radius_data.dart';
part 'sizes/x_elevation_sizes_data.dart';
part 'sizes/x_icon_sizes_data.dart';
part 'sizes/x_spacings_data.dart';

class XMetricsData {
  /// sizes
  final XSpacingsData spacing;
  final XIconSizesData iconSizes;
  final XElevationSizesData elevationSizes;

  /// shapes
  final XRadiusData radius;
  //  XRadiusData get radius => XRadiusData();

  /// shadows
  // final XBoxShadowsData boxShadows;

  /// durations
  final XDurationsData durations;

  /// assets
  final XImageAssetsData images;
  final XIconAssetsData icons;

  XMetricsData({
    XIconSizesData? icon,
    XElevationSizesData? elevationSizes,
    XSpacingsData? spacing,
    XRadiusData? radius,
    // XBoxShadowsData? shadows,
    XDurationsData? durations,
    XImageAssetsData? images,
    XIconAssetsData? icons,
  })  : iconSizes = icon ?? XIconSizesData(),
        elevationSizes = elevationSizes ?? XElevationSizesData(),
        spacing = spacing ?? XSpacingsData(),
        radius = radius ?? const XRadiusData(),
        // boxShadows = shadows ?? XBoxShadowsData(),
        durations = durations ?? const XDurationsData(),
        images = images ?? const XImageAssetsData(),
        icons = icons ?? const XIconAssetsData();
}