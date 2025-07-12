/// Unit tests covering the various token data classes.
///
/// These tests validate default values and utility conversions
/// for spacing, radii, breakpoints and other design primitives.
library;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  // Validates the default spacing values and their conversion to
  // standard sizes.
  group('XSpacingsData defaults', () {
    const tokens = SpacingTokens();

    test('values are correct', () {
      expect(tokens.none, MaterialDimensions.zero);
      expect(tokens.extraSmall, MaterialDimensions.x4);
      expect(tokens.small, MaterialDimensions.x8);
      expect(tokens.medium, MaterialDimensions.x16);
      expect(tokens.large, MaterialDimensions.x24);
      expect(tokens.extraLarge, MaterialDimensions.x32);
    });
  });

  // Checks the default radius presets and the behavior of copyWith.
  group('XRadiiData', () {
    const tokens = RadiusTokens();

    test('default values', () {
      expect(tokens.none, MaterialDimensions.zero);
      expect(tokens.extraSmall, MaterialDimensions.x4);
      expect(tokens.small, MaterialDimensions.x8);
      expect(tokens.semiSmall, MaterialDimensions.x12);
      expect(tokens.medium, MaterialDimensions.x16);
      expect(tokens.semiLarge, MaterialDimensions.x20);
      expect(tokens.large, MaterialDimensions.x24);
      expect(tokens.extraLarge, MaterialDimensions.x32);
      expect(tokens.superLarge, MaterialDimensions.x48);
    });

    test('copyWith overrides values', () {
      final custom = tokens.copyWith(extraSmall: 1, large: 2);
      expect(custom.extraSmall, 1);
      expect(custom.small, tokens.small);
      expect(custom.large, 2);
      expect(custom.superLarge, tokens.superLarge);
    });
  });

  // Ensures that only the selected fields are overridden when calling
  // [DesignTokens.copyWith].
  group('DesignTokens.copyWith', () {
    test('overrides selected fields', () {
      final tokens = DesignTokens();
      const customSpaces = SpacingTokens(extraSmall: 99);
      final copy = tokens.copyWith(spacings: customSpaces);

      expect(copy.spacings, customSpaces);
      expect(copy.radii, tokens.radii);
    });
  });

  // Validates all other token defaults such as icon sizes, breakpoints
  // and durations.
  group('Other data defaults', () {
    test('XIconSizesData', () {
      const tokens = IconSizeTokens();
      expect(tokens.small, MaterialDimensions.x16);
      expect(tokens.medium, MaterialDimensions.x20);
      expect(tokens.standard, MaterialDimensions.x24);
      expect(tokens.large, MaterialDimensions.x32);
      expect(tokens.extraLarge, MaterialDimensions.x48);
      expect(tokens.hero, MaterialDimensions.x64);
      expect(tokens.jumbo, MaterialDimensions.x96);
      expect(tokens.giant, MaterialDimensions.x128);
    });

    test('XBreakpointsData', () {
      const tokens = BreakpointTokens();
      expect(tokens.mobile.minWidth, MaterialDimensions.zero);
      expect(tokens.mobile.maxWidth, ExtendedValues.x599);
      expect(tokens.tablet.minWidth, ExtendedValues.x600);
      expect(tokens.tablet.maxWidth, ExtendedValues.x1023);
      expect(tokens.desktop.minWidth, MaterialDimensions.x1024);
      expect(tokens.desktop.maxWidth, ExtendedValues.x1439);
      expect(tokens.infinity.minWidth, ExtendedValues.x1440);
      expect(tokens.infinity.maxWidth, double.infinity);
    });

    test('XElevationsData', () {
      const tokens = ElevationTokens();
      expect(tokens.none, ElevationTokens.level0);
      expect(tokens.small, ElevationTokens.level1);
      expect(tokens.medium, ElevationTokens.level2);
      expect(tokens.large, ElevationTokens.level3);
      expect(tokens.extraLarge, ElevationTokens.level4);
      expect(tokens.maximum, ElevationTokens.level5);
      expect(ElevationTokens.level0, MaterialDimensions.zero);
      expect(ElevationTokens.level1, ExtendedValues.x1);
      expect(ElevationTokens.level2, ExtendedValues.x3);
      expect(ElevationTokens.level3, ExtendedValues.x6);
      expect(ElevationTokens.level4, MaterialDimensions.x8);
      expect(ElevationTokens.level5, MaterialDimensions.x12);
    });

    test('XDurationsData', () {
      const tokens = DurationTokens();
      expect(tokens.areAnimationEnabled, isTrue);
      expect(
        tokens.slow,
        const Duration(milliseconds: MaterialTimings.x500),
      );
      expect(
        tokens.regular,
        const Duration(milliseconds: MaterialTimings.x300),
      );
      expect(
        tokens.quick,
        const Duration(milliseconds: MaterialTimings.x100),
      );
    });

    test('XBoxShadowsData', () {
      const tokens = BoxShadowTokens();
      expect(
        tokens.small,
        const BoxShadow(
          blurRadius: ExtendedValues.x2,
          spreadRadius: ExtendedValues.x1,
          color: Color(0x44000000),
        ),
      );
      expect(
        tokens.medium,
        const BoxShadow(
          blurRadius: MaterialDimensions.x4,
          spreadRadius: ExtendedValues.x1,
          color: Color(0x44000000),
        ),
      );
      expect(
        tokens.large,
        const BoxShadow(
          blurRadius: MaterialDimensions.x8,
          spreadRadius: ExtendedValues.x2,
          color: Color(0x44000000),
        ),
      );
    });

    test('XTextShadowsData', () {
      const tokens = TextShadowTokens();
      expect(
        tokens.small,
        const Shadow(
          blurRadius: ExtendedValues.x2,
          color: Color(0x44000000),
        ),
      );
      expect(
        tokens.medium,
        const Shadow(
          blurRadius: MaterialDimensions.x4,
          color: Color(0x44000000),
        ),
      );
      expect(
        tokens.large,
        const Shadow(
          blurRadius: MaterialDimensions.x8,
          color: Color(0x44000000),
        ),
      );
    });
  });

  // Tests that spacings can be converted to [EdgeInsets] and wrapped
  // with [Padding] widgets using the resolvers.
  group('EdgeInsets and Padding', () {
    const spacings = SpacingTokens();
    const edgeInsets = EdgeInsetsResolver(spacings);
    const padding = PaddingResolver(edgeInsets);

    test('EdgeInsets conversions', () {
      expect(edgeInsets.none, EdgeInsets.zero);
      expect(
        edgeInsets.all(MaterialSpacings.small),
        EdgeInsets.all(spacings.small),
      );
      expect(
        edgeInsets.symmetric(
          vertical: MaterialSpacings.extraSmall,
          horizontal: MaterialSpacings.large,
        ),
        EdgeInsets.symmetric(
          vertical: spacings.extraSmall,
          horizontal: spacings.large,
        ),
      );
      expect(
        edgeInsets.only(left: MaterialSpacings.medium),
        EdgeInsets.only(left: spacings.medium),
      );
    });

    test('Padding conversions', () {
      final widget = padding.all(
        MaterialSpacings.medium,
        child: const Text('data'),
      );
      expect(widget.padding, EdgeInsets.all(spacings.medium));
      expect(widget.child, const Text('data'));
    });
  });
}
