part of x_metrics_data;

class XBoxSizesData extends XSizes {
  XBoxSizesData({
    double? none,
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
  }) : super(
          none: none ?? XSizesTokens.none.value * 10,
          extraSmall: extraSmall ?? XSizesTokens.extraSmall.value * 10,
          small: small ?? XSizesTokens.small.value * 10,
          semiSmall: semiSmall ?? XSizesTokens.semiSmall.value * 10,
          medium: medium ?? XSizesTokens.medium.value * 10,
          semiLarge: semiLarge ?? XSizesTokens.semiLarge.value * 10,
          large: large ?? XSizesTokens.large.value * 10,
          extraLarge: extraLarge ?? XSizesTokens.extraLarge.value * 10,
        );

  factory XBoxSizesData._fallback() => XBoxSizesData();
}
