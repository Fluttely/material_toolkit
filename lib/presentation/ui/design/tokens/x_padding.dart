import 'package:material_toolkit/material_toolkit.dart';

class XPaddingTokens extends Padding {
  const XPaddingTokens.custom({
    super.key,
    required XEdgeInsetsTokens padding,
    super.child,
  }) : super(padding: padding);

  XPaddingTokens.none({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.none());

  XPaddingTokens.allExtraSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.allExtraSmall());

  XPaddingTokens.allSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.allSmall());

  XPaddingTokens.allSemiSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.allSemiSmall());

  XPaddingTokens.allMedium({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.allMedium());

  XPaddingTokens.allSemiLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.allSemiLarge());

  XPaddingTokens.allLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.allLarge());

  XPaddingTokens.allExtraLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.allExtraLarge());

  XPaddingTokens.horizontalExtraSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.horizontalExtraSmall());

  XPaddingTokens.horizontalSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.horizontalSmall());

  XPaddingTokens.horizontalSemiSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.horizontalSemiSmall());

  XPaddingTokens.horizontalMedium({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.horizontalMedium());

  XPaddingTokens.horizontalSemiLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.horizontalSemiLarge());

  XPaddingTokens.horizontalLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.horizontalLarge());

  XPaddingTokens.horizontalExtraLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.horizontalExtraLarge());

  XPaddingTokens.verticalExtraSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.verticalExtraSmall());

  XPaddingTokens.verticalSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.verticalSmall());

  XPaddingTokens.verticalSemiSmall({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.verticalSemiSmall());

  XPaddingTokens.verticalMedium({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.verticalMedium());

  XPaddingTokens.verticalSemiLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.verticalSemiLarge());

  XPaddingTokens.verticalLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.verticalLarge());

  XPaddingTokens.verticalExtraLarge({
    super.key,
    super.child,
  }) : super(padding: XEdgeInsetsTokens.verticalExtraLarge());
}
