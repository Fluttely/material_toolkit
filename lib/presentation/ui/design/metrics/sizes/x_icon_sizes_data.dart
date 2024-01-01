part of x_metrics_data;

class XIconSizesData extends XSizesTokens {
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
          none: none ?? XSizesTokens().none * 2,
          extraSmall: extraSmall ?? XSizesTokens().extraSmall * 2,
          small: small ?? XSizesTokens().small * 2,
          semiSmall: semiSmall ?? XSizesTokens().semiSmall * 2,
          medium: medium ?? XSizesTokens().medium * 2,
          semiLarge: semiLarge ?? XSizesTokens().semiLarge * 2,
          large: large ?? XSizesTokens().large * 2,
          extraLarge: extraLarge ?? XSizesTokens().extraLarge * 2,
        );
}
