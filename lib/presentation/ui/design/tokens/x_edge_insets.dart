import 'package:material_toolkit/material_toolkit.dart';

class XEdgeInsets extends EdgeInsets {
  const XEdgeInsets.all(double value) : super.all(value);
  XEdgeInsets.only({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) : super.only(
          left: left ?? XService.instance.metrics.spacing.none,
          top: top ?? XService.instance.metrics.spacing.none,
          right: right ?? XService.instance.metrics.spacing.none,
          bottom: bottom ?? XService.instance.metrics.spacing.none,
        );

  XEdgeInsets.symmetric({
    double? horizontal,
    double? vertical,
  }) : super.symmetric(
          horizontal:
              horizontal ?? XService.instance.metrics.spacing.none,
          vertical: vertical ?? XService.instance.metrics.spacing.none,
        );

  XEdgeInsets.none() : super.all(XService.instance.metrics.spacing.none);

  XEdgeInsets.allExtraSmall()
      : super.all(XService.instance.metrics.spacing.extraSmall);

  XEdgeInsets.allSmall()
      : super.all(XService.instance.metrics.spacing.small);

  XEdgeInsets.allSemiSmall()
      : super.all(XService.instance.metrics.spacing.semiSmall);

  XEdgeInsets.allMedium()
      : super.all(XService.instance.metrics.spacing.medium);

  XEdgeInsets.allSemiLarge()
      : super.all(XService.instance.metrics.spacing.semiLarge);

  XEdgeInsets.allLarge()
      : super.all(XService.instance.metrics.spacing.large);

  XEdgeInsets.allExtraLarge()
      : super.all(XService.instance.metrics.spacing.extraLarge);

  XEdgeInsets.horizontalExtraSmall()
      : super.symmetric(
            horizontal: XService.instance.metrics.spacing.extraSmall);

  XEdgeInsets.horizontalSmall()
      : super.symmetric(
            horizontal: XService.instance.metrics.spacing.small);

  XEdgeInsets.horizontalSemiSmall()
      : super.symmetric(
            horizontal: XService.instance.metrics.spacing.semiSmall);

  XEdgeInsets.horizontalMedium()
      : super.symmetric(
            horizontal: XService.instance.metrics.spacing.medium);

  XEdgeInsets.horizontalSemiLarge()
      : super.symmetric(
            horizontal: XService.instance.metrics.spacing.semiLarge);

  XEdgeInsets.horizontalLarge()
      : super.symmetric(
            horizontal: XService.instance.metrics.spacing.large);

  XEdgeInsets.horizontalExtraLarge()
      : super.symmetric(
            horizontal: XService.instance.metrics.spacing.extraLarge);

  XEdgeInsets.verticalExtraSmall()
      : super.symmetric(
            vertical: XService.instance.metrics.spacing.extraSmall);

  XEdgeInsets.verticalSmall()
      : super.symmetric(
            vertical: XService.instance.metrics.spacing.small);

  XEdgeInsets.verticalSemiSmall()
      : super.symmetric(
            vertical: XService.instance.metrics.spacing.semiSmall);

  XEdgeInsets.verticalMedium()
      : super.symmetric(
            vertical: XService.instance.metrics.spacing.medium);

  XEdgeInsets.verticalSemiLarge()
      : super.symmetric(
            vertical: XService.instance.metrics.spacing.semiLarge);

  XEdgeInsets.verticalLarge()
      : super.symmetric(
            vertical: XService.instance.metrics.spacing.large);

  XEdgeInsets.verticalExtraLarge()
      : super.symmetric(
            vertical: XService.instance.metrics.spacing.extraLarge);

  EdgeInsets haha2() => const EdgeInsets.all(1);
}
