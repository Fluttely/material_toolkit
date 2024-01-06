library x_metrics_data;

import 'package:material_toolkit/material_toolkit.dart';

part 'animations/x_durations_data.dart';
part 'assets/x_icon_assets_data.dart';
part 'assets/x_image_assets_data.dart';
// part 'shadows/x_box_shadows_data.dart';
part 'shapes/x_radius_data.dart';
part 'sizes/x_icon_sizes_data.dart';
part 'sizes/x_spacings_data.dart';

class XMetricsData {
  /// sizes
  final XSpacingsData spacing;
  final XIconSizesData iconSizes;

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
    XSpacingsData? spacing,
    XRadiusData? radius,
    // XBoxShadowsData? shadows,
    XDurationsData? durations,
    XImageAssetsData? images,
    XIconAssetsData? icons,
  })  : iconSizes = icon ?? XIconSizesData(),
        spacing = spacing ?? const XSpacingsData(),
        radius = radius ?? const XRadiusData(),
        // boxShadows = shadows ?? XBoxShadowsData(),
        durations = durations ?? const XDurationsData(),
        images = images ?? const XImageAssetsData(),
        icons = icons ?? const XIconAssetsData();
}
