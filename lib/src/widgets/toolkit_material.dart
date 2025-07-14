import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class ToolkitMaterial extends StatelessWidget {
  const ToolkitMaterial({
    this.type = MaterialType.canvas,
    this.elevation = ElevationToken.none,
    this.color,
    this.shadowColor,
    this.surfaceTintColor,
    this.borderOnForeground = true,
    this.clipBehavior = Clip.none,
    this.animationDuration,
    this.child,
    super.key,
  });

  final MaterialType type;
  final ElevationToken elevation;
  final Color? color;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  // TextStyle? textStyle,
  // BorderRadiusGeometry? borderRadius,
  // ShapeBorder? shape,
  final bool borderOnForeground;
  final Clip clipBehavior;
  final MotionToken? animationDuration;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    final elevations = tokens.elevations;
    final motions = tokens.motions;

    return Material(
      type: type,
      elevation: elevation.toDouble(
        elevations,
      ),
      color: color,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      // TextStyle? textStyle,
      // BorderRadiusGeometry? borderRadius,
      // ShapeBorder? shape,
      borderOnForeground: borderOnForeground,
      clipBehavior: clipBehavior,
      animationDuration:
          animationDuration?.toDuration(motions) ?? kThemeChangeDuration,
      child: child,
    );
  }
}
