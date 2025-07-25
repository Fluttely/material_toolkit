// import 'package:animations/animations.dart';
// import 'package:flutter/material.dart';
// import 'package:material_design/material_design.dart';

// /// A widget that transitions between two children using the Material Design 3
// /// fade-through pattern.
// ///
// /// This transition is best used for UI elements that have a loose relationship
// /// with each other, such as navigating between bottom navigation bar destinations.
// ///
// /// See also:
// ///
// ///  * [Material Design 3 Motion: Fade-through](https://m3.material.io/styles/motion/transitions/fade-through)
// class MaterialFadeThrough extends StatelessWidget {
//   const MaterialFadeThrough({
//     super.key,
//     required this.child,
//     this.duration = MotionDuration.medium2,
//     this.easing = MotionEasing.standard,
//   });

//   final Duration duration;
//   final Curve curve;
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return PageTransitionSwitcher(
//       duration: duration,
//       transitionBuilder:
//           (
//             Widget child,
//             Animation<double> primaryAnimation,
//             Animation<double> secondaryAnimation,
//           ) {
//             return FadeThroughTransition(
//               animation: CurvedAnimation(
//                 parent: primaryAnimation,
//                 curve: curve,
//               ),
//               secondaryAnimation: CurvedAnimation(
//                 parent: secondaryAnimation,
//                 curve: curve,
//               ),
//               child: child,
//             );
//           },
//       child: child,
//     );
//   }
// }
