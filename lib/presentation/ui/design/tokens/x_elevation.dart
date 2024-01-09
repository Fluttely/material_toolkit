import 'package:material_toolkit/material_toolkit.dart';

class XElevation {
  static none() => XMetricsData2.of(XMetricsData2.context).metrics.elevationSizes.none;

  static level1() =>
      XMetricsData2.of(XMetricsData2.context).metrics.elevationSizes.level1;

  static level2() =>
      XMetricsData2.of(XMetricsData2.context).metrics.elevationSizes.level2;

  static level3() =>
      XMetricsData2.of(XMetricsData2.context).metrics.elevationSizes.level3;

  static level4() =>
      XMetricsData2.of(XMetricsData2.context).metrics.elevationSizes.level4;

  static level5() =>
      XMetricsData2.of(XMetricsData2.context).metrics.elevationSizes.level5;
}
