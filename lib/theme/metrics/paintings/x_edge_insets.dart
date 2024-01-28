import 'package:design_system_toolkit/design_system_toolkit.dart';
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
          left: left ?? TkSpacingsData.none,
          top: top ?? TkSpacingsData.none,
          right: right ?? TkSpacingsData.none,
          bottom: bottom ?? TkSpacingsData.none,
        );

  const XEdgeInsets.symmetric({
    double? horizontal,
    double? vertical,
  }) : super.symmetric(
          horizontal: horizontal ?? TkSpacingsData.none,
          vertical: vertical ?? TkSpacingsData.none,
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
