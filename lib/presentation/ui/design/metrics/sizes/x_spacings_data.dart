part of x_metrics_data;

class XSpacingsData {
  final double none;
  final double extraSmall;
  final double small;
  final double semiSmall;
  final double medium;
  final double semiLarge;
  final double large;
  final double extraLarge;

  XSpacingsData({
    double? none,
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
  })  : none = none ?? 0,
        extraSmall = extraSmall ?? 4,
        small = small ?? 8,
        semiSmall = semiSmall ?? 12,
        medium = medium ?? 16,
        semiLarge = semiLarge ?? 20,
        large = large ?? 24,
        extraLarge = extraLarge ?? 32;
}

// extension Adasd on XSizesTokens {
//   double get testValue => 18;
// }