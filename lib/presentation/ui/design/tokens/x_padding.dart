import 'package:material_toolkit/material_toolkit.dart';

class XPadding extends Padding {
  const XPadding({
    super.key,
    required XEdgeInsets padding,
    super.child,
  }) : super(padding: padding);

  XPadding.none({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.none());

  XPadding.allExtraSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.allExtraSmall());

  XPadding.allSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.allSmall());

  XPadding.allSemiSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.allSemiSmall());

  XPadding.allMedium({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.allMedium());

  XPadding.allSemiLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.allSemiLarge());

  XPadding.allLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.allLarge());

  XPadding.allExtraLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.allExtraLarge());

  XPadding.horizontalExtraSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.horizontalExtraSmall());

  XPadding.horizontalSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.horizontalSmall());

  XPadding.horizontalSemiSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.horizontalSemiSmall());

  XPadding.horizontalMedium({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.horizontalMedium());

  XPadding.horizontalSemiLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.horizontalSemiLarge());

  XPadding.horizontalLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.horizontalLarge());

  XPadding.horizontalExtraLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.horizontalExtraLarge());

  XPadding.verticalExtraSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.verticalExtraSmall());

  XPadding.verticalSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.verticalSmall());

  XPadding.verticalSemiSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.verticalSemiSmall());

  XPadding.verticalMedium({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.verticalMedium());

  XPadding.verticalSemiLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.verticalSemiLarge());

  XPadding.verticalLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.verticalLarge());

  XPadding.verticalExtraLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsets.verticalExtraLarge());
}
