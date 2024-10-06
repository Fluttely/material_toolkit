import 'package:material_toolkit/material_toolkit.dart';

class CustomElevationsData extends XElevationsData {
  const CustomElevationsData() : super();
  @override
  double get level4 =>
      throw UnimplementedError('The elevation level 4 has been removed and cannot be used in this design system.');
  double get level6 => 14;
  double get level7 => 16;
}

final metricsData = XMetricsData(
  elevations: const CustomElevationsData(),
);
