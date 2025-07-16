import 'package:equatable/equatable.dart';
import 'package:material_toolkit/material_toolkit.dart';

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
      none => spacings.none,
      extraSmall => spacings.extraSmall,
      small => spacings.small,
      medium => spacings.medium,
      large => spacings.large,
      extraLarge => spacings.extraLarge,
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
       extraSmall = extraSmall ?? MaterialSpacing.space4,
       small = small ?? MaterialSpacing.space8,
       medium = medium ?? MaterialSpacing.space16,
       large = large ?? MaterialSpacing.space24,
       extraLarge = extraLarge ?? MaterialSpacing.space32;

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
