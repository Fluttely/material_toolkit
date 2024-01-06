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

  XEdgeInsets.none()
      : super.all(MaterialX.of(MaterialX.context).metrics!.spacing.none);

  XEdgeInsets.allExtraSmall()
      : super.all(MaterialX.of(MaterialX.context).metrics!.spacing.extraSmall);

  XEdgeInsets.allSmall()
      : super.all(MaterialX.of(MaterialX.context).metrics!.spacing.small);

  XEdgeInsets.allSemiSmall()
      : super.all(MaterialX.of(MaterialX.context).metrics!.spacing.semiSmall);

  XEdgeInsets.allMedium()
      : super.all(MaterialX.of(MaterialX.context).metrics!.spacing.medium);

  XEdgeInsets.allSemiLarge()
      : super.all(MaterialX.of(MaterialX.context).metrics!.spacing.semiLarge);

  XEdgeInsets.allLarge()
      : super.all(MaterialX.of(MaterialX.context).metrics!.spacing.large);

  XEdgeInsets.allExtraLarge()
      : super.all(MaterialX.of(MaterialX.context).metrics!.spacing.extraLarge);

  XEdgeInsets.allSuperLarge()
      : super.all(MaterialX.of(MaterialX.context).metrics!.spacing.superLarge);

  XEdgeInsets.horizontalExtraSmall()
      : super.symmetric(
            horizontal:
                MaterialX.of(MaterialX.context).metrics!.spacing.extraSmall);

  XEdgeInsets.horizontalSmall()
      : super.symmetric(
            horizontal: MaterialX.of(MaterialX.context).metrics!.spacing.small);

  XEdgeInsets.horizontalSemiSmall()
      : super.symmetric(
            horizontal:
                MaterialX.of(MaterialX.context).metrics!.spacing.semiSmall);

  XEdgeInsets.horizontalMedium()
      : super.symmetric(
            horizontal: MaterialX.of(MaterialX.context).metrics!.spacing.medium);

  XEdgeInsets.horizontalSemiLarge()
      : super.symmetric(
            horizontal:
                MaterialX.of(MaterialX.context).metrics!.spacing.semiLarge);

  XEdgeInsets.horizontalLarge()
      : super.symmetric(
            horizontal: MaterialX.of(MaterialX.context).metrics!.spacing.large);

  XEdgeInsets.horizontalExtraLarge()
      : super.symmetric(
            horizontal:
                MaterialX.of(MaterialX.context).metrics!.spacing.extraLarge);

  XEdgeInsets.horizontalSuperLarge()
      : super.symmetric(
            horizontal:
                MaterialX.of(MaterialX.context).metrics!.spacing.superLarge);

  XEdgeInsets.verticalExtraSmall()
      : super.symmetric(
            vertical:
                MaterialX.of(MaterialX.context).metrics!.spacing.extraSmall);

  XEdgeInsets.verticalSmall()
      : super.symmetric(
            vertical: MaterialX.of(MaterialX.context).metrics!.spacing.small);

  XEdgeInsets.verticalSemiSmall()
      : super.symmetric(
            vertical:
                MaterialX.of(MaterialX.context).metrics!.spacing.semiSmall);

  XEdgeInsets.verticalMedium()
      : super.symmetric(
            vertical: MaterialX.of(MaterialX.context).metrics!.spacing.medium);

  XEdgeInsets.verticalSemiLarge()
      : super.symmetric(
            vertical:
                MaterialX.of(MaterialX.context).metrics!.spacing.semiLarge);

  XEdgeInsets.verticalLarge()
      : super.symmetric(
            vertical: MaterialX.of(MaterialX.context).metrics!.spacing.large);

  XEdgeInsets.verticalExtraLarge()
      : super.symmetric(
            vertical:
                MaterialX.of(MaterialX.context).metrics!.spacing.extraLarge);

  XEdgeInsets.verticalSuperLarge()
      : super.symmetric(
            vertical:
                MaterialX.of(MaterialX.context).metrics!.spacing.superLarge);
}
