import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

class XGap extends Gap {
  const XGap.custom(
    double value, {
    super.key,
  }) : super(value);

  XGap.none({super.key})
      : super(XService.instance.metrics.sizes.spacing.none);

  XGap.extraSmall({super.key})
      : super(XService.instance.metrics.sizes.spacing.extraSmall);

  XGap.small({super.key})
      : super(XService.instance.metrics.sizes.spacing.small);

  XGap.semiSmall({super.key})
      : super(XService.instance.metrics.sizes.spacing.semiSmall);

  XGap.medium({super.key})
      : super(XService.instance.metrics.sizes.spacing.medium);

  XGap.semiLarge({super.key})
      : super(XService.instance.metrics.sizes.spacing.semiLarge);

  XGap.large({super.key})
      : super(XService.instance.metrics.sizes.spacing.large);

  XGap.extraLarge({super.key})
      : super(XService.instance.metrics.sizes.spacing.extraLarge);
}
