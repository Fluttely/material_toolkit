library material_toolkit;

import 'package:material_toolkit/material_toolkit.dart';

/// MaterialX is an InheritedWidget that provides access to XThemeMetricsData.
/// It must be initialized at the root of your widget tree.
class MaterialX extends InheritedWidget {
  XMetricsData get metrics => XMetricsData();
  // final ThemeData theme;
  static final GlobalKey<NavigatorState> globalKey =
      GlobalKey<NavigatorState>();
  static BuildContext get context => MaterialX.globalKey.currentContext!;

  /// Constructs a MaterialX widget.
  /// [metrics] can be used to provide custom theme metrics data.
  /// [child] is the subtree over which MaterialX will be available.
  MaterialX({
    // super.key,
    // ThemeData? theme,
    // XMetricsData? metrics,
    required super.child,
  }) :
        //  metrics = metrics ?? XMetricsData(),
        super(
          key: globalKey,
          // metrics: metrics,
          // child: child,
        )
  // theme = theme ?? ThemeData(),
  // metrics = metrics ?? XMetricsData()
  {
    // final getIt = GetIt.instance;

//     void setup() {
//       getIt.registerSingleton<AppModel>(AppModel());

// // Alternatively you could write it if you don't like global variables
//       GetIt.I.registerSingleton<AppModel>(AppModel());
//     }

    XService.initializeApp(
      // theme: this.theme,
      // metrics: metrics,
    );
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