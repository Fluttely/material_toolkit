import 'package:material_toolkit/material_toolkit.dart';

/// IN PROGRESS
enum XIconSizes {
  none,
  x16,
  x24,
  x32,
  x64,
  x128,
  x256,
  x512,
}

class XIcon extends StatelessWidget {
  final IconData? icon;
  final double? size;
  final double? fill;
  final double? weight;
  final double? grade;
  final double? opticalSize;
  final Color? color;
  final List<Shadow>? shadows;
  final String? semanticLabel;
  final TextDirection? textDirection;
  final XIconSizes? xSize;

  const XIcon(
    this.icon, {
    super.key,
    this.color,
    this.size,
    this.xSize,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  }) : assert(size == null || (size >= 16.0 && size <= 512.0));

  const XIcon.none(
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
        xSize = XIconSizes.none;

  const XIcon.x16(
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
        xSize = XIconSizes.x16;

  const XIcon.x24(
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
        xSize = XIconSizes.x24;

  const XIcon.x32(
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
        xSize = XIconSizes.x32;

  const XIcon.x64(
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
        xSize = XIconSizes.x64;

  const XIcon.x128(
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
        xSize = XIconSizes.x128;

  const XIcon.x256(
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
        xSize = XIconSizes.x256;

  const XIcon.x512(
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
        xSize = XIconSizes.x512;

  @override
  Widget build(BuildContext context) {
    final xIconSizesData = MaterialX.of(context).metrics.iconSizes;
    final resolvedSize =
        resolveXIconSize(xIconSize: xSize, xIconSizesData: xIconSizesData);

    return Icon(
      icon,
      size: resolvedSize ?? size,
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

  double? resolveXIconSize(
          {required XIconSizes? xIconSize,
          required XIconSizesData xIconSizesData}) =>
      switch (xIconSize) {
        XIconSizes.none => xIconSizesData.none,
        XIconSizes.x16 => xIconSizesData.x16,
        XIconSizes.x24 => xIconSizesData.x24,
        XIconSizes.x32 => xIconSizesData.x32,
        XIconSizes.x64 => xIconSizesData.x64,
        XIconSizes.x128 => xIconSizesData.x128,
        XIconSizes.x256 => xIconSizesData.x256,
        XIconSizes.x512 => xIconSizesData.x512,
        null => null,
      };
}
