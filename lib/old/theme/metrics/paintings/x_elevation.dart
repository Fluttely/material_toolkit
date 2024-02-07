import 'package:material_toolkit/material_toolkit.dart';

class XElevation {
  static double none(BuildContext context) =>
      Theme.of(context).extension<XMetricsData>()!.elevationSizes.none;

  static double level1(BuildContext context) =>
      Theme.of(context).extension<XMetricsData>()!.elevationSizes.level1;

  static double level2(BuildContext context) =>
      Theme.of(context).extension<XMetricsData>()!.elevationSizes.level2;

  static double level3(BuildContext context) =>
      Theme.of(context).extension<XMetricsData>()!.elevationSizes.level3;

  static double level4(BuildContext context) =>
      Theme.of(context).extension<XMetricsData>()!.elevationSizes.level4;

  static double level5(BuildContext context) =>
      Theme.of(context).extension<XMetricsData>()!.elevationSizes.level5;
}
