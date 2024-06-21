// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:remo_design_system/remo_design_system.dart';

// class XEdgeInsets extends Equatable {
//   const EdgeInsets.all(XSpacing value)
//       : left = value,
//         top = value,
//         right = value,
//         bottom = value;

//   const EdgeInsets.symmetric({
//     XSpacing vertical = XSpacing.none,
//     XSpacing horizontal = XSpacing.none,
//   })  : left = horizontal,
//         top = vertical,
//         right = horizontal,
//         bottom = vertical;

//   const EdgeInsets.only({
//     this.left = XSpacing.none,
//     this.top = XSpacing.none,
//     this.right = XSpacing.none,
//     this.bottom = XSpacing.none,
//   });

//   const EdgeInsets.extraSmall()
//       : left = XSpacing.extraSmall,
//         top = XSpacing.extraSmall,
//         right = XSpacing.extraSmall,
//         bottom = XSpacing.extraSmall;

//   const EdgeInsets.small()
//       : left = XSpacing.small,
//         top = XSpacing.small,
//         right = XSpacing.small,
//         bottom = XSpacing.small;

//   const EdgeInsets.semiSmall()
//       : left = XSpacing.semiSmall,
//         top = XSpacing.semiSmall,
//         right = XSpacing.semiSmall,
//         bottom = XSpacing.semiSmall;

//   const EdgeInsets.large()
//       : left = metrics.xSpacings.large,
//         top = metrics.xSpacings.large,
//         right = metrics.xSpacings.large,
//         bottom = metrics.xSpacings.large;

//   const EdgeInsets.extraLarge()
//       : left = XSpacing.extraLarge,
//         top = XSpacing.extraLarge,
//         right = XSpacing.extraLarge,
//         bottom = XSpacing.extraLarge;

//   final XSpacing left;
//   final XSpacing top;
//   final XSpacing right;
//   final XSpacing bottom;

//   @override
//   List<Object?> get props => [
//         left,
//         top,
//         right,
//         bottom,
//       ];

//   EdgeInsets toEdgeInsets(XMetricsData theme) {
//     return EdgeInsets.only(
//       left: left.toDouble(theme),
//       top: top.toDouble(theme),
//       right: right.toDouble(theme),
//       bottom: bottom.toDouble(theme),
//     );
//   }
// }

// class Padding extends StatelessWidget {
//   const Padding({
//     super.key,
//     this.padding = const EdgeInsets.all(XSpacing.none),
//     this.child,
//   });

//   const Padding.extraSmall({
//     super.key,
//     this.child,
//   }) : padding = const EdgeInsets.all(XSpacing.extraSmall);

//   const Padding.small({
//     super.key,
//     this.child,
//   }) : padding = const EdgeInsets.all(XSpacing.small);

//   const Padding.semiSmall({
//     super.key,
//     this.child,
//   }) : padding = const EdgeInsets.all(XSpacing.semiSmall);

//   const Padding.large({
//     super.key,
//     this.child,
//   }) : padding = const EdgeInsets.all(metrics.xSpacings.large);

//   const Padding.extraLarge({
//     super.key,
//     this.child,
//   }) : padding = const EdgeInsets.all(XSpacing.extraLarge);

//   final XEdgeInsets padding;
//   final Widget? child;

//   @override
//   Widget build(BuildContext context) {
//     final metrics = remo.apod.metrics;

//     return Padding(
//       padding: padding.toEdgeInsets(metrics),
//       child: child,
//     );
//   }
// }
