import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  group('XSpacingsData defaults', () {
    const tokens = XSpacingsTokens();

    test('values are correct', () {
      expect(tokens.none, XStandardSizes.zero);
      expect(tokens.superSmall, XAuxiliarySizes.x2);
      expect(tokens.extraSmall, XStandardSizes.x4);
      expect(tokens.small, XStandardSizes.x8);
      expect(tokens.semiSmall, XStandardSizes.x12);
      expect(tokens.medium, XStandardSizes.x16);
      expect(tokens.semiLarge, XStandardSizes.x20);
      expect(tokens.large, XStandardSizes.x24);
      expect(tokens.extraLarge, XStandardSizes.x32);
      expect(tokens.superLarge, XStandardSizes.x48);
    });
  });

  group('XRadiiData', () {
    const tokens = XRadiiTokens();

    test('default values', () {
      expect(tokens.none, XStandardSizes.zero);
      expect(tokens.extraSmall, XStandardSizes.x4);
      expect(tokens.small, XStandardSizes.x8);
      expect(tokens.semiSmall, XStandardSizes.x12);
      expect(tokens.medium, XStandardSizes.x16);
      expect(tokens.semiLarge, XStandardSizes.x20);
      expect(tokens.large, XStandardSizes.x24);
      expect(tokens.extraLarge, XStandardSizes.x32);
      expect(tokens.superLarge, XStandardSizes.x48);
    });

    test('copyWith overrides values', () {
      final custom = tokens.copyWith(extraSmall: 1, large: 2);
      expect(custom.extraSmall, 1);
      expect(custom.small, tokens.small);
      expect(custom.large, 2);
      expect(custom.superLarge, tokens.superLarge);
    });
  });

  group('XDesignTokensData.copyWith', () {
    test('overrides selected fields', () {
      final tokens = XDesignTokens();
      const customSpaces = XSpacingsTokens(extraSmall: 99);
      final copy = tokens.copyWith(spacings: customSpaces);

      expect(copy.spacings, customSpaces);
      expect(copy.radii, tokens.radii);
    });
  });

  group('Other data defaults', () {
    test('XIconSizesData', () {
      const tokens = XIconSizesTokens();
      expect(tokens.extraSmall, XStandardSizes.x16);
      expect(tokens.small, XAuxiliarySizes.x18);
      expect(tokens.semiSmall, XStandardSizes.x20);
      expect(tokens.medium, XStandardSizes.x24);
      expect(tokens.semiLarge, XStandardSizes.x32);
      expect(tokens.large, XStandardSizes.x48);
      expect(tokens.extraLarge, XStandardSizes.x96);
      expect(tokens.superLarge, XStandardSizes.x192);
    });

    test('XBreakpointsData', () {
      const tokens = XBreakpointsTokens();
      expect(tokens.mobile.minWidth, XStandardSizes.zero);
      expect(tokens.mobile.maxWidth, XAuxiliarySizes.x599);
      expect(tokens.tablet.minWidth, XAuxiliarySizes.x600);
      expect(tokens.tablet.maxWidth, XAuxiliarySizes.x1023);
      expect(tokens.desktop.minWidth, XStandardSizes.x1024);
      expect(tokens.desktop.maxWidth, XAuxiliarySizes.x1439);
      expect(tokens.infinity.minWidth, XAuxiliarySizes.x1440);
      expect(tokens.infinity.maxWidth, double.infinity);
    });

    test('XElevationsData', () {
      const tokens = XElevationsTokens();
      expect(tokens.level1, XAuxiliarySizes.x1);
      expect(tokens.level2, XAuxiliarySizes.x3);
      expect(tokens.level3, XAuxiliarySizes.x6);
      expect(tokens.level4, XStandardSizes.x8);
      expect(tokens.level5, XStandardSizes.x12);
    });

    test('XDurationsData', () {
      const tokens = XDurationsTokens();
      expect(tokens.areAnimationEnabled, isTrue);
      expect(tokens.slow, const Duration(milliseconds: XStandardMilliseconds.x500));
      expect(tokens.regular, const Duration(milliseconds: XStandardMilliseconds.x300));
      expect(tokens.quick, const Duration(milliseconds: XStandardMilliseconds.x100));
    });

    test('XBoxShadowsData', () {
      const tokens = XBoxShadowsTokens();
      expect(
        tokens.small,
        const BoxShadow(
          blurRadius: XAuxiliarySizes.x2,
          spreadRadius: XAuxiliarySizes.x1,
          color: Color(0x44000000),
        ),
      );
      expect(
        tokens.medium,
        const BoxShadow(
          blurRadius: XStandardSizes.x4,
          spreadRadius: XAuxiliarySizes.x1,
          color: Color(0x44000000),
        ),
      );
      expect(
        tokens.large,
        const BoxShadow(
          blurRadius: XStandardSizes.x8,
          spreadRadius: XAuxiliarySizes.x2,
          color: Color(0x44000000),
        ),
      );
    });

    test('XTextShadowsData', () {
      const tokens = XTextShadowsTokens();
      expect(
        tokens.small,
        const Shadow(
          blurRadius: XAuxiliarySizes.x2,
          color: Color(0x44000000),
        ),
      );
      expect(
        tokens.medium,
        const Shadow(
          blurRadius: XStandardSizes.x4,
          color: Color(0x44000000),
        ),
      );
      expect(
        tokens.large,
        const Shadow(
          blurRadius: XStandardSizes.x8,
          color: Color(0x44000000),
        ),
      );
    });
  });

  group('EdgeInsets and Padding', () {
    const spacings = XSpacingsTokens();
    const edgeInsets = XEdgeInsets(spacings);
    const padding = XPadding(edgeInsets);

    test('EdgeInsets conversions', () {
      expect(edgeInsets.none, EdgeInsets.zero);
      expect(edgeInsets.all(XSpacings.small), EdgeInsets.all(spacings.small));
      expect(
        edgeInsets.symmetric(vertical: XSpacings.superSmall, horizontal: XSpacings.large),
        EdgeInsets.symmetric(
          vertical: spacings.superSmall,
          horizontal: spacings.large,
        ),
      );
      expect(
        edgeInsets.only(left: XSpacings.medium),
        EdgeInsets.only(left: spacings.medium),
      );
    });

    test('Padding conversions', () {
      final widget = padding.all(XSpacings.medium, child: const Text('data'));
      expect(widget.padding, EdgeInsets.all(spacings.medium));
      expect(widget.child, const Text('data'));
    });
  });
}
