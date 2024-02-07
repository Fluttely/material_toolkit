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
          left: left ?? TkSpacingData.none,
          top: top ?? TkSpacingData.none,
          right: right ?? TkSpacingData.none,
          bottom: bottom ?? TkSpacingData.none,
        );

  const XEdgeInsets.symmetric({
    double? horizontal,
    double? vertical,
  }) : super.symmetric(
          horizontal: horizontal ?? TkSpacingData.none,
          vertical: vertical ?? TkSpacingData.none,
        );

  XEdgeInsets.none(BuildContext context)
      : super.all(Theme.of(context).extension<XMetricsData>()!.spacing.none);

  XEdgeInsets.allExtraSmall(BuildContext context)
      : super.all(
            Theme.of(context).extension<XMetricsData>()!.spacing.extraSmall);

  XEdgeInsets.allSmall(BuildContext context)
      : super.all(Theme.of(context).extension<XMetricsData>()!.spacing.small);

  XEdgeInsets.allSemiSmall(BuildContext context)
      : super.all(
            Theme.of(context).extension<XMetricsData>()!.spacing.semiSmall);

  XEdgeInsets.allMedium(BuildContext context)
      : super.all(Theme.of(context).extension<XMetricsData>()!.spacing.medium);

  XEdgeInsets.allSemiLarge(BuildContext context)
      : super.all(
            Theme.of(context).extension<XMetricsData>()!.spacing.semiLarge);

  XEdgeInsets.allLarge(BuildContext context)
      : super.all(Theme.of(context).extension<XMetricsData>()!.spacing.large);

  XEdgeInsets.allExtraLarge(BuildContext context)
      : super.all(
            Theme.of(context).extension<XMetricsData>()!.spacing.extraLarge);

  XEdgeInsets.allSuperLarge(BuildContext context)
      : super.all(
            Theme.of(context).extension<XMetricsData>()!.spacing.superLarge);

  XEdgeInsets.horizontalExtraSmall(BuildContext context)
      : super.symmetric(
            horizontal: Theme.of(context)
                .extension<XMetricsData>()!
                .spacing
                .extraSmall);

  XEdgeInsets.horizontalSmall(BuildContext context)
      : super.symmetric(
            horizontal:
                Theme.of(context).extension<XMetricsData>()!.spacing.small);

  XEdgeInsets.horizontalSemiSmall(BuildContext context)
      : super.symmetric(
            horizontal:
                Theme.of(context).extension<XMetricsData>()!.spacing.semiSmall);

  XEdgeInsets.horizontalMedium(BuildContext context)
      : super.symmetric(
            horizontal:
                Theme.of(context).extension<XMetricsData>()!.spacing.medium);

  XEdgeInsets.horizontalSemiLarge(BuildContext context)
      : super.symmetric(
            horizontal:
                Theme.of(context).extension<XMetricsData>()!.spacing.semiLarge);

  XEdgeInsets.horizontalLarge(BuildContext context)
      : super.symmetric(
            horizontal:
                Theme.of(context).extension<XMetricsData>()!.spacing.large);

  XEdgeInsets.horizontalExtraLarge(BuildContext context)
      : super.symmetric(
            horizontal: Theme.of(context)
                .extension<XMetricsData>()!
                .spacing
                .extraLarge);

  XEdgeInsets.horizontalSuperLarge(BuildContext context)
      : super.symmetric(
            horizontal: Theme.of(context)
                .extension<XMetricsData>()!
                .spacing
                .superLarge);

  XEdgeInsets.verticalExtraSmall(BuildContext context)
      : super.symmetric(
            vertical: Theme.of(context)
                .extension<XMetricsData>()!
                .spacing
                .extraSmall);

  XEdgeInsets.verticalSmall(BuildContext context)
      : super.symmetric(
            vertical:
                Theme.of(context).extension<XMetricsData>()!.spacing.small);

  XEdgeInsets.verticalSemiSmall(BuildContext context)
      : super.symmetric(
            vertical:
                Theme.of(context).extension<XMetricsData>()!.spacing.semiSmall);

  XEdgeInsets.verticalMedium(BuildContext context)
      : super.symmetric(
            vertical:
                Theme.of(context).extension<XMetricsData>()!.spacing.medium);

  XEdgeInsets.verticalSemiLarge(BuildContext context)
      : super.symmetric(
            vertical:
                Theme.of(context).extension<XMetricsData>()!.spacing.semiLarge);

  XEdgeInsets.verticalLarge(BuildContext context)
      : super.symmetric(
            vertical:
                Theme.of(context).extension<XMetricsData>()!.spacing.large);

  XEdgeInsets.verticalExtraLarge(BuildContext context)
      : super.symmetric(
            vertical: Theme.of(context)
                .extension<XMetricsData>()!
                .spacing
                .extraLarge);

  XEdgeInsets.verticalSuperLarge(BuildContext context)
      : super.symmetric(
            vertical: Theme.of(context)
                .extension<XMetricsData>()!
                .spacing
                .superLarge);
}
