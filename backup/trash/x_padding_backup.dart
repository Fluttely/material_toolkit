// import 'package:flutter/material.dart';
// import 'package:remo_design_system/remo_design_system.dart';

// class XPadding extends StatelessWidget {
//   const XPadding({
//     super.key,
//     this.padding = const XEdgeInsets.all(Xspaces.none),
//     this.child,
//   });

//   const XPadding.extraSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.all(Xspaces.extraSmall);

//   const XPadding.small({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.all(Xspaces.small);

//   const XPadding.semiSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.all(Xspaces.semiSmall);

//   const XPadding.large({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.all(Xspaces.large);

//   const XPadding.extraLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.all(Xspaces.extraLarge);

//   final XEdgeInsets padding;
//   final Widget? child;

//   @override
//   Widget build(BuildContext context) {
// TODO(Kevin): remove remo prefix
//     final metrics = remo.apod.metrics;

//     return Padding(
//       padding: padding.toEdgeInsets(metrics.spaces),
//       child: child,
//     );
//   }
// }
