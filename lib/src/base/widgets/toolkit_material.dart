part of 'widgets.dart';

class ToolkitMaterial extends StatelessWidget {
  const ToolkitMaterial({
    this.type = MaterialType.canvas,
    this.elevation = ElevationToken.none,
    this.color,
    this.shadowColor,
    this.surfaceTintColor,
    this.borderOnForeground = true,
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
  // Clip clipBehavior = Clip.none,
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
      // Clip clipBehavior = Clip.none,
      // Duration animationDuration = kThemeChangeDuration,
      animationDuration:
          animationDuration?.toDuration(motions) ?? kThemeChangeDuration,
      child: child,
    );
  }
}
