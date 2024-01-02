library x_metrics_data;

import 'package:material_toolkit/material_toolkit.dart';

part 'animations/x_durations_data.dart';
part 'assets/x_images_assets_data.dart';
part 'shadows/x_box_shadows_data.dart';
part 'shapes/x_radius_data.dart';
part 'sizes/x_box_sizes_data.dart';
// part 'sizes/x_edge_insets_sizes_data.dart';
part 'sizes/x_icon_sizes_data.dart';
part 'sizes/x_sizes_data.dart';
part 'sizes/x_spacings_data.dart';

class XMetricsData {
  final XSizesData sizes;

  /// shapes
  /// shadows
  /// assets
  /// durations
  final XRadiusData radius;
  final XBoxShadowsData boxShadows;
  final XDurationsData durations;
  final XAssetsData images;

  XMetricsData({
    XSizesData? sizes,
    XRadiusData? radius,
    XBoxShadowsData? shadows,
    XDurationsData? durations,
    XAssetsData? images,
  })  : sizes = sizes ?? XSizesData(),
        radius = radius ?? XRadiusData(),
        boxShadows = shadows ?? XBoxShadowsData(),
        durations = durations ?? const XDurationsData(),
        images = images ?? const XAssetsData();
}
