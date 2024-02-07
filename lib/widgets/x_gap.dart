import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

class XGap extends StatelessWidget {
  final XSpacing? xValue;
  final double? value;

  const XGap(
    this.xValue, {
    super.key,
  }) : value = null;

  const XGap.custom(
    this.value, {
    super.key,
  }) : xValue = null;

  const XGap.none({super.key})
      : value = null,
        xValue = XSpacing.none;

  const XGap.extraSmall({super.key})
      : value = null,
        xValue = XSpacing.extraSmall;

  const XGap.small({super.key})
      : value = null,
        xValue = XSpacing.small;

  const XGap.semiSmall({super.key})
      : value = null,
        xValue = XSpacing.semiSmall;

  const XGap.medium({super.key})
      : value = null,
        xValue = XSpacing.medium;

  const XGap.semiLarge({super.key})
      : value = null,
        xValue = XSpacing.semiLarge;

  const XGap.large({super.key})
      : value = null,
        xValue = XSpacing.large;

  const XGap.extraLarge({super.key})
      : value = null,
        xValue = XSpacing.extraLarge;

  const XGap.superLarge({super.key})
      : value = null,
        xValue = XSpacing.superLarge;

  @override
  Widget build(BuildContext context) {
    final xSpacing = Theme.of(context).extension<XMetricsData>()!.xSpacings;

    return Gap(xValue?.toDouble(xSpacing) ?? value ?? xSpacing.none);
  }
}