import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

enum XSpacings {
  none,
  extraSmall,
  small,
  semiSmall,
  medium,
  semiLarge,
  large,
  extraLarge,
  superLarge,
}

class XGap extends StatelessWidget {
  final double? value;
  final XSpacings? xValue;

  const XGap(
    this.value, {
    super.key,
    this.xValue,
  });

  const XGap.none({super.key})
      : value = null,
        xValue = XSpacings.none;

  const XGap.extraSmall({super.key})
      : value = null,
        xValue = XSpacings.extraSmall;

  const XGap.small({super.key})
      : value = null,
        xValue = XSpacings.small;

  const XGap.semiSmall({super.key})
      : value = null,
        xValue = XSpacings.semiSmall;

  const XGap.medium({super.key})
      : value = null,
        xValue = XSpacings.medium;

  const XGap.semiLarge({super.key})
      : value = null,
        xValue = XSpacings.semiLarge;

  const XGap.large({super.key})
      : value = null,
        xValue = XSpacings.large;

  const XGap.extraLarge({super.key})
      : value = null,
        xValue = XSpacings.extraLarge;

  const XGap.superLarge({super.key})
      : value = null,
        xValue = XSpacings.superLarge;

  @override
  Widget build(BuildContext context) {
    final xSpacingsData = MaterialX.of(context).metrics.spacing;
    final resolvedSpacing =
        resolveXSpacing(xSpacing: xValue, xSpacingsData: xSpacingsData);

    return Gap(resolvedSpacing ?? value ?? 0);
  }

  double? resolveXSpacing(
          {required XSpacings? xSpacing,
          required XSpacingsData xSpacingsData}) =>
      switch (xSpacing) {
        XSpacings.none => xSpacingsData.none,
        XSpacings.extraSmall => xSpacingsData.extraSmall,
        XSpacings.small => xSpacingsData.small,
        XSpacings.semiSmall => xSpacingsData.semiSmall,
        XSpacings.medium => xSpacingsData.medium,
        XSpacings.semiLarge => xSpacingsData.semiLarge,
        XSpacings.large => xSpacingsData.large,
        XSpacings.extraLarge => xSpacingsData.extraLarge,
        XSpacings.superLarge => xSpacingsData.superLarge,
        null => null,
      };
}
