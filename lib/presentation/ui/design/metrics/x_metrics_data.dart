library x_metrics_data;

import 'package:material_toolkit/material_toolkit.dart';

part 'animations/x_durations_data.dart';
part 'shadows/x_box_shadows_data.dart';
part 'shapes/x_radius_data.dart';
part 'sizes/static/x_sizes.dart';
part 'sizes/static/x_sizes_tokens.dart';
part 'sizes/x_box_sizes_data.dart';
part 'sizes/x_icon_sizes_data.dart';
part 'sizes/x_spacings_data.dart';
part 'x_images_data.dart';

class XMetricsData {
  final XIconSizesData iconSizes;
  final XRadiusData radius;
  final XBoxSizesData boxSizes;
  final XSpacingsData spacings;
  final XBoxShadowsData shadows;
  final XDurationsData durations;
  final XAssetsData images;

  XMetricsData({
    XIconSizesData? icons,
    XRadiusData? radius,
    XBoxSizesData? sizes,
    XSpacingsData? spacings,
    XBoxShadowsData? shadows,
    XDurationsData? durations,
    XAssetsData? images,
  })  : iconSizes = icons ?? XIconSizesData._fallback(),
        radius = radius ?? XRadiusData._fallback(),
        boxSizes = sizes ?? XBoxSizesData._fallback(),
        spacings = spacings ?? XSpacingsData._fallback(),
        shadows = shadows ?? XBoxShadowsData._fallback(),
        durations = durations ?? XDurationsData._fallback(),
        images = images ?? XAssetsData._fallback();

  factory XMetricsData.fallback() => XMetricsData();
}
