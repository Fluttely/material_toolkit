// import 'package:flutter/material.dart';
// import 'package:remo_design_system/remo_design_system.dart';

// class XPadding extends StatelessWidget {
//   final XEdgeInsets? xPadding;
//   final EdgeInsets? padding;
//   final Widget? child;

//   const XPadding({
//     required this.xPadding,
//     super.key,
//     this.child,
//   })  : padding = null,
//         assert(xPadding != null);

//   const XPadding.custom({
//     required this.padding,
//     super.key,
//     this.child,
//   })  : xPadding = null,
//         assert(padding != null);

//   @override
//   Widget build(BuildContext context) {
//     final XMetricsData? xMetrics = Theme.of(context).extension<XMetricsData>();

//     return Padding(
//       padding: xPadding?.toEdgeInsets(xMetrics) ?? padding!,
//       child: child,
//     );
//   }
// }
