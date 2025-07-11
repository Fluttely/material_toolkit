part of '../x_design_tokens.dart';

enum XSpacings {
  none,
  superSmall,
  extraSmall,
  small,
  semiSmall,
  medium,
  semiLarge,
  large,
  extraLarge,
  superLarge,
}

extension XSpacingsExtension on XSpacings {
  double toDouble(XSpacingsTokens spacings) {
    return switch (this) {
      XSpacings.none => spacings.none,
      XSpacings.superSmall => spacings.superSmall,
      XSpacings.extraSmall => spacings.extraSmall,
      XSpacings.small => spacings.small,
      XSpacings.semiSmall => spacings.semiSmall,
      XSpacings.medium => spacings.medium,
      XSpacings.semiLarge => spacings.semiLarge,
      XSpacings.large => spacings.large,
      XSpacings.extraLarge => spacings.extraLarge,
      XSpacings.superLarge => spacings.superLarge,
    };
  }
}

class XSpacingsTokens extends Equatable {
  final double superSmall;
  final double extraSmall;
  final double small;
  final double semiSmall;
  final double medium;
  final double semiLarge;
  final double large;
  final double extraLarge;
  final double superLarge;

  const XSpacingsTokens({
    double? superSmall,
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
    double? superLarge,
  })  : superSmall = superSmall ?? XAuxiliarySizes.x2,
        extraSmall = extraSmall ?? XStandardSizes.x4,
        small = small ?? XStandardSizes.x8,
        semiSmall = semiSmall ?? XStandardSizes.x12,
        medium = medium ?? XStandardSizes.x16,
        semiLarge = semiLarge ?? XStandardSizes.x20,
        large = large ?? XStandardSizes.x24,
        extraLarge = extraLarge ?? XStandardSizes.x32,
        superLarge = superLarge ?? XStandardSizes.x48;

  double get none => XStandardSizes.zero;

  /// + 2
  double get x2 => XAuxiliarySizes.x2;

  /// + 4
  double get x4 => XStandardSizes.x4;
  double get x8 => XStandardSizes.x8;
  double get x12 => XStandardSizes.x12;
  double get x16 => XStandardSizes.x16;
  double get x20 => XStandardSizes.x20;
  double get x24 => XStandardSizes.x24;
  double get x28 => XStandardSizes.x28;
  double get x32 => XStandardSizes.x32;
  double get x36 => XStandardSizes.x36;
  double get x40 => XStandardSizes.x40;
  double get x44 => XStandardSizes.x44;
  double get x48 => XStandardSizes.x48;
  double get x52 => XStandardSizes.x52;
  double get x56 => XStandardSizes.x56;
  double get x60 => XStandardSizes.x60;
  double get x64 => XStandardSizes.x64;
  double get x68 => XStandardSizes.x68;
  double get x72 => XStandardSizes.x72;
  double get x76 => XStandardSizes.x76;
  double get x80 => XStandardSizes.x80;
  double get x84 => XStandardSizes.x84;
  double get x88 => XStandardSizes.x88;
  double get x92 => XStandardSizes.x92;
  double get x96 => XStandardSizes.x96;
  double get x100 => XStandardSizes.x100;
  double get x104 => XStandardSizes.x104;
  double get x108 => XStandardSizes.x108;
  double get x112 => XStandardSizes.x112;
  double get x116 => XStandardSizes.x116;
  double get x120 => XStandardSizes.x120;
  double get x128 => XStandardSizes.x128;

  /// + 8
  double get x136 => XStandardSizes.x136;
  double get x144 => XStandardSizes.x144;
  double get x152 => XStandardSizes.x152;
  double get x160 => XStandardSizes.x160;
  double get x168 => XStandardSizes.x168;
  double get x176 => XStandardSizes.x176;
  double get x184 => XStandardSizes.x184;
  double get x192 => XStandardSizes.x192;
  double get x200 => XStandardSizes.x200;
  double get x208 => XStandardSizes.x208;
  double get x216 => XStandardSizes.x216;
  double get x224 => XStandardSizes.x224;
  double get x232 => XStandardSizes.x232;
  double get x240 => XStandardSizes.x240;
  double get x248 => XStandardSizes.x248;
  double get x256 => XStandardSizes.x256;

  /// * 2
  double get x512 => XStandardSizes.x512;
  double get x1024 => XStandardSizes.x1024;
  double get x2048 => XStandardSizes.x2048;

  factory XSpacingsTokens.fromMap(Map<String, dynamic> map) {
    double? d(String key) => (map[key] as num?)?.toDouble();

    return XSpacingsTokens(
      superSmall: d('superSmall'),
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
        none,
        superSmall,
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
XSpacingsTokens(
  none: $none,
  superSmall: $superSmall,
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
