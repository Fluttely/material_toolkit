import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';

/// A widget that transitions between two children using the Material Design 3
/// shared-axis pattern.
///
/// This transition is best used for UI elements that have a spatial or
/// navigational relationship, such as navigating between steps in a stepper.
///
/// See also:
///
///  * [Material Design 3 Motion: Shared Axis](https://m3.material.io/styles/motion/transitions/shared-axis)
class MaterialSharedAxisSwitcher extends StatelessWidget {
  const MaterialSharedAxisSwitcher({
    required this.child,
    super.key,
    this.axis = SharedAxisTransitionType.horizontal,
    this.token = M3MotionToken.emphasized,
  });

  /// The widget to display.
  final Widget child;

  /// The axis to use for the transition.
  final SharedAxisTransitionType axis;

  /// The motion token that defines the transition's duration and curve.
  final M3MotionToken token;

  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
      duration: token.value.duration.value,
      transitionBuilder:
          (
            Widget child,
            Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation,
          ) {
            return SharedAxisTransition(
              animation: CurvedAnimation(
                parent: primaryAnimation,
                curve: token.value.easing.value,
              ),
              secondaryAnimation: CurvedAnimation(
                parent: secondaryAnimation,
                curve: token.value.easing.value,
              ),
              transitionType: axis,
              child: child,
            );
          },
      child: child,
    );
  }
}
