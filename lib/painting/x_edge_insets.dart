import 'package:material_toolkit/material_toolkit.dart';

class XEdgeInsets {
  final XSpacing left;
  final XSpacing top;
  final XSpacing right;
  final XSpacing bottom;

  const XEdgeInsets.all(XSpacing value)
      : left = value,
        top = value,
        right = value,
        bottom = value;

  const XEdgeInsets.symmetric({
    XSpacing vertical = XSpacing.none,
    XSpacing horizontal = XSpacing.none,
  })  : left = horizontal,
        top = vertical,
        right = horizontal,
        bottom = vertical;

  const XEdgeInsets.only({
    this.left = XSpacing.none,
    this.top = XSpacing.none,
    this.right = XSpacing.none,
    this.bottom = XSpacing.none,
  });

  EdgeInsets toEdgeInsets(XSpacingData xSpacing) {
    return EdgeInsets.only(
      left: left.toDouble(xSpacing),
      top: top.toDouble(xSpacing),
      right: right.toDouble(xSpacing),
      bottom: bottom.toDouble(xSpacing),
    );
  }
}
