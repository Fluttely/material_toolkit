part of x_metrics_data;

class XSizesData {
  final XIconSizesData icon;
  final XBoxSizesData box;
  final XSpacingSizesData spacing;
  final XEdgeInsetsSizesData edgeInsets;

  XSizesData({
    XIconSizesData? icon,
    XBoxSizesData? box,
    XSpacingSizesData? spacing,
    XEdgeInsetsSizesData? edgeInsets,
  })  : icon = icon ?? XIconSizesData(),
        box = box ?? XBoxSizesData(),
        spacing = spacing ?? XSpacingSizesData(),
        edgeInsets = edgeInsets ?? XEdgeInsetsSizesData();
}
