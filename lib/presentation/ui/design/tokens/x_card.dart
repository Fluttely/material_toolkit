import 'package:material_toolkit/material_toolkit.dart';

class XCard extends Card {
  XCard({
    super.key,
    super.borderOnForeground,
    super.child,
    super.clipBehavior,
    super.color,
    super.elevation,
    EdgeInsetsGeometry? margin,
    super.semanticContainer,
    super.shadowColor,
    ShapeBorder? shape,
    super.surfaceTintColor,
  }) : super(
          // clipBehavior: Clip.none,
          // elevation: 1.0,
          margin: margin ?? XEdgeInsets.allExtraSmall(),
          shape: shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.all(
              // Radius.circular(12.0)
              MaterialX.of(MaterialX.context).metrics.radius.small)),
        );
}
