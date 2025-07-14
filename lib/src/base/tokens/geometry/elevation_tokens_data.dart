part of '../../design_tokens.dart';

/// Elevation values used for Material surfaces following Material Design 3 specification.
///
/// Elevation is the relative distance between two surfaces along the z-axis.
/// The Material Design 3 elevation system uses 6 levels (0-5) with specific dp values.
///
/// Reference: https://m3.material.io/styles/elevation/tokens

/// Semantic elevation levels for Material Design 3.
abstract final class MaterialElevation {
  /// No elevation (0dp) - Used for surfaces at the base level
  static const double level0 = 0;

  /// Level 1 elevation (1dp) - Used for raised components like filled buttons
  static const double level1 = 1;

  /// Level 2 elevation (3dp) - Used for elevated components like cards
  static const double level2 = 3;

  /// Level 3 elevation (6dp) - Used for floating components like FABs
  static const double level3 = 6;

  /// Level 4 elevation (8dp) - Used for navigation drawers
  static const double level4 = 8;

  /// Level 5 elevation (12dp) - Used for modal components like dialogs
  static const double level5 = 12;

  /// Returns the corresponding list of [BoxShadow]s for the elevation level,
  /// following the official Material Design 3 specification.
  ///
  /// This is the most robust and recommended way to apply elevation, as it gives
  /// precise control over the shadows. The `shadowColor` should typically be
  /// provided from your theme's `ColorScheme`.
  List<BoxShadow> toBoxShadow() {
    switch (this) {
      case MaterialElevation.level0:
        return ElevationTokensData.toBoxShadow(MaterialElevation.level0);
      case MaterialElevation.level1:
        return ElevationTokensData.toBoxShadow(MaterialElevation.level1);
      case MaterialElevation.level2:
        return ElevationTokensData.toBoxShadow(MaterialElevation.level2);
      case MaterialElevation.level3:
        return ElevationTokensData.toBoxShadow(MaterialElevation.level3);
      case MaterialElevation.level4:
        return ElevationTokensData.toBoxShadow(MaterialElevation.level4);
      case MaterialElevation.level5:
        return ElevationTokensData.toBoxShadow(MaterialElevation.level5);
      default:
        return [];
    }
  }
}

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

  /// Level 4: 8dp. Used for components that need to stand out significantly, like navigation drawers.
  extraLarge,

  /// Level 5: 12dp. Used for modal components that overlay all other content, like dialogs.
  maximum;

  /// Converts the elevation enum to its corresponding dp value.
  ///
  /// This is useful for widgets that use the `elevation` property (e.g., `Card`, `AppBar`),
  /// which is an abstraction over the actual shadow implementation.
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

  /// Retorna a lista de BoxShadow correspondente a um token de elevação.
  /// Esta é a forma mais robusta e recomendada de aplicar elevação.
  List<BoxShadow> toBoxShadow(
    ElevationTokensData elevations, {
    Color shadowColor = Colors.black,
  }) {
    final value = toDouble(elevations);
    return ElevationTokensData.toBoxShadow(value, shadowColor: shadowColor);
  }
}

/// A data class holding the customizable `dp` values for each elevation level.
class ElevationTokensData extends Equatable {
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

  /// Standard Material Design 3 elevation values.
  static const ElevationTokensData defaults = ElevationTokensData();

  final double none;
  final double small;
  final double medium;
  final double large;
  final double extraLarge;
  final double maximum;

  /// Generates a Material Design-like shadow list algorithmically for any given elevation `value`.
  ///
  /// This method uses linear interpolation to create plausible shadows that scale
  /// smoothly with the elevation `value`.
  ///
  /// NOTE: This is an approximation of the Material Design system, not a strict
  /// implementation of its discrete tokens. It provides flexibility at the cost
  /// of deviating from the official, hand-tuned values.
  ///
  /// - `value`: The desired elevation in logical pixels (dp).
  /// - `shadowColor`: The base color for the shadows, typically from the theme.
  static List<BoxShadow> toBoxShadow(
    double value, {
    Color shadowColor = Colors.black,
  }) {
    if (value <= 0) {
      return [];
    }

    // Helper function for linear interpolation.
    double lerp(double a, double b, double t) {
      return a + (b - a) * t;
    }

    // Normalize the elevation value to a 0.0-1.0 range.
    // We'll cap the "max" interpolation effect at 24dp, a common high elevation value.
    final progress = (value / 24.0).clamp(0.0, 1.0);

    // --- Define the two shadows (Umbra and Penumbra) ---

    // 1. Umbra (the darker, sharper shadow directly under the element)
    final umbra = BoxShadow(
      color: shadowColor.withOpacity(lerp(0.1, 0.2, progress)),
      offset: Offset(
        0,
        lerp(0.5, 10, progress),
      ), // y-offset grows significantly
      blurRadius: lerp(1, 12, progress), // blur grows
    );

    // 2. Penumbra (the softer, wider, more ambient shadow)
    final penumbra = BoxShadow(
      color: shadowColor.withOpacity(lerp(0.08, 0.15, progress)),
      offset: Offset(0, lerp(1, 20, progress)), // y-offset grows even more
      blurRadius: lerp(2, 28, progress), // blur is much larger
      spreadRadius: lerp(0, 4, progress), // spread appears at higher elevations
    );

    return [umbra, penumbra];
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
  String toString() =>
      '''
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
