part of '../../design_tokens.dart';

/// Semantic icon sizes for different use cases in Material Design 3.
enum IconSizeToken {
  /// Small icons (16dp) - Used for dense layouts, small buttons, inline icons
  small,

  /// Medium icons (20dp) - Used for secondary actions, supporting content
  medium,

  /// Standard icons (24dp) - Default size for most UI elements
  standard,

  /// Large icons (32dp) - Used for prominent actions, navigation elements
  large,

  /// Extra large icons (48dp) - Used for app bars, major actions
  extraLarge,

  /// Hero icons (64dp) - Used for prominent displays, headers
  hero,

  /// Jumbo icons (96dp) - Used for onboarding, empty states
  jumbo,

  /// Giant icons (128dp) - Used for splash screens, major illustrations
  giant;

  /// Converts the icon size enum to its corresponding dp value.
  double toDouble(IconSizeTokensData iconSizes) {
    return switch (this) {
      small => iconSizes.small,
      medium => iconSizes.medium,
      standard => iconSizes.standard,
      large => iconSizes.large,
      extraLarge => iconSizes.extraLarge,
      hero => iconSizes.hero,
      jumbo => iconSizes.jumbo,
      giant => iconSizes.giant,
    };
  }
}

/// Collection of icon size constants following Material Design 3 specifications.
///
/// Material Design 3 icon sizing follows these guidelines:
/// - Small (16dp): Dense UI, small buttons, inline content
/// - Medium (20dp): Secondary actions, supporting elements
/// - Standard (24dp): Default size for most icons
/// - Large (32dp): Prominent actions, navigation
/// - Extra Large (48dp): App bars, major CTAs
/// - Hero (64dp): Headers, prominent displays
/// - Jumbo (96dp): Onboarding, empty states
/// - Giant (128dp): Splash screens, major illustrations
class IconSizeTokensData extends Equatable {
  const IconSizeTokensData({
    double? small,
    double? medium,
    double? standard,
    double? large,
    double? extraLarge,
    double? hero,
    double? jumbo,
    double? giant,
  }) : small = small ?? MaterialIconSize.small,
       medium = medium ?? MaterialIconSize.medium,
       standard = standard ?? MaterialIconSize.standard,
       large = large ?? MaterialIconSize.large,
       extraLarge = extraLarge ?? MaterialIconSize.extraLarge,
       hero = hero ?? MaterialIconSize.hero,
       jumbo = jumbo ?? MaterialIconSize.jumbo,
       giant = giant ?? MaterialIconSize.giant;

  /// Creates icon size tokens from a map configuration.
  factory IconSizeTokensData.fromMap(Map<String, dynamic> map) {
    double? d(String key) => (map[key] as num?)?.toDouble();

    return IconSizeTokensData(
      small: d('small'),
      medium: d('medium'),
      standard: d('standard'),
      large: d('large'),
      extraLarge: d('extraLarge'),
      hero: d('hero'),
      jumbo: d('jumbo'),
      giant: d('giant'),
    );
  }

  IconSizeTokensData copyWith({
    double? small,
    double? medium,
    double? standard,
    double? large,
    double? extraLarge,
    double? hero,
    double? jumbo,
    double? giant,
  }) {
    return IconSizeTokensData(
      small: small ?? this.small,
      medium: medium ?? this.medium,
      standard: standard ?? this.standard,
      large: large ?? this.large,
      extraLarge: extraLarge ?? this.extraLarge,
      hero: hero ?? this.hero,
      jumbo: jumbo ?? this.jumbo,
      giant: giant ?? this.giant,
    );
  }

  /// Standard Material Design 3 icon size values.
  static const IconSizeTokensData defaults = IconSizeTokensData();

  /// Small icons (16dp) - Used for dense layouts, small buttons, inline icons
  /// Usage: Chips, dense lists, small action buttons, inline content
  final double small;

  /// Medium icons (20dp) - Used for secondary actions, supporting content
  /// Usage: Secondary buttons, menu items, supporting actions
  final double medium;

  /// Standard icons (24dp) - Default size for most UI elements
  /// Usage: Default buttons, toolbars, navigation, primary actions
  final double standard;

  /// Large icons (32dp) - Used for prominent actions, navigation elements
  /// Usage: Tab bars, bottom navigation, prominent buttons
  final double large;

  /// Extra large icons (48dp) - Used for app bars, major actions
  /// Usage: App bars, floating action buttons, major CTAs
  final double extraLarge;

  /// Hero icons (64dp) - Used for prominent displays, headers
  /// Usage: Headers, feature highlights, prominent displays
  final double hero;

  /// Jumbo icons (96dp) - Used for onboarding, empty states
  /// Usage: Onboarding screens, empty states, feature illustrations
  final double jumbo;

  /// Giant icons (128dp) - Used for splash screens, major illustrations
  /// Usage: Splash screens, major illustrations, brand elements
  final double giant;

  /// Returns the icon size value for a given semantic size.
  double sizeFor(IconSizeToken iconSize) => iconSize.toDouble(this);

  @override
  List<Object?> get props => [
    small,
    medium,
    standard,
    large,
    extraLarge,
    hero,
    jumbo,
    giant,
  ];

  @override
  String toString() =>
      '''
IconSizeTokens(
  small: ${small}dp,
  medium: ${medium}dp,
  standard: ${standard}dp,
  large: ${large}dp,
  extraLarge: ${extraLarge}dp,
  hero: ${hero}dp,
  jumbo: ${jumbo}dp,
  giant: ${giant}dp,
)
''';
}
