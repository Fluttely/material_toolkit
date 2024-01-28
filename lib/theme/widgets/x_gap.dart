import 'package:design_system_toolkit/design_system_toolkit.dart';
import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

enum XSpacingsType {
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
  final XSpacingsType? xValue;

  const XGap(
    this.value, {
    super.key,
  }) : xValue = null;

  const XGap.none({super.key})
      : value = null,
        xValue = XSpacingsType.none;

  const XGap.extraSmall({super.key})
      : value = null,
        xValue = XSpacingsType.extraSmall;

  const XGap.small({super.key})
      : value = null,
        xValue = XSpacingsType.small;

  const XGap.semiSmall({super.key})
      : value = null,
        xValue = XSpacingsType.semiSmall;

  const XGap.medium({super.key})
      : value = null,
        xValue = XSpacingsType.medium;

  const XGap.semiLarge({super.key})
      : value = null,
        xValue = XSpacingsType.semiLarge;

  const XGap.large({super.key})
      : value = null,
        xValue = XSpacingsType.large;

  const XGap.extraLarge({super.key})
      : value = null,
        xValue = XSpacingsType.extraLarge;

  const XGap.superLarge({super.key})
      : value = null,
        xValue = XSpacingsType.superLarge;

  @override
  Widget build(BuildContext context) {
    final xSpacingsData = MaterialX.of(context).metrics.spacing;
    final resolvedSpacing =
        resolveXSpacing(xSpacing: xValue, xSpacingsData: xSpacingsData);

    return Gap(resolvedSpacing ?? value ?? XSpacingData.none);
  }

  double? resolveXSpacing(
          {required XSpacingsType? xSpacing,
          required XSpacingsData xSpacingsData}) =>
      switch (xSpacing) {
        XSpacingsType.none => xSpacingsData.none,
        XSpacingsType.extraSmall => xSpacingsData.extraSmall,
        XSpacingsType.small => xSpacingsData.small,
        XSpacingsType.semiSmall => xSpacingsData.semiSmall,
        XSpacingsType.medium => xSpacingsData.medium,
        XSpacingsType.semiLarge => xSpacingsData.semiLarge,
        XSpacingsType.large => xSpacingsData.large,
        XSpacingsType.extraLarge => xSpacingsData.extraLarge,
        XSpacingsType.superLarge => xSpacingsData.superLarge,
        null => null,
      };
}
