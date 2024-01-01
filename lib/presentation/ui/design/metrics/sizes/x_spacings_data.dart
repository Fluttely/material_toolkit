part of x_metrics_data;

class XSpacingsData extends XSizesTokens {
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
          none: none ?? XSizesTokens().none,
          extraSmall: extraSmall ?? XSizesTokens().extraSmall,
          small: small ?? XSizesTokens().small,
          semiSmall: semiSmall ?? XSizesTokens().semiSmall,
          medium: medium ?? XSizesTokens().medium,
          semiLarge: semiLarge ?? XSizesTokens().semiLarge,
          large: large ?? XSizesTokens().large,
          extraLarge: extraLarge ?? XSizesTokens().extraLarge,
        );

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
