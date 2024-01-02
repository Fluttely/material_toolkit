part of x_metrics_data;

class XIconSizesData extends XSpacingsData {
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
          none: none ?? XSpacingsData().none * 2,
          extraSmall: extraSmall ?? XSpacingsData().extraSmall * 2,
          small: small ?? XSpacingsData().small * 2,
          semiSmall: semiSmall ?? XSpacingsData().semiSmall * 2,
          medium: medium ?? XSpacingsData().medium * 2,
          semiLarge: semiLarge ?? XSpacingsData().semiLarge * 2,
          large: large ?? XSpacingsData().large * 2,
          extraLarge: extraLarge ?? XSpacingsData().extraLarge * 2,
        );
}
