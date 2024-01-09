library material_toolkit;

import 'package:material_toolkit/material_toolkit.dart';

/// MaterialX is an InheritedWidget that provides access to XThemeMetricsData.
/// It must be initialized at the root of your widget tree.
class XMetricsData2 extends InheritedWidget {
  // XMetricsData get metrics => XMetricsData();
  //  XRadiusData get radius => XRadiusData();
  static ThemeData get theme => Theme.of(context);
  final XMetricsData metrics;
  // final XRadiusData radius;
  // final ThemeData theme;
  static final GlobalKey<NavigatorState> globalKey =
      GlobalKey<NavigatorState>();
  static BuildContext get context => XMetricsData2.globalKey.currentContext!;

  /// Constructs a MaterialX widget.
  /// [metrics] can be used to provide custom theme metrics data.
  /// [child] is the subtree over which MaterialX will be available.
  XMetricsData2({
    super.key,
    // ThemeData? theme,
    XMetricsData? metrics,
    // XRadiusData? radius,
    required super.child,
  })  :
        //  radius = radius ?? XRadiusData(),
        metrics = metrics ?? XMetricsData(),
        super(
          // key: globalKey,
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
  static XMetricsData2 of(BuildContext context) {
    final XMetricsData2? materialX =
        context.dependOnInheritedWidgetOfExactType<XMetricsData2>();
    if (materialX == null) {
      throw FlutterError(
          'MaterialX widget not found in the widget tree. Ensure MaterialX is initialized at the root of your widget tree.');
    }
    return materialX;
  }

  @override
  bool updateShouldNotify(covariant XMetricsData2 oldWidget) {
    // You might want to extend this logic to compare deeper aspects of metrics if necessary
    return metrics != oldWidget.metrics;
  }
}

// extension ThemeDataToMaterialXExtension on ThemeData {
//   XThemeMetricsData get data => MaterialX.instance.themeSizesData;
// }