import 'package:material_toolkit/material_toolkit.dart';

class XEdgeInsets extends EdgeInsets {
  const XEdgeInsets.all(double value) : super.all(value);
  const XEdgeInsets.only({
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

  const XEdgeInsets.symmetric({
    double? horizontal,
    double? vertical,
  }) : super.symmetric(
          horizontal: horizontal ?? 0.0,
          vertical: vertical ?? 0.0,
        );

  XEdgeInsets.none() : super.all(XService.instance.metrics.sizes.spacing.none);

  XEdgeInsets.allExtraSmall()
      : super.all(XService.instance.metrics.sizes.spacing.extraSmall);

  XEdgeInsets.allSmall()
      : super.all(XService.instance.metrics.sizes.spacing.small);

  XEdgeInsets.allSemiSmall()
      : super.all(XService.instance.metrics.sizes.spacing.semiSmall);

  XEdgeInsets.allMedium()
      : super.all(XService.instance.metrics.sizes.spacing.medium);

  XEdgeInsets.allSemiLarge()
      : super.all(XService.instance.metrics.sizes.spacing.semiLarge);

  XEdgeInsets.allLarge()
      : super.all(XService.instance.metrics.sizes.spacing.large);

  XEdgeInsets.allExtraLarge()
      : super.all(XService.instance.metrics.sizes.spacing.extraLarge);

  XEdgeInsets.horizontalExtraSmall()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.extraSmall);

  XEdgeInsets.horizontalSmall()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.small);

  XEdgeInsets.horizontalSemiSmall()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.semiSmall);

  XEdgeInsets.horizontalMedium()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.medium);

  XEdgeInsets.horizontalSemiLarge()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.semiLarge);

  XEdgeInsets.horizontalLarge()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.large);

  XEdgeInsets.horizontalExtraLarge()
      : super.symmetric(
            horizontal: XService.instance.metrics.sizes.spacing.extraLarge);

  XEdgeInsets.verticalExtraSmall()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.extraSmall);

  XEdgeInsets.verticalSmall()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.small);

  XEdgeInsets.verticalSemiSmall()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.semiSmall);

  XEdgeInsets.verticalMedium()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.medium);

  XEdgeInsets.verticalSemiLarge()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.semiLarge);

  XEdgeInsets.verticalLarge()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.large);

  XEdgeInsets.verticalExtraLarge()
      : super.symmetric(
            vertical: XService.instance.metrics.sizes.spacing.extraLarge);

  EdgeInsets haha2() => const EdgeInsets.all(1);
}
