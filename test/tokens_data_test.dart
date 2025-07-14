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
    const tokens = SpacingTokensData();

    test('values are correct', () {
      expect(tokens.none, MaterialValues.zero);
      expect(tokens.extraSmall, MaterialValues.x4);
      expect(tokens.small, MaterialValues.x8);
      expect(tokens.medium, MaterialValues.x16);
      expect(tokens.large, MaterialValues.x24);
      expect(tokens.extraLarge, MaterialValues.x32);
    });
  });

  // Checks the default radius presets and the behavior of copyWith.
  group('XRadiiData', () {
    const tokens = RadiusTokensData();

    test('default values', () {
      expect(tokens.none, MaterialValues.zero);
      expect(tokens.extraSmall, MaterialValues.x4);
      expect(tokens.small, MaterialValues.x8);
      expect(tokens.semiSmall, MaterialValues.x12);
      expect(tokens.medium, MaterialValues.x16);
      expect(tokens.semiLarge, MaterialValues.x20);
      expect(tokens.large, MaterialValues.x24);
      expect(tokens.extraLarge, MaterialValues.x32);
      expect(tokens.superLarge, MaterialValues.x48);
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
      const customSpaces = SpacingTokensData(extraSmall: 99);
      final copy = tokens.copyWith(spacings: customSpaces);

      expect(copy.spacings, customSpaces);
      expect(copy.radii, tokens.radii);
    });
  });

  // Validates all other token defaults such as icon sizes, breakpoints
  // and durations.
  group('Other data defaults', () {
    test('XIconSizesData', () {
      const tokens = IconSizeTokensData();
      expect(tokens.small, MaterialValues.x16);
      expect(tokens.medium, MaterialValues.x20);
      expect(tokens.standard, MaterialValues.x24);
      expect(tokens.large, MaterialValues.x32);
      expect(tokens.extraLarge, MaterialValues.x48);
      expect(tokens.hero, MaterialValues.x64);
      expect(tokens.jumbo, MaterialValues.x96);
      expect(tokens.giant, MaterialValues.x128);
    });

    test('XBreakpointsData', () {
      const tokens = BreakpointTokensData();
      expect(tokens.mobile.minWidth, MaterialValues.zero);
      expect(tokens.mobile.maxWidth, MaterialExtendedValues.x599);
      expect(tokens.tablet.minWidth, MaterialExtendedValues.x600);
      expect(tokens.tablet.maxWidth, MaterialExtendedValues.x1023);
      expect(tokens.desktop.minWidth, MaterialValues.x1024);
      expect(tokens.desktop.maxWidth, MaterialExtendedValues.x1439);
      expect(tokens.infinity.minWidth, MaterialExtendedValues.x1440);
      expect(tokens.infinity.maxWidth, double.infinity);
    });

    test('XElevationsData', () {
      const tokens = ElevationTokensData();
      expect(tokens.none, ElevationTokensData.level0);
      expect(tokens.small, ElevationTokensData.level1);
      expect(tokens.medium, ElevationTokensData.level2);
      expect(tokens.large, ElevationTokensData.level3);
      expect(tokens.extraLarge, ElevationTokensData.level4);
      expect(tokens.maximum, ElevationTokensData.level5);
      expect(ElevationTokensData.level0, MaterialValues.zero);
      expect(ElevationTokensData.level1, MaterialExtendedValues.x1);
      expect(ElevationTokensData.level2, MaterialExtendedValues.x3);
      expect(ElevationTokensData.level3, MaterialExtendedValues.x6);
      expect(ElevationTokensData.level4, MaterialValues.x8);
      expect(ElevationTokensData.level5, MaterialValues.x12);
    });

    test('XDurationsData', () {
      const tokens = MotionTokensData();
      expect(tokens.areAnimationEnabled, isTrue);
      expect(
        tokens.slow,
        const Duration(milliseconds: MaterialMotion.x500),
      );
      expect(
        tokens.regular,
        const Duration(milliseconds: MaterialMotion.x300),
      );
      expect(
        tokens.quick,
        const Duration(milliseconds: MaterialMotion.x100),
      );
    });

    test('XBoxShadowsData', () {
      const tokens = BoxShadowTokensData();
      expect(
        tokens.small,
        const BoxShadow(
          blurRadius: MaterialExtendedValues.x2,
          spreadRadius: MaterialExtendedValues.x1,
          color: Color(0x44000000),
        ),
      );
      expect(
        tokens.medium,
        const BoxShadow(
          blurRadius: MaterialValues.x4,
          spreadRadius: MaterialExtendedValues.x1,
          color: Color(0x44000000),
        ),
      );
      expect(
        tokens.large,
        const BoxShadow(
          blurRadius: MaterialValues.x8,
          spreadRadius: MaterialExtendedValues.x2,
          color: Color(0x44000000),
        ),
      );
    });

    test('XTextShadowsData', () {
      const tokens = TextShadowTokensData();
      expect(
        tokens.small,
        const Shadow(
          blurRadius: MaterialExtendedValues.x2,
          color: Color(0x44000000),
        ),
      );
      expect(
        tokens.medium,
        const Shadow(
          blurRadius: MaterialValues.x4,
          color: Color(0x44000000),
        ),
      );
      expect(
        tokens.large,
        const Shadow(
          blurRadius: MaterialValues.x8,
          color: Color(0x44000000),
        ),
      );
    });
  });

  // Tests that spacings can be converted to [EdgeInsets] and wrapped
  // with [Padding] widgets using the resolvers.
  group('EdgeInsets and Padding', () {
    const spacings = SpacingTokensData();
    const edgeInsets = EdgeInsetsResolver(spacings);
    const padding = PaddingResolver(edgeInsets);

    test('EdgeInsets conversions', () {
      expect(edgeInsets.none, EdgeInsets.zero);
      expect(
        edgeInsets.all(SpacingToken.small),
        EdgeInsets.all(spacings.small),
      );
      expect(
        edgeInsets.symmetric(
          vertical: SpacingToken.extraSmall,
          horizontal: SpacingToken.large,
        ),
        EdgeInsets.symmetric(
          vertical: spacings.extraSmall,
          horizontal: spacings.large,
        ),
      );
      expect(
        edgeInsets.only(left: SpacingToken.medium),
        EdgeInsets.only(left: spacings.medium),
      );
    });

    test('Padding conversions', () {
      final widget = padding.all(
        SpacingToken.medium,
        child: const Text('data'),
      );
      expect(widget.padding, EdgeInsets.all(spacings.medium));
      expect(widget.child, const Text('data'));
    });
  });
}
