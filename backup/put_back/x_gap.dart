// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:remo_design_system/remo_design_system.dart';

// class XGap extends StatelessWidget {
//   final Xspace? xspace;
//   final double? space;

//   const XGap(
//     this.xspace, {
//     super.key,
//   }) : space = null;

//   const XGap.custom(
//     this.space, {
//     super.key,
//   }) : xspace = null;

//   const XGap.none({super.key})
//       : space = null,
//         xspace = Xspace.none;

//   const XGap.extraSmall({super.key})
//       : space = null,
//         xspace = Xspace.extraSmall;

//   const XGap.small({super.key})
//       : space = null,
//         xspace = Xspace.small;

//   const XGap.semiSmall({super.key})
//       : space = null,
//         xspace = Xspace.semiSmall;

//   const XGap.medium({super.key})
//       : space = null,
//         xspace = Xspace.medium;

//   const XGap.semiLarge({super.key})
//       : space = null,
//         xspace = Xspace.semiLarge;

//   const XGap.large({super.key})
//       : space = null,
//         xspace = Xspace.large;

//   const XGap.extraLarge({super.key})
//       : space = null,
//         xspace = Xspace.extraLarge;

//   const XGap.superLarge({super.key})
//       : space = null,
//         xspace = Xspace.superLarge;

//   @override
//   Widget build(BuildContext context) {
//     final XMetricsData? xMetrics = Theme.of(context).extension<XMetricsData>();

//     return Gap(xspace?.toData(xMetrics?.xspaces) ?? space!);
//   }
// }
