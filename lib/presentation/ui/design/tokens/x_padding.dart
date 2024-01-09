import 'package:material_toolkit/material_toolkit.dart';

enum XEdgeInsetsSizes {
  none,
  allExtraSmall,
  allSmall,
  allSemiSmall,
  allMedium,
  allSemiLarge,
  allLarge,
  allExtraLarge,
  allSuperLarge,

  horizontalExtraSmall,
  horizontalSmall,
  horizontalSemiSmall,
  horizontalMedium,
  horizontalSemiLarge,
  horizontalLarge,
  horizontalExtraLarge,
  horizontalSuperLarge,

  verticalExtraSmall,
  verticalSmall,
  verticalSemiSmall,
  verticalMedium,
  verticalSemiLarge,
  verticalLarge,
  verticalExtraLarge,
  verticalSuperLarge,
}

class XPadding extends StatelessWidget {
  final EdgeInsets? padding;
  final XEdgeInsetsSizes? xPadding;
  final Widget child;

  const XPadding({
    required this.child,
    this.padding,
    this.xPadding,
    super.key,
  });

  const XPadding.none({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.none;

  const XPadding.allExtraSmall({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.allExtraSmall;

  const XPadding.allSmall({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.allSmall;

  const XPadding.allSemiSmall({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.allSemiSmall;

  const XPadding.allMedium({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.allMedium;

  const XPadding.allSemiLarge({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.allSemiLarge;

  const XPadding.allLarge({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.allLarge;

  const XPadding.allExtraLarge({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.allExtraLarge;

  const XPadding.allSuperLarge({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.allSuperLarge;

  const XPadding.horizontalExtraSmall({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.horizontalExtraSmall;

  const XPadding.horizontalSmall({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.horizontalSmall;

  const XPadding.horizontalSemiSmall({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.horizontalSemiSmall;

  const XPadding.horizontalMedium({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.horizontalMedium;

  const XPadding.horizontalSemiLarge({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.horizontalSemiLarge;

  const XPadding.horizontalLarge({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.horizontalLarge;

  const XPadding.horizontalExtraLarge({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.horizontalExtraLarge;

  const XPadding.horizontalSuperLarge({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.horizontalSuperLarge;

  const XPadding.verticalExtraSmall({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.verticalExtraSmall;

  const XPadding.verticalSmall({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.verticalSmall;

  const XPadding.verticalSemiSmall({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.verticalSemiSmall;

  const XPadding.verticalMedium({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.verticalMedium;

  const XPadding.verticalSemiLarge({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.verticalSemiLarge;

  const XPadding.verticalLarge({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.verticalLarge;

  const XPadding.verticalExtraLarge({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.verticalExtraLarge;

  const XPadding.verticalSuperLarge({
    required this.child,
    super.key,
  })  : padding = null,
        xPadding = XEdgeInsetsSizes.verticalSuperLarge;

  @override
  Widget build(BuildContext context) {
    final resolvedEdgeInsets =
        resolveXEdgeInsets(context, xEdgeInsetsSizes: xPadding);

    return Padding(
      padding: resolvedEdgeInsets ?? padding ?? XEdgeInsets.none(context),
    );
  }

  XEdgeInsets? resolveXEdgeInsets(
    BuildContext context, {
    required XEdgeInsetsSizes? xEdgeInsetsSizes,
  }) =>
      switch (xEdgeInsetsSizes) {
        XEdgeInsetsSizes.none => XEdgeInsets.none(context),
        XEdgeInsetsSizes.allExtraSmall => XEdgeInsets.allExtraSmall(context),
        XEdgeInsetsSizes.allSmall => XEdgeInsets.allSmall(context),
        XEdgeInsetsSizes.allSemiSmall => XEdgeInsets.allSemiSmall(context),
        XEdgeInsetsSizes.allMedium => XEdgeInsets.allMedium(context),
        XEdgeInsetsSizes.allSemiLarge => XEdgeInsets.allSemiLarge(context),
        XEdgeInsetsSizes.allLarge => XEdgeInsets.allLarge(context),
        XEdgeInsetsSizes.allExtraLarge => XEdgeInsets.allExtraLarge(context),
        XEdgeInsetsSizes.allSuperLarge => XEdgeInsets.allSuperLarge(context),
        XEdgeInsetsSizes.horizontalExtraSmall =>
          XEdgeInsets.horizontalExtraSmall(context),
        XEdgeInsetsSizes.horizontalSmall =>
          XEdgeInsets.horizontalSmall(context),
        XEdgeInsetsSizes.horizontalSemiSmall =>
          XEdgeInsets.horizontalSemiSmall(context),
        XEdgeInsetsSizes.horizontalMedium =>
          XEdgeInsets.horizontalMedium(context),
        XEdgeInsetsSizes.horizontalSemiLarge =>
          XEdgeInsets.horizontalSemiLarge(context),
        XEdgeInsetsSizes.horizontalLarge =>
          XEdgeInsets.horizontalLarge(context),
        XEdgeInsetsSizes.horizontalExtraLarge =>
          XEdgeInsets.horizontalExtraLarge(context),
        XEdgeInsetsSizes.horizontalSuperLarge =>
          XEdgeInsets.horizontalSuperLarge(context),
        XEdgeInsetsSizes.verticalExtraSmall =>
          XEdgeInsets.verticalExtraSmall(context),
        XEdgeInsetsSizes.verticalSmall => XEdgeInsets.verticalSmall(context),
        XEdgeInsetsSizes.verticalSemiSmall =>
          XEdgeInsets.verticalSemiSmall(context),
        XEdgeInsetsSizes.verticalMedium => XEdgeInsets.verticalMedium(context),
        XEdgeInsetsSizes.verticalSemiLarge =>
          XEdgeInsets.verticalSemiLarge(context),
        XEdgeInsetsSizes.verticalLarge => XEdgeInsets.verticalLarge(context),
        XEdgeInsetsSizes.verticalExtraLarge =>
          XEdgeInsets.verticalExtraLarge(context),
        XEdgeInsetsSizes.verticalSuperLarge =>
          XEdgeInsets.verticalSuperLarge(context),
        null => null,
      };
}
