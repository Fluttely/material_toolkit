part of x_metrics_data;

class XSizesData {
  final XIconSizesData icon;
  final XBoxSizesData box;
  final XSpacingsData spacing;

  XSizesData({
    XIconSizesData? icon,
    XBoxSizesData? box,
    XSpacingsData? spacing,
  })  : icon = icon ?? XIconSizesData(),
        box = box ?? XBoxSizesData(),
        spacing = spacing ?? XSpacingsData();
}
