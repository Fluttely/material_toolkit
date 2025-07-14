/// Core design token definitions for the Material Toolkit package.
library;

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit/src/base/resolvers/elevation_resolver.dart';

part 'tokens/animation/motion_tokens_data.dart';
part 'tokens/core/material_extended_values.dart';
part 'tokens/core/material_values.dart';
part 'tokens/geometry/border_width_tokens_data.dart';
part 'tokens/geometry/breakpoint_tokens_data.dart';
part 'tokens/geometry/elevation_tokens_data.dart';
part 'tokens/geometry/icon_size_tokens_data.dart';
part 'tokens/geometry/layout_grid_tokens_data.dart';
part 'tokens/geometry/radius_tokens_data.dart';
part 'tokens/geometry/spacing_tokens_data.dart';
part 'tokens/painting/box_shadows_tokens_data.dart';
part 'tokens/painting/opacity_tokens.dart';
part 'tokens/painting/text_shadow_tokens.dart';
part 'tokens/painting/z_index_tokens.dart';

/// An extension on [BuildContext] to easily access the [DesignTokens].
extension DesignTokensContextExtension on BuildContext {
  /// Returns the [DesignTokens] from the nearest [Theme].
  DesignTokens get tokens {
    final tokens = Theme.of(this).extension<DesignTokens>();
    assert(tokens != null, 'DesignTokens not found in Theme extensions');
    return tokens!;
  }
}

/// An extension on [ThemeData] to easily access the [DesignTokens].
extension DesignTokensThemeExtension on ThemeData {
  /// Returns the [DesignTokens] from the theme extensions.
  DesignTokens get tokens {
    final tokens = extension<DesignTokens>();
    assert(tokens != null, 'DesignTokens not found in Theme extensions');
    return tokens!;
  }
}

/// An [InheritedWidget] that provides [DesignTokens] to its descendants.
class DesignProvider extends InheritedWidget {
  /// Creates a [DesignProvider].
  const DesignProvider({
    required super.child,
    required this.tokens,
    super.key,
  });

  /// The [DesignTokens] provided by this widget.
  final DesignTokens tokens;

  /// Returns the [DesignTokens] from the nearest [DesignProvider] ancestor.
  static DesignTokens of(BuildContext context) {
    final tokens = context
        .dependOnInheritedWidgetOfExactType<DesignProvider>()
        ?.tokens;

    assert(tokens != null, 'No DesignTokens found in context');

    return tokens!;
  }

  /// Returns the [DesignTokens] from the nearest [DesignProvider] ancestor,
  /// or null if not found.
  static DesignTokens? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DesignProvider>()?.tokens;
  }

  @override
  bool updateShouldNotify(DesignProvider oldWidget) =>
      tokens != oldWidget.tokens;
}

/// A [ThemeExtension] that holds all the design tokens for the application.
///
/// This class encapsulates the design system values, such as colors, spacing,
/// typography, and more. It allows for a consistent and centralized way to
/// manage the visual appearance of the application.
class DesignTokens extends ThemeExtension<DesignTokens> {
  /// Creates a new instance of [DesignTokens].
  DesignTokens({
    required this.shadowColor,
    // this.boxShadows = const BoxShadowTokensData(),
    this.borderWidths = const BorderWidthTokensData(),
    this.breakpoints = const BreakpointTokensData(),
    this.motions = const MotionTokensData(),
    this.elevations = const ElevationTokensData(),
    this.formFactor = FormFactor.medium,
    this.iconSizes = const IconSizeTokensData(),
    this.layoutGrid = const LayoutGridTokensData(),
    this.opacities = const OpacityTokensData(),
    this.radii = const RadiusTokensData(),
    this.spacings = const SpacingTokensData(),
    this.textShadows = const TextShadowTokensData(),
    this.zIndexes = const ZIndexTokensData(),
  }) : googleFonts = const GoogleFontsResolver();

  /// Creates a [DesignTokens] instance with Material Design defaults.
  ///
  /// An optional [overrides] map can be provided to customize the default
  /// token values.
  factory DesignTokens.material({Map<String, dynamic>? overrides}) {
    var tokens = DesignTokens(
      shadowColor: Colors.black,
    ); // TODO(Kevin): remove this static Colors.black value
    if (overrides != null) {
      tokens = tokens.copyWith(
        // shadowColor: overrides['shadowColor'] != null // TODO(Kevin):
        //     ? Colors.fromMap(
        //         overrides['shadowColor'] as Map<String, dynamic>,
        //       )
        //     : null,
        // boxShadows: overrides['boxShadows'] != null
        //     ? BoxShadowTokensData.fromMap(
        //         overrides['boxShadows'] as Map<String, dynamic>,
        //       )
        //     : null,
        breakpoints: overrides['breakpoints'] != null
            ? BreakpointTokensData.fromMap(
                overrides['breakpoints'] as Map<String, dynamic>,
              )
            : null,
        motions: overrides['motions'] != null
            ? MotionTokensData.fromMap(
                overrides['motions'] as Map<String, dynamic>,
              )
            : null,
        elevations: overrides['elevations'] != null
            ? ElevationTokensData.fromMap(
                overrides['elevations'] as Map<String, dynamic>,
              )
            : null,
        iconSizes: overrides['iconSizes'] != null
            ? IconSizeTokensData.fromMap(
                overrides['iconSizes'] as Map<String, dynamic>,
              )
            : null,
        radii: overrides['radii'] != null
            ? RadiusTokensData.fromMap(
                overrides['radii'] as Map<String, dynamic>,
              )
            : null,
        spacings: overrides['spacings'] != null
            ? SpacingTokensData.fromMap(
                overrides['spacings'] as Map<String, dynamic>,
              )
            : null,
        textShadows: overrides['textShadows'] != null
            ? TextShadowTokensData.fromMap(
                overrides['textShadows'] as Map<String, dynamic>,
              )
            : null,
      );
    }
    return tokens;
  }

  /// Creates a [DesignTokens] instance from a map.
  factory DesignTokens.fromMap(Map<String, dynamic> map) {
    return DesignTokens.material(overrides: map);
  }

  /// Creates a [DesignTokens] instance from a JSON string.
  factory DesignTokens.fromJson(String json) {
    return DesignTokens.fromMap(jsonDecode(json) as Map<String, dynamic>);
  }

  /// The color used for shadows.
  final Color shadowColor;

  // final BoxShadowTokensData boxShadows;

  /// Defines the border widths used throughout the application.
  final BorderWidthTokensData borderWidths;

  /// Defines the breakpoints for responsive layouts.
  final BreakpointTokensData breakpoints;

  /// Defines the motion and animation tokens.
  final MotionTokensData motions;

  /// Defines the elevation levels and their corresponding shadows.
  final ElevationTokensData elevations;

  /// The current form factor of the device.
  final FormFactor formFactor;

  /// Defines the sizes for icons.
  final IconSizeTokensData iconSizes;

  /// Defines the layout grid configuration.
  final LayoutGridTokensData layoutGrid;

  /// Defines the opacity levels.
  final OpacityTokensData opacities;

  /// Defines the corner radii.
  final RadiusTokensData radii;

  /// Defines the spacing values.
  final SpacingTokensData spacings;

  /// Defines the text shadow styles.
  final TextShadowTokensData textShadows;

  /// Defines the z-index values for stacking elements.
  final ZIndexTokensData zIndexes;

  /// A resolver for Google Fonts.
  final GoogleFontsResolver googleFonts;

  /// A resolver for creating gaps and spacing.
  late final gap = GapResolver(spacings);

  /// A resolver for creating [EdgeInsets].
  late final edgeInsets = EdgeInsetsResolver(spacings);

  /// A resolver for creating padding [EdgeInsets].
  late final padding = PaddingResolver(edgeInsets);

  /// A resolver for creating [Radius] objects.
  late final radius = RadiusResolver(radii);

  /// A resolver for creating [BorderRadius] objects.
  late final borderRadius = BorderRadiusResolver(radii);

  /// A resolver for creating shape borders.
  late final shape = ShapeResolver(radii);

  /// A resolver for creating input borders.
  late final inputBorder = InputBorderResolver(radii);

  /// A resolver for creating elevation effects.
  late final elevation = ElevationResolver(
    shadowColor: shadowColor,
    elevations: elevations,
  );

  @override
  ThemeExtension<DesignTokens> lerp(
    ThemeExtension<DesignTokens>? other,
    double t,
  ) {
    if (other is! DesignTokens) {
      return this;
    } else {
      return DesignTokens(
        shadowColor: shadowColor,
        // boxShadows: boxShadows,
        breakpoints: breakpoints,
        motions: motions,
        elevations: elevations,
        formFactor: formFactor,
        iconSizes: iconSizes,
        radii: radii,
        spacings: spacings,
        textShadows: textShadows,
      );
    }
  }

  @override
  DesignTokens copyWith({
    Color? shadowColor,
    // BoxShadowTokensData? boxShadows,
    BreakpointTokensData? breakpoints,
    MotionTokensData? motions,
    ElevationTokensData? elevations,
    FormFactor? formFactor,
    IconSizeTokensData? iconSizes,
    RadiusTokensData? radii,
    SpacingTokensData? spacings,
    TextShadowTokensData? textShadows,
  }) {
    return DesignTokens(
      shadowColor: shadowColor ?? this.shadowColor,
      // boxShadows: boxShadows ?? this.boxShadows,
      breakpoints: breakpoints ?? this.breakpoints,
      motions: motions ?? this.motions,
      elevations: elevations ?? this.elevations,
      formFactor: formFactor ?? this.formFactor,
      iconSizes: iconSizes ?? this.iconSizes,
      radii: radii ?? this.radii,
      spacings: spacings ?? this.spacings,
      textShadows: textShadows ?? this.textShadows,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DesignTokens &&
          // boxShadows == other.boxShadows &&
          breakpoints == other.breakpoints &&
          motions == other.motions &&
          elevations == other.elevations &&
          formFactor == other.formFactor &&
          iconSizes == other.iconSizes &&
          radii == other.radii &&
          spacings == other.spacings &&
          textShadows == other.textShadows &&
          gap == other.gap &&
          edgeInsets == other.edgeInsets &&
          padding == other.padding &&
          radius == other.radius &&
          borderRadius == other.borderRadius &&
          shape == other.shape &&
          inputBorder == other.inputBorder &&
          googleFonts == other.googleFonts;

  @override
  int get hashCode =>
      shadowColor.hashCode ^
      // boxShadows.hashCode ^
      breakpoints.hashCode ^
      motions.hashCode ^
      elevations.hashCode ^
      formFactor.hashCode ^
      iconSizes.hashCode ^
      radii.hashCode ^
      spacings.hashCode ^
      textShadows.hashCode ^
      gap.hashCode ^
      edgeInsets.hashCode ^
      padding.hashCode ^
      radius.hashCode ^
      borderRadius.hashCode ^
      shape.hashCode ^
      inputBorder.hashCode ^
      googleFonts.hashCode;

  @override
  String toString() =>
      '''
    DesignTokensTokens(
      shadowColor: $shadowColor,
      breakpoints: $breakpoints,
      motions: $motions,
      elevations: $elevations,
      formFactor: $formFactor,
      iconSizes: $iconSizes,
      radii: $radii,
      spacings: $spacings,
      textShadows: $textShadows,
      gaps: $gap,
      edgeInsets: $edgeInsets,
      padding: $padding,
      radius: $radius,
      borderRadius: $borderRadius,
      shape: $shape,
      inputBorder: $inputBorder,
      googleFonts: $googleFonts,
    )
  ''';
  // boxShadows: $boxShadows,
}
