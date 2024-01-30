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
  })  : none = none ?? XSpacingData.none,
        superSmall = superSmall ?? XSpacingData.superSmall,
        extraSmall = extraSmall ?? XSpacingData.extraSmall,
        small = small ?? XSpacingData.small,
        semiSmall = semiSmall ?? XSpacingData.semiSmall,
        medium = medium ?? XSpacingData.medium,
        semiLarge = semiLarge ?? XSpacingData.semiLarge,
        large = large ?? XSpacingData.large,
        extraLarge = extraLarge ?? XSpacingData.extraLarge,
        superLarge = superLarge ?? XSpacingData.superLarge;
}
