import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';

class MaterialSurface extends StatelessWidget {
  const MaterialSurface({
    required this.child,
    super.key,
    this.elevation = M3ElevationToken.level0,
    this.shape = const RoundedRectangleBorder(),
    this.shadowColor,
  });

  final Widget child;
  final M3ElevationToken elevation;
  final ShapeBorder shape;
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: elevation.surfaceColor(context),

      elevation: elevation.hasShadow
          ? elevation.value
          : M3ElevationToken.level0.value,

      shape: shape,
      shadowColor: shadowColor,
      clipBehavior: Clip.antiAlias,
      child: child,
    );
  }
}
