part of '../x_design_tokens.dart';

enum XRadii {
  none,
  extraSmall,
  small,
  semiSmall,
  medium,
  semiLarge,
  large,
  extraLarge,
  superLarge;

  double toDouble(XRadiiTokens tokens) {
    return switch (this) {
      XRadii.none => tokens.none,
      XRadii.extraSmall => tokens.extraSmall,
      XRadii.small => tokens.small,
      XRadii.semiSmall => tokens.semiSmall,
      XRadii.medium => tokens.medium,
      XRadii.semiLarge => tokens.semiLarge,
      XRadii.large => tokens.large,
      XRadii.extraLarge => tokens.extraLarge,
      XRadii.superLarge => tokens.superLarge,
    };
  }
}

class XRadiiTokens extends Equatable {
  const XRadiiTokens({
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
    double? superLarge,
  })  : extraSmall = extraSmall ?? XStandardSizes.x4,
        small = small ?? XStandardSizes.x8,
        semiSmall = semiSmall ?? XStandardSizes.x12,
        medium = medium ?? XStandardSizes.x16,
        semiLarge = semiLarge ?? XStandardSizes.x20,
        large = large ?? XStandardSizes.x24,
        extraLarge = extraLarge ?? XStandardSizes.x32,
        superLarge = superLarge ?? XStandardSizes.x48;

  factory XRadiiTokens.fromMap(Map<String, dynamic> map) {
    double? parse(String key) => (map[key] as num?)?.toDouble();

    return XRadiiTokens(
      extraSmall: parse('extraSmall'),
      small: parse('small'),
      semiSmall: parse('semiSmall'),
      medium: parse('medium'),
      semiLarge: parse('semiLarge'),
      large: parse('large'),
      extraLarge: parse('extraLarge'),
      superLarge: parse('superLarge'),
    );
  }

  final double extraSmall;
  final double small;
  final double semiSmall;
  final double medium;
  final double semiLarge;
  final double large;
  final double extraLarge;
  final double superLarge;

  double get none => XStandardSizes.zero;

  XRadiiTokens copyWith({
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
    double? superLarge,
  }) {
    return XRadiiTokens(
      extraSmall: extraSmall ?? this.extraSmall,
      small: small ?? this.small,
      semiSmall: semiSmall ?? this.semiSmall,
      medium: medium ?? this.medium,
      semiLarge: semiLarge ?? this.semiLarge,
      large: large ?? this.large,
      extraLarge: extraLarge ?? this.extraLarge,
      superLarge: superLarge ?? this.superLarge,
    );
  }

  @override
  List<Object?> get props => [
        none,
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
XRadiiTokens(
  none: $none,
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
