part of x_metrics_data;

class XIconSizesData extends XSizes {
  XIconSizesData({
    double? none,
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
  }) : super(
          none: none ?? XSizesTokens.none.value * 2,
          extraSmall: extraSmall ?? XSizesTokens.extraSmall.value * 2,
          small: small ?? XSizesTokens.small.value * 2,
          semiSmall: semiSmall ?? XSizesTokens.semiSmall.value * 2,
          medium: medium ?? XSizesTokens.medium.value * 2,
          semiLarge: semiLarge ?? XSizesTokens.semiLarge.value * 2,
          large: large ?? XSizesTokens.large.value * 2,
          extraLarge: extraLarge ?? XSizesTokens.extraLarge.value * 2,
        );

  factory XIconSizesData._fallback() => XIconSizesData();
}
