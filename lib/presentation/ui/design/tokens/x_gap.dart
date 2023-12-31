import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

class XGap extends StatelessWidget {
  final XSizesTokens sizeType;

  const XGap(this.sizeType, {super.key});

  @override
  Widget build(BuildContext context) {
    final mX = MaterialX.of(context);
    return Gap(sizeType.toDouble(mX.metrics));
  }
}

// enum XSizesTokens {
//   none,
//   extraSmall,
//   semiSmall,
//   small,
//   medium,
//   semiLarge,
//   large,
//   extraLarge,
// }

extension AppGapSizeExtension on XSizesTokens {
  double toDouble(XMetricsData theme) {
    switch (this) {
      case XSizesTokens.none:
        return theme.spacings.none;
      case XSizesTokens.extraSmall:
        return theme.spacings.extraSmall;
      case XSizesTokens.small:
        return theme.spacings.small;
      case XSizesTokens.semiSmall:
        return theme.spacings.semiSmall;
      case XSizesTokens.medium:
        return theme.spacings.medium;
      case XSizesTokens.semiLarge:
        return theme.spacings.semiLarge;
      case XSizesTokens.large:
        return theme.spacings.large;
      case XSizesTokens.extraLarge:
        return theme.spacings.extraLarge;
    }
  }
}
