import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';

/// A widget that implements the Material Design 3 container transform pattern.
///
/// This transition is best used for UI elements that have a strong relationship
/// with each other, such as a card expanding to a full page.
///
/// See also:
///
///  * [Material Design 3 Motion: Container Transform](https://m3.material.io/styles/motion/transitions/container-transform)
class MaterialContainerTransform extends StatelessWidget {
  const MaterialContainerTransform({
    this.duration = MotionDurations.long2,
    this.closedShape,
    required this.openBuilder,
    required this.closedBuilder,
    super.key,
  });

  final Duration duration;

  /// The shape of the closed container.
  final ShapeBorder? closedShape;

  /// A builder for the closed container.
  final CloseContainerBuilder closedBuilder;

  /// A builder for the open container.
  final OpenContainerBuilder openBuilder;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: duration,
      transitionType: ContainerTransitionType.fadeThrough,
      closedShape: closedShape ?? MaterialShape.medium,
      closedElevation: 0,
      closedBuilder: closedBuilder,
      openBuilder: openBuilder,
    );
  }
}
