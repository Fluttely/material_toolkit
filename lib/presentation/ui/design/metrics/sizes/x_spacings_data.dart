part of x_metrics_data;

class XSpacingsData extends XSizes {
  XSpacingsData({
    double? none,
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
  }) : super(
          none: none ?? XSizesTokens.none.value,
          extraSmall: extraSmall ?? XSizesTokens.extraSmall.value,
          small: small ?? XSizesTokens.small.value,
          semiSmall: semiSmall ?? XSizesTokens.semiSmall.value,
          medium: medium ?? XSizesTokens.medium.value,
          semiLarge: semiLarge ?? XSizesTokens.semiLarge.value,
          large: large ?? XSizesTokens.large.value,
          extraLarge: extraLarge ?? XSizesTokens.extraLarge.value,
        );

  factory XSpacingsData._fallback() => XSpacingsData();

  // EdgeInsets padding() => EdgeInsets.all(none);
}

// extension XSpacingsDataToEdgeInsets on XSpacingsData {
//   // EdgeInsets padding() {
//   //   return switch(this) {
//   //     none =>  EdgeInsets.all(none),
//   //     _ => EdgeInsets.all(none),
//   //   }
//   // }

//   EdgeInsets padding(int value) => switch (value) {
//         0 => EdgeInsets.all(),
//         1 => EdgeInsets.all(),
//         _ => EdgeInsets.all(),
//       };
// }
