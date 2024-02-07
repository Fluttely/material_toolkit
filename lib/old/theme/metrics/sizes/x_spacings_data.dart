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

  const XSpacingsData({
    final double? none,
    final double? superSmall,
    final double? extraSmall,
    final double? small,
    final double? semiSmall,
    final double? medium,
    final double? semiLarge,
    final double? large,
    final double? extraLarge,
    final double? superLarge,
  })  : none = none ?? TkStandardSizeConstants.x0,
        superSmall = superSmall ?? TkAuxiliarySizeConstants.x2,
        extraSmall = extraSmall ?? TkStandardSizeConstants.x4,
        small = small ?? TkStandardSizeConstants.x8,
        semiSmall = semiSmall ?? TkStandardSizeConstants.x12,
        medium = medium ?? TkStandardSizeConstants.x16,
        semiLarge = semiLarge ?? TkStandardSizeConstants.x20,
        large = large ?? TkStandardSizeConstants.x24,
        extraLarge = extraLarge ?? TkStandardSizeConstants.x32,
        superLarge = superLarge ?? TkStandardSizeConstants.x48;
}
