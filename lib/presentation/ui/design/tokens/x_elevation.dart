import 'package:material_toolkit/material_toolkit.dart';

class XElevation {
  static double none(BuildContext context) =>
      MaterialX.of(context).metrics.elevationSizes.none;

  static double level1(BuildContext context) =>
      MaterialX.of(context).metrics.elevationSizes.level1;

  static double level2(BuildContext context) =>
      MaterialX.of(context).metrics.elevationSizes.level2;

  static double level3(BuildContext context) =>
      MaterialX.of(context).metrics.elevationSizes.level3;

  static double level4(BuildContext context) =>
      MaterialX.of(context).metrics.elevationSizes.level4;

  static double level5(BuildContext context) =>
      MaterialX.of(context).metrics.elevationSizes.level5;
}
