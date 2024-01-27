part of x_metrics_data;

class XSpacingsData {
  final double none;
  final double superSmall;
  final double extraSmall;
  final double small;
  final double semiSmall;
  final double medium;
  final double semiLarge;
  final double large;
  final double extraLarge;
  final double superLarge;

  XSpacingsData({
    double? none,
    double? superSmall,
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
    double? superLarge,
  })  : none = none ?? TkSpacingsData.none,
        superSmall = superSmall ?? TkSpacingsData.superSmall,
        extraSmall = extraSmall ?? TkSpacingsData.extraSmall,
        small = small ?? TkSpacingsData.small,
        semiSmall = semiSmall ?? TkSpacingsData.semiSmall,
        medium = medium ?? TkSpacingsData.medium,
        semiLarge = semiLarge ?? TkSpacingsData.semiLarge,
        large = large ?? TkSpacingsData.large,
        extraLarge = extraLarge ?? TkSpacingsData.extraLarge,
        superLarge = superLarge ?? TkSpacingsData.superLarge;
}
