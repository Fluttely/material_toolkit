import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';

/// A widget that animates its child's visibility using a fade transition.
///
/// This widget is aligned with the Material Design 3 fade pattern, used for
/// elements entering or exiting within the same screen.
///
/// See also:
///
///  * [Material Design 3 Motion: Fade](https://m3.material.io/styles/motion/transitions/transition-patterns)
class MaterialAnimatedVisibility extends StatelessWidget {
  const MaterialAnimatedVisibility({
    super.key,
    required this.isVisible,
    required this.child,
    this.incomingToken = MaterialMotion.standardIncoming,
    this.outgoingToken = MaterialMotion.standardOutgoing,
  });

  /// Determines whether the child is visible.
  final bool isVisible;

  /// The motion token for the incoming (enter) animation.
  final MotionScheme incomingToken;

  /// The motion token for the outgoing (exit) animation.
  final MotionScheme outgoingToken;

  /// The widget below this widget in the tree.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: incomingToken.duration,
      reverseDuration: outgoingToken.duration,
      switchInCurve: incomingToken.curve,
      switchOutCurve: outgoingToken.curve,
      transitionBuilder: (Widget aChild, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: aChild,
        );
      },
      child: isVisible ? child : const SizedBox.shrink(),
    );
  }
}
