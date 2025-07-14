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
part 'tokens/geometry/form_factor.dart';
part 'tokens/geometry/icon_size_tokens_data.dart';
part 'tokens/geometry/layout_grid_tokens_data.dart';
part 'tokens/geometry/redius_tokens_data.dart';
part 'tokens/geometry/spacing_tokens_data.dart';
part 'tokens/painting/box_shadows_tokens_data.dart';
part 'tokens/painting/opacity_tokens.dart';
part 'tokens/painting/text_shadow_tokens.dart';
part 'tokens/painting/z_index_tokens.dart';

extension DesignTokensContextExtension on BuildContext {
  DesignTokens get tokens {
    final tokens = Theme.of(this).extension<DesignTokens>();
    assert(tokens != null, 'DesignTokens not found in Theme extensions');
    return tokens!;
  }
}

extension DesignTokensThemeExtension on ThemeData {
  DesignTokens get tokens {
    final tokens = extension<DesignTokens>();
    assert(tokens != null, 'DesignTokens not found in Theme extensions');
    return tokens!;
  }
}

class DesignProvider extends InheritedWidget {
  const DesignProvider({
    required super.child,
    required this.tokens,
    super.key,
  });

  static DesignTokens of(BuildContext context) {
    final tokens = context
        .dependOnInheritedWidgetOfExactType<DesignProvider>()
        ?.tokens;

    assert(tokens != null, 'No DesignTokens found in context');

    return tokens!;
  }

  static DesignTokens? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DesignProvider>()?.tokens;
  }

  final DesignTokens tokens;

  @override
  bool updateShouldNotify(DesignProvider oldWidget) =>
      tokens != oldWidget.tokens;
}

class DesignTokens extends ThemeExtension<DesignTokens> {
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

  factory DesignTokens.fromMap(Map<String, dynamic> map) {
    return DesignTokens.material(overrides: map);
  }

  factory DesignTokens.fromJson(String json) {
    return DesignTokens.fromMap(jsonDecode(json) as Map<String, dynamic>);
  }

  final Color shadowColor;
  // final BoxShadowTokensData boxShadows;
  final BorderWidthTokensData borderWidths;
  final BreakpointTokensData breakpoints;
  final MotionTokensData motions;
  final ElevationTokensData elevations;
  final FormFactor formFactor;
  final IconSizeTokensData iconSizes;
  final LayoutGridTokensData layoutGrid;
  final OpacityTokensData opacities;
  final RadiusTokensData radii;
  final SpacingTokensData spacings;
  final TextShadowTokensData textShadows;
  final ZIndexTokensData zIndexes;
  final GoogleFontsResolver googleFonts;

  /// Spacings
  late final gap = GapResolver(spacings);
  late final edgeInsets = EdgeInsetsResolver(spacings);
  late final padding = PaddingResolver(edgeInsets);

  /// Radii
  late final radius = RadiusResolver(radii);
  late final borderRadius = BorderRadiusResolver(radii);
  late final shape = ShapeResolver(radii);
  late final inputBorder = InputBorderResolver(radii);

  /// Elevation
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
