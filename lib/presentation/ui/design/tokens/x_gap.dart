import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

class XGap extends Gap {
  const XGap(
    super.value, {
    super.key,
  });

  XGap.none({super.key}) : super(XMetricsData2.of(XMetricsData2.context).metrics.spacing.none);

  XGap.extraSmall({super.key})
      : super(XMetricsData2.of(XMetricsData2.context).metrics.spacing.extraSmall);

  XGap.small({super.key}) : super(XMetricsData2.of(XMetricsData2.context).metrics.spacing.small);

  XGap.semiSmall({super.key})
      : super(XMetricsData2.of(XMetricsData2.context).metrics.spacing.semiSmall);

  XGap.medium({super.key}) : super(XMetricsData2.of(XMetricsData2.context).metrics.spacing.medium);

  XGap.semiLarge({super.key})
      : super(XMetricsData2.of(XMetricsData2.context).metrics.spacing.semiLarge);

  XGap.large({super.key}) : super(XMetricsData2.of(XMetricsData2.context).metrics.spacing.large);

  XGap.extraLarge({super.key})
      : super(XMetricsData2.of(XMetricsData2.context).metrics.spacing.extraLarge);

  XGap.superLarge({super.key})
      : super(XMetricsData2.of(XMetricsData2.context).metrics.spacing.superLarge);
}
