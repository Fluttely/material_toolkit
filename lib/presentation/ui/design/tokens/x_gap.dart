import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

class XGap extends Gap {
  const XGap(
    super.value, {
    super.key,
  });

  XGap.none({super.key}) : super(XService.instance.metrics.spacing.none);

  XGap.extraSmall({super.key})
      : super(XService.instance.metrics.spacing.extraSmall);

  XGap.small({super.key}) : super(XService.instance.metrics.spacing.small);

  XGap.semiSmall({super.key})
      : super(XService.instance.metrics.spacing.semiSmall);

  XGap.medium({super.key}) : super(XService.instance.metrics.spacing.medium);

  XGap.semiLarge({super.key})
      : super(XService.instance.metrics.spacing.semiLarge);

  XGap.large({super.key}) : super(XService.instance.metrics.spacing.large);

  XGap.extraLarge({super.key})
      : super(XService.instance.metrics.spacing.extraLarge);

  XGap.superLarge({super.key})
      : super(XService.instance.metrics.spacing.superLarge);
}
