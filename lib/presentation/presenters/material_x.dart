library material_toolkit;

import 'package:material_toolkit/material_toolkit.dart';

/// MaterialX is an InheritedWidget that provides access to XThemeMetricsData.
/// It must be initialized at the root of your widget tree.
class MaterialX extends InheritedWidget {
  final XMetricsData metrics;

  /// Constructs a MaterialX widget.
  /// [metrics] can be used to provide custom theme metrics data.
  /// [child] is the subtree over which MaterialX will be available.
  MaterialX({
    super.key,
    XMetricsData? metrics,
    required super.child,
  }) : metrics = metrics ?? XMetricsData() {
    XMaterialService.initializeApp(metrics: this.metrics);
  }

  /// Retrieves the nearest MaterialX instance in the widget tree.
  /// Throws an exception if not found in the widget tree.
  static MaterialX of(BuildContext context) {
    final MaterialX? materialX =
        context.dependOnInheritedWidgetOfExactType<MaterialX>();
    if (materialX == null) {
      throw FlutterError(
          'MaterialX widget not found in the widget tree. Ensure MaterialX is initialized at the root of your widget tree.');
    }
    return materialX;
  }

  @override
  bool updateShouldNotify(covariant MaterialX oldWidget) {
    // You might want to extend this logic to compare deeper aspects of metrics if necessary
    return metrics != oldWidget.metrics;
  }
}

// extension ThemeDataToMaterialXExtension on ThemeData {
//   XThemeMetricsData get data => MaterialX.instance.themeSizesData;
// }