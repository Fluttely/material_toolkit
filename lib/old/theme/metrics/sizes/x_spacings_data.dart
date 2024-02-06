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
  })  : none = none ?? TkSpacingData.none,
        superSmall = superSmall ?? TkSpacingData.superSmall,
        extraSmall = extraSmall ?? TkSpacingData.extraSmall,
        small = small ?? TkSpacingData.small,
        semiSmall = semiSmall ?? TkSpacingData.semiSmall,
        medium = medium ?? TkSpacingData.medium,
        semiLarge = semiLarge ?? TkSpacingData.semiLarge,
        large = large ?? TkSpacingData.large,
        extraLarge = extraLarge ?? TkSpacingData.extraLarge,
        superLarge = superLarge ?? TkSpacingData.superLarge;
}
