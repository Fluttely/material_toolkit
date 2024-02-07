import 'package:material_toolkit/material_toolkit.dart';

class XLightThemeData {
  static final theme = ThemeData(
    extensions: <ThemeExtension<dynamic>>[
      XMetricsData(),
      XAssetsData(),
    ],
  );
}
