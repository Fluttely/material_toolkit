part of x_metrics_data;

class XBoxSizesData extends XSizesTokens {
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
          none: none ?? XSizesTokens().none * 10,
          extraSmall: extraSmall ?? XSizesTokens().extraSmall * 10,
          small: small ?? XSizesTokens().small * 10,
          semiSmall: semiSmall ?? XSizesTokens().semiSmall * 10,
          medium: medium ?? XSizesTokens().medium * 10,
          semiLarge: semiLarge ?? XSizesTokens().semiLarge * 10,
          large: large ?? XSizesTokens().large * 10,
          extraLarge: extraLarge ?? XSizesTokens().extraLarge * 10,
        );
}
