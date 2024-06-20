import 'package:material_toolkit/material_toolkit.dart';

// final metricsData = XMetricsData(
//   breakpoints: XBreakpointsData.x(
//     extraSmall: XAttribute(const Breakpoint(minWidth: 0, maxWidth: 599)),
//   ),
//   // elevations: AppElevationsData(),
//   elevations: XElevationsData.x(
//     // level5: XAttribute.unsupported(),
//   ),
// );

// class AppElevationsData extends XElevationsData {
//   AppElevationsData() : super();
//   @override
//   double get level4 => throw UnimplementedError();
// }

extension AppElevationsDataExtension on XElevationsData {
  double get level7 => 16;
}
