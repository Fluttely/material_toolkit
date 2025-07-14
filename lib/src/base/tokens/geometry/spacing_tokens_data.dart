part of '../../design_tokens.dart';

/// Semantic spacing scale for Material Design 3.
abstract final class MaterialSpacing {
  static const double extraSmall = 4;
  static const double small = 8;
  static const double medium = 16;
  static const double large = 24;
  static const double extraLarge = 32;

  /// Material Design 3 spacing scale
  static const double none = 0;

  // Base spacing scale (4dp increments)
  static const double space4 = 4;
  static const double space8 = 8;
  static const double space12 = 12;
  static const double space16 = 16;
  static const double space20 = 20;
  static const double space24 = 24;
  static const double space28 = 28;
  static const double space32 = 32;
  static const double space36 = 36;
  static const double space40 = 40;
  static const double space44 = 44;
  static const double space48 = 48;
  static const double space52 = 52;
  static const double space56 = 56;
  static const double space60 = 60;
  static const double space64 = 64;

  // Extended spacing scale (8dp increments for larger spacing)
  static const double space72 = 72;
  static const double space80 = 80;
  static const double space88 = 88;
  static const double space96 = 96;
  static const double space104 = 104;
  static const double space112 = 112;
  static const double space120 = 120;
  static const double space128 = 128;

  // Large spacing scale (16dp increments)
  static const double space144 = 144;
  static const double space160 = 160;
  static const double space176 = 176;
  static const double space192 = 192;
  static const double space208 = 208;
  static const double space224 = 224;
  static const double space240 = 240;
  static const double space256 = 256;

  // Extra large spacing for special cases
  static const double space320 = 320;
  static const double space384 = 384;
  static const double space448 = 448;
  static const double space512 = 512;
}

/// Spacing scale used for margins, padding and gaps following Material Design 3.
enum SpacingToken {
  none,
  extraSmall,
  small,
  medium,
  large,
  extraLarge;

  double toDouble(SpacingTokensData spacings) {
    return switch (this) {
      SpacingToken.none => spacings.none,
      SpacingToken.extraSmall => spacings.extraSmall,
      SpacingToken.small => spacings.small,
      SpacingToken.medium => spacings.medium,
      SpacingToken.large => spacings.large,
      SpacingToken.extraLarge => spacings.extraLarge,
    };
  }
}

/// Common spacing values following Material Design 3 spacing scale (4dp base).
class SpacingTokensData extends Equatable {
  const SpacingTokensData({
    double? extraSmall,
    double? small,
    double? medium,
    double? large,
    double? extraLarge,
  }) : none = MaterialSpacing.none,
       extraSmall = extraSmall ?? MaterialSpacing.extraSmall,
       small = small ?? MaterialSpacing.small,
       medium = medium ?? MaterialSpacing.medium,
       large = large ?? MaterialSpacing.large,
       extraLarge = extraLarge ?? MaterialSpacing.extraLarge;

  factory SpacingTokensData.fromMap(Map<String, dynamic> map) {
    double? d(String key) => (map[key] as num?)?.toDouble();

    return SpacingTokensData(
      extraSmall: d('extraSmall'),
      small: d('small'),
      medium: d('medium'),
      large: d('large'),
      extraLarge: d('extraLarge'),
    );
  }

  final double none;
  final double extraSmall;
  final double small;
  final double medium;
  final double large;
  final double extraLarge;

  double custom(double size) => size;

  @override
  List<Object?> get props => [
    none,
    extraSmall,
    small,
    medium,
    large,
    extraLarge,
  ];

  @override
  String toString() =>
      '''
SpacingTokens(
  none: $none,
  extraSmall: $extraSmall,
  small: $small,
  medium: $medium,
  large: $large,
  extraLarge: $extraLarge,
)
''';
}
