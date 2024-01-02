import 'package:material_toolkit/material_toolkit.dart';

class XEdgeInsetsTokens extends EdgeInsets {
  const XEdgeInsetsTokens.allCustom(double value) : super.all(value);

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
      : super.all(XService.instance.metrics.sizes.spacing.none);

  XEdgeInsetsTokens.allExtraSmall()
      : super.all(XService.instance.metrics.sizes.spacing.extraSmall);

  XEdgeInsetsTokens.allSmall()
      : super.all(XService.instance.metrics.sizes.spacing.small);

  XEdgeInsetsTokens.allSemiSmall()
      : super.all(XService.instance.metrics.sizes.spacing.semiSmall);

  XEdgeInsetsTokens.allMedium()
      : super.all(XService.instance.metrics.sizes.spacing.medium);

  XEdgeInsetsTokens.allSemiLarge()
      : super.all(XService.instance.metrics.sizes.spacing.semiLarge);

  XEdgeInsetsTokens.allLarge()
      : super.all(XService.instance.metrics.sizes.spacing.large);

  XEdgeInsetsTokens.allExtraLarge()
      : super.all(XService.instance.metrics.sizes.spacing.extraLarge);

  XEdgeInsetsTokens.horizontalExtraSmall()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.extraSmall);

  XEdgeInsetsTokens.horizontalSmall()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.small);

  XEdgeInsetsTokens.horizontalSemiSmall()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.semiSmall);

  XEdgeInsetsTokens.horizontalMedium()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.medium);

  XEdgeInsetsTokens.horizontalSemiLarge()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.semiLarge);

  XEdgeInsetsTokens.horizontalLarge()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.large);

  XEdgeInsetsTokens.horizontalExtraLarge()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.extraLarge);

  XEdgeInsetsTokens.verticalExtraSmall()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.extraSmall);

  XEdgeInsetsTokens.verticalSmall()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.small);

  XEdgeInsetsTokens.verticalSemiSmall()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.semiSmall);

  XEdgeInsetsTokens.verticalMedium()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.medium);

  XEdgeInsetsTokens.verticalSemiLarge()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.semiLarge);

  XEdgeInsetsTokens.verticalLarge()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.large);

  XEdgeInsetsTokens.verticalExtraLarge()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.extraLarge);
}
