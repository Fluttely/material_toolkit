part of '../../design_tokens.dart';

/// Defines radius values and helpers to resolve them.
enum RadiusToken {
  none,
  extraSmall,
  small,
  semiSmall,
  medium,
  semiLarge,
  large,
  extraLarge,
  superLarge;

  double toDouble(RadiusTokensData tokens) {
    return switch (this) {
      none => tokens.none,
      extraSmall => tokens.extraSmall,
      small => tokens.small,
      semiSmall => tokens.semiSmall,
      medium => tokens.medium,
      semiLarge => tokens.semiLarge,
      large => tokens.large,
      extraLarge => tokens.extraLarge,
      superLarge => tokens.superLarge,
    };
  }
}

/// Radius presets used to build shapes and borders.
class RadiusTokensData extends Equatable {
  const RadiusTokensData({
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
    double? superLarge,
  }) : none = MaterialRadius.none,
       extraSmall = extraSmall ?? MaterialRadius.extraSmall,
       small = small ?? MaterialRadius.small,
       semiSmall = semiSmall ?? MaterialRadius.semiSmall,
       medium = medium ?? MaterialRadius.medium,
       semiLarge = semiLarge ?? MaterialRadius.semiLarge,
       large = large ?? MaterialRadius.large,
       extraLarge = extraLarge ?? MaterialRadius.extraLarge,
       superLarge = superLarge ?? MaterialRadius.superLarge;

  factory RadiusTokensData.fromMap(Map<String, dynamic> map) {
    double? parse(String key) => (map[key] as num?)?.toDouble();

    return RadiusTokensData(
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

  final double none;
  final double extraSmall;
  final double small;
  final double semiSmall;
  final double medium;
  final double semiLarge;
  final double large;
  final double extraLarge;
  final double superLarge;

  RadiusTokensData copyWith({
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
    double? superLarge,
  }) {
    return RadiusTokensData(
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
  String toString() =>
      '''
RadiusTokens(
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
