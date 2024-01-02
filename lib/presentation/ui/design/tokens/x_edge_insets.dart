import 'package:material_toolkit/material_toolkit.dart';

class XEdgeInsetsTokens extends EdgeInsets {
  const XEdgeInsetsTokens.allCustom({
    required double value,
  }) : super.all(
          value,
        );

  const XEdgeInsetsTokens.onlyCustom({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) : super.only(
          left: left ?? 0.0,
          top: top ?? 0.0,
          right: right ?? 0.0,
          bottom: bottom ?? 0.0,
        );

  const XEdgeInsetsTokens.symetricCustom({
    double? horizontal,
    double? vertical,
  }) : super.symmetric(
          horizontal: horizontal ?? 0.0,
          vertical: vertical ?? 0.0,
        );

  XEdgeInsetsTokens.none()
      : super.all(
          XMaterialService.instance.metrics.sizes.spacing.none,
        );

  XEdgeInsetsTokens.allExtraSmall()
      : super.all(
          XMaterialService.instance.metrics.sizes.spacing.extraSmall,
        );

  XEdgeInsetsTokens.allSmall()
      : super.all(
          XMaterialService.instance.metrics.sizes.spacing.small,
        );

  XEdgeInsetsTokens.allSemiSmall()
      : super.all(
          XMaterialService.instance.metrics.sizes.spacing.semiSmall,
        );

  XEdgeInsetsTokens.allMedium()
      : super.all(
          XMaterialService.instance.metrics.sizes.spacing.medium,
        );

  XEdgeInsetsTokens.allSemiLarge()
      : super.all(
          XMaterialService.instance.metrics.sizes.spacing.semiLarge,
        );

  XEdgeInsetsTokens.allLarge()
      : super.all(
          XMaterialService.instance.metrics.sizes.spacing.large,
        );

  XEdgeInsetsTokens.allExtraLarge()
      : super.all(
          XMaterialService.instance.metrics.sizes.spacing.extraLarge,
        );

  XEdgeInsetsTokens.horizontalExtraSmall()
      : super.symmetric(
          horizontal:
              XMaterialService.instance.metrics.sizes.spacing.extraSmall,
        );

  XEdgeInsetsTokens.horizontalSmall()
      : super.symmetric(
          horizontal: XMaterialService.instance.metrics.sizes.spacing.small,
        );

  XEdgeInsetsTokens.horizontalSemiSmall()
      : super.symmetric(
          horizontal: XMaterialService.instance.metrics.sizes.spacing.semiSmall,
        );

  XEdgeInsetsTokens.horizontalMedium()
      : super.symmetric(
          horizontal: XMaterialService.instance.metrics.sizes.spacing.medium,
        );

  XEdgeInsetsTokens.horizontalSemiLarge()
      : super.symmetric(
          horizontal: XMaterialService.instance.metrics.sizes.spacing.semiLarge,
        );

  XEdgeInsetsTokens.horizontalLarge()
      : super.symmetric(
          horizontal: XMaterialService.instance.metrics.sizes.spacing.large,
        );

  XEdgeInsetsTokens.horizontalExtraLarge()
      : super.symmetric(
          horizontal:
              XMaterialService.instance.metrics.sizes.spacing.extraLarge,
        );

  XEdgeInsetsTokens.verticalExtraSmall()
      : super.symmetric(
          vertical: XMaterialService.instance.metrics.sizes.spacing.extraSmall,
        );

  XEdgeInsetsTokens.verticalSmall()
      : super.symmetric(
          vertical: XMaterialService.instance.metrics.sizes.spacing.small,
        );

  XEdgeInsetsTokens.verticalSemiSmall()
      : super.symmetric(
          vertical: XMaterialService.instance.metrics.sizes.spacing.semiSmall,
        );

  XEdgeInsetsTokens.verticalMedium()
      : super.symmetric(
          vertical: XMaterialService.instance.metrics.sizes.spacing.medium,
        );

  XEdgeInsetsTokens.verticalSemiLarge()
      : super.symmetric(
          vertical: XMaterialService.instance.metrics.sizes.spacing.semiLarge,
        );

  XEdgeInsetsTokens.verticalLarge()
      : super.symmetric(
          vertical: XMaterialService.instance.metrics.sizes.spacing.large,
        );

  XEdgeInsetsTokens.verticalExtraLarge()
      : super.symmetric(
          vertical: XMaterialService.instance.metrics.sizes.spacing.extraLarge,
        );
}
