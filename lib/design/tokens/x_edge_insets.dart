import 'package:material_toolkit/material_toolkit.dart';

class XEdgeInsets extends EdgeInsets {
  // const factory XEdgeInsets.all2(double value) = XEdgeInsets.all;
  const XEdgeInsets.all(double value) : super.all(value);

  const XEdgeInsets.only({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) : super.only(
          left: left ?? 0,
          top: top ?? 0,
          right: right ?? 0,
          bottom: bottom ?? 0,
        );

  const XEdgeInsets.symmetric({
    double? horizontal,
    double? vertical,
  }) : super.symmetric(
          horizontal: horizontal ?? 0,
          vertical: vertical ?? 0,
        );

  XEdgeInsets.none(BuildContext context)
      : super.all(MaterialX.of(context).metrics.spacing.none);

  XEdgeInsets.allExtraSmall(BuildContext context)
      : super.all(MaterialX.of(context).metrics.spacing.extraSmall);

  XEdgeInsets.allSmall(BuildContext context)
      : super.all(MaterialX.of(context).metrics.spacing.small);

  XEdgeInsets.allSemiSmall(BuildContext context)
      : super.all(MaterialX.of(context).metrics.spacing.semiSmall);

  XEdgeInsets.allMedium(BuildContext context)
      : super.all(MaterialX.of(context).metrics.spacing.medium);

  XEdgeInsets.allSemiLarge(BuildContext context)
      : super.all(MaterialX.of(context).metrics.spacing.semiLarge);

  XEdgeInsets.allLarge(BuildContext context)
      : super.all(MaterialX.of(context).metrics.spacing.large);

  XEdgeInsets.allExtraLarge(BuildContext context)
      : super.all(MaterialX.of(context).metrics.spacing.extraLarge);

  XEdgeInsets.allSuperLarge(BuildContext context)
      : super.all(MaterialX.of(context).metrics.spacing.superLarge);

  XEdgeInsets.horizontalExtraSmall(BuildContext context)
      : super.symmetric(
            horizontal: MaterialX.of(context).metrics.spacing.extraSmall);

  XEdgeInsets.horizontalSmall(BuildContext context)
      : super.symmetric(
            horizontal: MaterialX.of(context).metrics.spacing.small);

  XEdgeInsets.horizontalSemiSmall(BuildContext context)
      : super.symmetric(
            horizontal: MaterialX.of(context).metrics.spacing.semiSmall);

  XEdgeInsets.horizontalMedium(BuildContext context)
      : super.symmetric(
            horizontal: MaterialX.of(context).metrics.spacing.medium);

  XEdgeInsets.horizontalSemiLarge(BuildContext context)
      : super.symmetric(
            horizontal: MaterialX.of(context).metrics.spacing.semiLarge);

  XEdgeInsets.horizontalLarge(BuildContext context)
      : super.symmetric(
            horizontal: MaterialX.of(context).metrics.spacing.large);

  XEdgeInsets.horizontalExtraLarge(BuildContext context)
      : super.symmetric(
            horizontal: MaterialX.of(context).metrics.spacing.extraLarge);

  XEdgeInsets.horizontalSuperLarge(BuildContext context)
      : super.symmetric(
            horizontal: MaterialX.of(context).metrics.spacing.superLarge);

  XEdgeInsets.verticalExtraSmall(BuildContext context)
      : super.symmetric(
            vertical: MaterialX.of(context).metrics.spacing.extraSmall);

  XEdgeInsets.verticalSmall(BuildContext context)
      : super.symmetric(vertical: MaterialX.of(context).metrics.spacing.small);

  XEdgeInsets.verticalSemiSmall(BuildContext context)
      : super.symmetric(
            vertical: MaterialX.of(context).metrics.spacing.semiSmall);

  XEdgeInsets.verticalMedium(BuildContext context)
      : super.symmetric(vertical: MaterialX.of(context).metrics.spacing.medium);

  XEdgeInsets.verticalSemiLarge(BuildContext context)
      : super.symmetric(
            vertical: MaterialX.of(context).metrics.spacing.semiLarge);

  XEdgeInsets.verticalLarge(BuildContext context)
      : super.symmetric(vertical: MaterialX.of(context).metrics.spacing.large);

  XEdgeInsets.verticalExtraLarge(BuildContext context)
      : super.symmetric(
            vertical: MaterialX.of(context).metrics.spacing.extraLarge);

  XEdgeInsets.verticalSuperLarge(BuildContext context)
      : super.symmetric(
            vertical: MaterialX.of(context).metrics.spacing.superLarge);
}
