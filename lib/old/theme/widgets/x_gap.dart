import 'package:design_system_toolkit/design_system_toolkit.dart';
import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

enum XSpacingType {
  none,
  superSmall,
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
  final XSpacingType? xValue;

  const XGap(
    this.value, {
    super.key,
  }) : xValue = null;

  const XGap.none({super.key})
      : value = null,
        xValue = XSpacingType.none;

  const XGap.extraSmall({super.key})
      : value = null,
        xValue = XSpacingType.extraSmall;

  const XGap.small({super.key})
      : value = null,
        xValue = XSpacingType.small;

  const XGap.semiSmall({super.key})
      : value = null,
        xValue = XSpacingType.semiSmall;

  const XGap.medium({super.key})
      : value = null,
        xValue = XSpacingType.medium;

  const XGap.semiLarge({super.key})
      : value = null,
        xValue = XSpacingType.semiLarge;

  const XGap.large({super.key})
      : value = null,
        xValue = XSpacingType.large;

  const XGap.extraLarge({super.key})
      : value = null,
        xValue = XSpacingType.extraLarge;

  const XGap.superLarge({super.key})
      : value = null,
        xValue = XSpacingType.superLarge;

  @override
  Widget build(BuildContext context) {
    final xSpacingsData = Theme.of(context).extension<XMetricsData>()!.spacing;
    final resolvedSpacing =
        resolveXSpacing(xSpacing: xValue, xSpacingsData: xSpacingsData);

    return Gap(resolvedSpacing ?? value ?? TkSpacingData.none);
  }

  double? resolveXSpacing(
          {required XSpacingType? xSpacing,
          required XSpacingsData xSpacingsData}) =>
      switch (xSpacing) {
        XSpacingType.none => xSpacingsData.none,
        XSpacingType.superSmall => xSpacingsData.superSmall,
        XSpacingType.extraSmall => xSpacingsData.extraSmall,
        XSpacingType.small => xSpacingsData.small,
        XSpacingType.semiSmall => xSpacingsData.semiSmall,
        XSpacingType.medium => xSpacingsData.medium,
        XSpacingType.semiLarge => xSpacingsData.semiLarge,
        XSpacingType.large => xSpacingsData.large,
        XSpacingType.extraLarge => xSpacingsData.extraLarge,
        XSpacingType.superLarge => xSpacingsData.superLarge,
        null => null,
      };
}
