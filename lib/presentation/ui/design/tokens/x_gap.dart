import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

class XGapTokens extends Gap {
  const XGapTokens.custom(
    double value, {
    super.key,
  }) : super(value);

  XGapTokens.none({super.key})
      : super(XService.instance.metrics.sizes.spacing.none);

  XGapTokens.extraSmall({super.key})
      : super(XService.instance.metrics.sizes.spacing.extraSmall);

  XGapTokens.small({super.key})
      : super(XService.instance.metrics.sizes.spacing.small);

  XGapTokens.semiSmall({super.key})
      : super(XService.instance.metrics.sizes.spacing.semiSmall);

  XGapTokens.medium({super.key})
      : super(XService.instance.metrics.sizes.spacing.medium);

  XGapTokens.semiLarge({super.key})
      : super(XService.instance.metrics.sizes.spacing.semiLarge);

  XGapTokens.large({super.key})
      : super(XService.instance.metrics.sizes.spacing.large);

  XGapTokens.extraLarge({super.key})
      : super(XService.instance.metrics.sizes.spacing.extraLarge);
}
