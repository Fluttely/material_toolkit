part of x_metrics_data;

class XBoxSizesData extends XSpacingsData {
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
          none: none ?? XSpacingsData().none * 10,
          extraSmall: extraSmall ?? XSpacingsData().extraSmall * 10,
          small: small ?? XSpacingsData().small * 10,
          semiSmall: semiSmall ?? XSpacingsData().semiSmall * 10,
          medium: medium ?? XSpacingsData().medium * 10,
          semiLarge: semiLarge ?? XSpacingsData().semiLarge * 10,
          large: large ?? XSpacingsData().large * 10,
          extraLarge: extraLarge ?? XSpacingsData().extraLarge * 10,
        );
}
