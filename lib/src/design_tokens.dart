/// Core design token definitions for the Material Toolkit package.
library;

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';
import 'package:material_toolkit/src/resolvers/elevation_resolver.dart';

part 'tokens/animation/motion_tokens_data.dart';
part 'tokens/core/material_extended_values.dart';
part 'tokens/core/material_values.dart';
part 'tokens/geometry/border_radius_tokens.dart';
part 'tokens/geometry/border_width_tokens_data.dart';
part 'tokens/geometry/breakpoint_tokens_data.dart';
part 'tokens/geometry/elevation_tokens_data.dart';
part 'tokens/geometry/icon_size_tokens_data.dart';
part 'tokens/geometry/layout_grid_tokens_data.dart';
part 'tokens/geometry/radius_tokens_data.dart';
part 'tokens/geometry/shape_tokens.dart';
part 'tokens/geometry/spacing_tokens_data.dart';
part 'tokens/painting/box_shadows_tokens_data.dart';
part 'tokens/painting/opacity_tokens.dart';
part 'tokens/painting/text_shadow_tokens.dart';
part 'tokens/painting/z_index_tokens.dart';
part 'tokens/typography/text_style_tokens.dart';

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
    this.textStyles = const TextStyleTokensData(),
    this.borderRadii = const BorderRadiusTokensData(),
    this.shapes = const ShapeTokensData(),
    this.clipBehavior = Clip.none,
    this.borderWidths = const BorderWidthTokensData(),
    this.breakpoints = const BreakpointTokensData(),
    this.motions = const MotionTokensData(),
    this.elevations = const ElevationTokensData(),
    this.formFactor = MaterialFormFactor.medium,
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
    ); // TODO: remove this static Colors.black value
    if (overrides != null) {
      tokens = tokens.copyWith(
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

  final TextStyleTokensData textStyles;
  final BorderRadiusTokensData borderRadii;
  final ShapeTokensData shapes;
  final Clip clipBehavior;

  /// Defines the border widths used throughout the application.
  final BorderWidthTokensData borderWidths;

  /// Defines the breakpoints for responsive layouts.
  final BreakpointTokensData breakpoints;

  /// Defines the motion and animation tokens.
  final MotionTokensData motions;

  /// Defines the elevation levels and their corresponding shadows.
  final ElevationTokensData elevations;

  /// The current form factor of the device.
  final MaterialFormFactor formFactor;

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
  late final shapeResolver = ShapeResolver(radii);

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
        shadowColor: Color.lerp(shadowColor, other.shadowColor, t)!,
        textStyles: textStyles,
        borderRadii: borderRadii,
        shapes: shapes,
        clipBehavior: other.clipBehavior,
        borderWidths: borderWidths,
        breakpoints: breakpoints,
        motions: motions,
        elevations: elevations,
        formFactor: formFactor,
        iconSizes: iconSizes,
        layoutGrid: layoutGrid,
        opacities: opacities,
        radii: radii,
        spacings: spacings,
        textShadows: textShadows,
        zIndexes: zIndexes,
      );
    }
  }

  @override
  DesignTokens copyWith({
    Color? shadowColor,
    TextStyleTokensData? textStyles,
    BorderRadiusTokensData? borderRadii,
    ShapeTokensData? shapes,
    Clip? clipBehavior,
    BorderWidthTokensData? borderWidths,
    BreakpointTokensData? breakpoints,
    MotionTokensData? motions,
    ElevationTokensData? elevations,
    MaterialFormFactor? formFactor,
    IconSizeTokensData? iconSizes,
    LayoutGridTokensData? layoutGrid,
    OpacityTokensData? opacities,
    RadiusTokensData? radii,
    SpacingTokensData? spacings,
    TextShadowTokensData? textShadows,
    ZIndexTokensData? zIndexes,
  }) {
    return DesignTokens(
      shadowColor: shadowColor ?? this.shadowColor,
      textStyles: textStyles ?? this.textStyles,
      borderRadii: borderRadii ?? this.borderRadii,
      shapes: shapes ?? this.shapes,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      borderWidths: borderWidths ?? this.borderWidths,
      breakpoints: breakpoints ?? this.breakpoints,
      motions: motions ?? this.motions,
      elevations: elevations ?? this.elevations,
      formFactor: formFactor ?? this.formFactor,
      iconSizes: iconSizes ?? this.iconSizes,
      layoutGrid: layoutGrid ?? this.layoutGrid,
      opacities: opacities ?? this.opacities,
      radii: radii ?? this.radii,
      spacings: spacings ?? this.spacings,
      textShadows: textShadows ?? this.textShadows,
      zIndexes: zIndexes ?? this.zIndexes,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DesignTokens &&
          runtimeType == other.runtimeType &&
          shadowColor == other.shadowColor &&
          textStyles == other.textStyles &&
          borderRadii == other.borderRadii &&
          shapes == other.shapes &&
          clipBehavior == other.clipBehavior &&
          borderWidths == other.borderWidths &&
          breakpoints == other.breakpoints &&
          motions == other.motions &&
          elevations == other.elevations &&
          formFactor == other.formFactor &&
          iconSizes == other.iconSizes &&
          layoutGrid == other.layoutGrid &&
          opacities == other.opacities &&
          radii == other.radii &&
          spacings == other.spacings &&
          textShadows == other.textShadows &&
          zIndexes == other.zIndexes;

  @override
  int get hashCode =>
      shadowColor.hashCode ^
      textStyles.hashCode ^
      borderRadii.hashCode ^
      shapes.hashCode ^
      clipBehavior.hashCode ^
      borderWidths.hashCode ^
      breakpoints.hashCode ^
      motions.hashCode ^
      elevations.hashCode ^
      formFactor.hashCode ^
      iconSizes.hashCode ^
      layoutGrid.hashCode ^
      opacities.hashCode ^
      radii.hashCode ^
      spacings.hashCode ^
      textShadows.hashCode ^
      zIndexes.hashCode;

  @override
  String toString() =>
      '''
    DesignTokens(
      shadowColor: $shadowColor,
      textStyles: $textStyles,
      borderRadii: $borderRadii,
      shapes: $shapes,
      clipBehavior: $clipBehavior,
      borderWidths: $borderWidths,
      breakpoints: $breakpoints,
      motions: $motions,
      elevations: $elevations,
      formFactor: $formFactor,
      iconSizes: $iconSizes,
      layoutGrid: $layoutGrid,
      opacities: $opacities,
      radii: $radii,
      spacings: $spacings,
      textShadows: $textShadows,
      zIndexes: $zIndexes,
      googleFonts: $googleFonts,
      gap: $gap,
      edgeInsets: $edgeInsets,
      padding: $padding,
      radius: $radius,
      borderRadiusResolver: $borderRadius,
      shapeResolver: $shapeResolver,
      inputBorder: $inputBorder,
      elevation: $elevation,
    )
  ''';
}
