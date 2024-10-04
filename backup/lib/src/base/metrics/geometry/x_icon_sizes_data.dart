part of '../x_metrics_data.dart';

// TODO: NOW
class XIconSizesData extends Equatable {
  final double extraSmall;
  final double small;
  final double semiSmall;
  final double medium;
  final double semiLarge;
  final double large;
  final double extraLarge;
  final double superLarge;

  const XIconSizesData({
    final double? extraSmall,
    final double? small,
    final double? semiSmall,
    final double? medium,
    final double? semiLarge,
    final double? large,
    final double? extraLarge,
    final double? superLarge,
  })  : extraSmall = extraSmall ?? XStandardSizes.x16,
        small = small ?? XAuxiliarySizes.x18,
        semiSmall = semiSmall ?? XStandardSizes.x20,
        medium = medium ?? XStandardSizes.x24,
        semiLarge = semiLarge ?? XStandardSizes.x32,
        large = large ?? XStandardSizes.x48,
        extraLarge = extraLarge ?? XStandardSizes.x96,
        superLarge = superLarge ?? XStandardSizes.x192;

  @override
  List<Object?> get props => [
        extraSmall.named('extraSmall'),
        small.named('small'),
        semiSmall.named('semiSmall'),
        medium.named('medium'),
        semiLarge.named('semiLarge'),
        large.named('large'),
        extraLarge.named('extraLarge'),
        superLarge.named('superLarge'),
      ];

  @override
  String toString() => '''
    XIconSizesData(
      extraSmall: $extraSmall,
      small: $small,
      semiSmall: $semiSmall,
      medium: $medium,
      semiLarge: $semiLarge,
      large: $large,
      extraLarge: $extraLarge,
      superLarge: $superLarge,
    )
  ''';
}

// enum XIconSizes {
//   extraSmall,
//   small,
//   semiSmall,
//   medium,
//   semiLarge,
//   large,
//   extraLarge,
//   superLarge,
// }

// extension XIconSizesExtension on XIconSizes {
//   double toDouble(XIconSizesData iconSizes) => switch (this) {
//         XIconSizes.extraSmall => iconSizes.extraSmall,
//         XIconSizes.small => iconSizes.small,
//         XIconSizes.semiSmall => iconSizes.semiSmall,
//         XIconSizes.medium => iconSizes.medium,
//         XIconSizes.semiLarge => iconSizes.semiLarge,
//         XIconSizes.large => iconSizes.large,
//         XIconSizes.extraLarge => iconSizes.extraLarge,
//         XIconSizes.superLarge => iconSizes.superLarge,
//       };
// }
