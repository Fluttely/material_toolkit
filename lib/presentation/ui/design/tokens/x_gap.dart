import 'package:gap/gap.dart';
import 'package:material_toolkit/material_toolkit.dart';

class XGap extends Gap {
  XGap.none({super.key})
      : super(
          XMaterialService.instance.metrics.sizes.spacing.none,
        );

  XGap.allExtraSmall({super.key})
      : super(
          XMaterialService.instance.metrics.sizes.spacing.extraSmall,
        );

  XGap.allSmall({super.key})
      : super(
          XMaterialService.instance.metrics.sizes.spacing.small,
        );

  XGap.allSemiSmall({super.key})
      : super(
          XMaterialService.instance.metrics.sizes.spacing.semiSmall,
        );

  XGap.allMedium({super.key})
      : super(
          XMaterialService.instance.metrics.sizes.spacing.medium,
        );

  XGap.allSemiLarge({super.key})
      : super(
          XMaterialService.instance.metrics.sizes.spacing.semiLarge,
        );

  XGap.allLarge({super.key})
      : super(
          XMaterialService.instance.metrics.sizes.spacing.large,
        );

  XGap.allExtraLarge({super.key})
      : super(
          XMaterialService.instance.metrics.sizes.spacing.extraLarge,
        );
}


// class XGap extends Gap {
//   const XGap({
//     super.key,
//   }) : super(12);

//   @override
//   Widget build(BuildContext context) {
//     // final mX = MaterialX.of(context);
//     return Gap(sizeType);
//   }
// }

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

// extension AppGapSizeExtension on XSizes {
//   double toDouble(XMetricsData theme) {
//     switch (this) {
//       case XSizesTokens.none:
//         return theme.spacings.none;
//       case XSizesTokens.extraSmall:
//         return theme.spacings.extraSmall;
//       case XSizesTokens.small:
//         return theme.spacings.small;
//       case XSizesTokens.semiSmall:
//         return theme.spacings.semiSmall;
//       case XSizesTokens.medium:
//         return theme.spacings.medium;
//       case XSizesTokens.semiLarge:
//         return theme.spacings.semiLarge;
//       case XSizesTokens.large:
//         return theme.spacings.large;
//       case XSizesTokens.extraLarge:
//         return theme.spacings.extraLarge;
//     }
//   }
// }
