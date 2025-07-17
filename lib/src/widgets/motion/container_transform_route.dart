import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';

/// A wrapper that simplifies using the [MaterialContainerTransform] as a page
/// route transition.
///
/// This widget is useful for scenarios where you want to trigger a container
/// transform to a new page without manually defining a `PageRoute`.
///
/// See also:
///
///  * [MaterialContainerTransform], which this widget wraps.
///  * [OpenContainer], the underlying widget from the `animations` package.
class RouteAwareContainerTransform extends StatelessWidget {
  const RouteAwareContainerTransform({
    super.key,
    required this.closedBuilder,
    required this.page,
  });

  /// A builder for the closed container.
  final CloseContainerBuilder closedBuilder;

  /// The page to navigate to.
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionType: ContainerTransitionType.fadeThrough,
      transitionDuration: MaterialMotion.emphasized.duration,
      closedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      closedElevation: 0,
      closedColor: Theme.of(context).scaffoldBackgroundColor,
      closedBuilder: closedBuilder,
      openBuilder: (context, _) => page,
    );
  }
}