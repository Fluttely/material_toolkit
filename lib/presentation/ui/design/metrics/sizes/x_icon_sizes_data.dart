part of x_metrics_data;

class XIconSizesData {
  final double none;
  final double small;
  final double medium;
  final double large;

  XIconSizesData({
    double? none,
    double? small,
    double? medium,
    double? large,
  })  : none = none ?? XSpacingsData().none,
        small = small ?? XSpacingsData().medium,
        medium = medium ?? XSpacingsData().large,
        large = large ?? XSpacingsData().superLarge;
}
