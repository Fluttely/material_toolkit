part of '../../design_tokens.dart';

/// Semantic elevation tokens for Material Design 3.
///
/// This enum represents the 6 elevation levels defined in the Material Design 3
/// specification. It acts as a "resolver" to get the corresponding shadow
/// and double values.
///
/// Reference: https://m3.material.io/styles/elevation/tokens
enum ElevationToken {
  /// Level 0: 0dp (no elevation). Used for base-level surfaces.
  none,

  /// Level 1: 1dp. Used for slightly raised components like filled buttons.
  small,

  /// Level 2: 3dp. Used for elevated components like cards.
  medium,

  /// Level 3: 6dp. Used for floating components like FABs and menus.
  large,

  /// Level 4: 8dp. Used for components that need to stand out significantly,
  /// like navigation drawers.
  extraLarge,

  /// Level 5: 12dp. Used for modal components that overlay all other content,
  /// like dialogs.
  maximum;

  /// Converts the elevation enum to its corresponding dp value.
  ///
  /// This is useful for widgets that use the `elevation` property
  /// (e.g., `Card`, `AppBar`), which is an abstraction over the actual
  /// shadow implementation.
  double toDouble(ElevationTokensData elevations) {
    return switch (this) {
      ElevationToken.none => elevations.none,
      ElevationToken.small => elevations.small,
      ElevationToken.medium => elevations.medium,
      ElevationToken.large => elevations.large,
      ElevationToken.extraLarge => elevations.extraLarge,
      ElevationToken.maximum => elevations.maximum,
    };
  }

  /// Returns the list of [BoxShadow] corresponding to an elevation token.
  /// This is the most robust and recommended way to apply elevation.
  List<BoxShadow> toBoxShadow(
    ElevationTokensData elevations, {
    Color shadowColor = Colors.black,
  }) {
    final value = toDouble(elevations);
    return ElevationMapper.toBoxShadow(value, shadowColor: shadowColor);
  }
}

/// A data class holding the customizable `dp` values for each elevation level.
class ElevationTokensData extends Equatable {
  /// Creates a new instance of [ElevationTokensData].
  const ElevationTokensData({
    this.none = 0.0,
    this.small = 1.0,
    this.medium = 3.0,
    this.large = 6.0,
    this.extraLarge = 8.0,
    this.maximum = 12.0,
  });

  /// Creates elevation tokens from a map configuration.
  factory ElevationTokensData.fromMap(Map<String, dynamic> map) {
    double d(String key) => (map[key] as num).toDouble();

    return ElevationTokensData(
      none: d('none'),
      small: d('small'),
      medium: d('medium'),
      large: d('large'),
      extraLarge: d('extraLarge'),
      maximum: d('maximum'),
    );
  }

  /// Standard Material Design 3 elevation values.
  static const ElevationTokensData defaults = ElevationTokensData();

  /// The elevation value for no elevation.
  final double none;

  /// The elevation value for small elevation.
  final double small;

  /// The elevation value for medium elevation.
  final double medium;

  /// The elevation value for large elevation.
  final double large;

  /// The elevation value for extra-large elevation.
  final double extraLarge;

  /// The elevation value for maximum elevation.
  final double maximum;

  /// Creates a copy of this object with the given fields replaced with the
  /// new values.
  ElevationTokensData copyWith({
    double? none,
    double? small,
    double? medium,
    double? large,
    double? extraLarge,
    double? maximum,
  }) {
    return ElevationTokensData(
      none: none ?? this.none,
      small: small ?? this.small,
      medium: medium ?? this.medium,
      large: large ?? this.large,
      extraLarge: extraLarge ?? this.extraLarge,
      maximum: maximum ?? this.maximum,
    );
  }

  @override
  List<Object?> get props => [
        none,
        small,
        medium,
        large,
        extraLarge,
        maximum,
      ];

  @override
  String toString() => '''
ElevationTokens(
  none: ${none}dp,
  small: ${small}dp,
  medium: ${medium}dp,
  large: ${large}dp,
  extraLarge: ${extraLarge}dp,
  maximum: ${maximum}dp,
)
''';
}
