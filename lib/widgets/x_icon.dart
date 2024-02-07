import 'package:material_toolkit/material_toolkit.dart';

class XIcon extends StatelessWidget {
  final IconData? icon;
  final double? size;
  final XIconSizes? xSize;
  final double? fill;
  final double? weight;
  final double? grade;
  final double? opticalSize;
  final Color? color;
  final List<Shadow>? shadows;
  final String? semanticLabel;
  final TextDirection? textDirection;

  const XIcon(
    this.icon, {
    super.key,
    this.color,
    XIconSizes? xSize,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  })  : size = null,
        xSize = xSize ?? XIconSizes.medium,
        assert(xSize != null);

  const XIcon.custom(
    this.icon, {
    super.key,
    this.color,
    double? size,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  })  : xSize = null,
        size = size ?? XStandardSizes.x24,
        assert(size == null ||
            (size >= XStandardSizes.x16 && size <= XStandardSizes.x128));

  const XIcon.extraSmall(
    this.icon, {
    super.key,
    this.color,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  })  : size = null,
        xSize = XIconSizes.extraSmall;

  const XIcon.small(
    this.icon, {
    super.key,
    this.color,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  })  : size = null,
        xSize = XIconSizes.small;

  const XIcon.semiSmall(
    this.icon, {
    super.key,
    this.color,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  })  : size = null,
        xSize = XIconSizes.semiSmall;

  const XIcon.medium(
    this.icon, {
    super.key,
    this.color,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  })  : size = null,
        xSize = XIconSizes.medium;

  const XIcon.semiLarge(
    this.icon, {
    super.key,
    this.color,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  })  : size = null,
        xSize = XIconSizes.semiLarge;

  const XIcon.large(
    this.icon, {
    super.key,
    this.color,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  })  : size = null,
        xSize = XIconSizes.large;

  const XIcon.extraLarge(
    this.icon, {
    super.key,
    this.color,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  })  : size = null,
        xSize = XIconSizes.extraLarge;

  const XIcon.superLarge(
    this.icon, {
    super.key,
    this.color,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  })  : size = null,
        xSize = XIconSizes.superLarge;

  @override
  Widget build(BuildContext context) {
    final xIconSizes =
        Theme.of(context).extension<XMetricsData>()!.xIcons.sizes;

    return Icon(
      icon,
      size: xSize?.toDouble(xIconSizes) ?? size,
      color: color,
      fill: fill,
      weight: weight,
      grade: grade,
      opticalSize: opticalSize,
      shadows: shadows,
      semanticLabel: semanticLabel,
      textDirection: textDirection,
    );
  }
}
