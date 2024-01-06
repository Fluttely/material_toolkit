import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

class XGap extends Gap {
  const XGap(
    super.value, {
    super.key,
  });

  XGap.none({super.key}) : super(MaterialX.of(MaterialX.context).metrics.spacing.none);

  XGap.extraSmall({super.key})
      : super(MaterialX.of(MaterialX.context).metrics.spacing.extraSmall);

  XGap.small({super.key}) : super(MaterialX.of(MaterialX.context).metrics.spacing.small);

  XGap.semiSmall({super.key})
      : super(MaterialX.of(MaterialX.context).metrics.spacing.semiSmall);

  XGap.medium({super.key}) : super(MaterialX.of(MaterialX.context).metrics.spacing.medium);

  XGap.semiLarge({super.key})
      : super(MaterialX.of(MaterialX.context).metrics.spacing.semiLarge);

  XGap.large({super.key}) : super(MaterialX.of(MaterialX.context).metrics.spacing.large);

  XGap.extraLarge({super.key})
      : super(MaterialX.of(MaterialX.context).metrics.spacing.extraLarge);

  XGap.superLarge({super.key})
      : super(MaterialX.of(MaterialX.context).metrics.spacing.superLarge);
}
