part of '../x_design_tokens.dart';

class XIconSizesTokens extends Equatable {
  final double extraSmall;
  final double small;
  final double semiSmall;
  final double medium;
  final double semiLarge;
  final double large;
  final double extraLarge;
  final double superLarge;

  const XIconSizesTokens({
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
    double? superLarge,
  })  : extraSmall = extraSmall ?? XStandardSizes.x16,
        small = small ?? XAuxiliarySizes.x18,
        semiSmall = semiSmall ?? XStandardSizes.x20,
        medium = medium ?? XStandardSizes.x24,
        semiLarge = semiLarge ?? XStandardSizes.x32,
        large = large ?? XStandardSizes.x48,
        extraLarge = extraLarge ?? XStandardSizes.x96,
        superLarge = superLarge ?? XStandardSizes.x192;

  double get zero => XStandardSizes.zero;

  factory XIconSizesTokens.fromMap(Map<String, dynamic> map) {
    double? d(String key) => (map[key] as num?)?.toDouble();

    return XIconSizesTokens(
      extraSmall: d('extraSmall'),
      small: d('small'),
      semiSmall: d('semiSmall'),
      medium: d('medium'),
      semiLarge: d('semiLarge'),
      large: d('large'),
      extraLarge: d('extraLarge'),
      superLarge: d('superLarge'),
    );
  }

  @override
  List<Object?> get props => [
        zero,
        extraSmall,
        small,
        semiSmall,
        medium,
        semiLarge,
        large,
        extraLarge,
        superLarge,
      ];

  @override
  String toString() => '''
XIconSizesTokens(
  zero: $zero,
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
