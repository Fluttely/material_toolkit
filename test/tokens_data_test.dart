import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_toolkit/material_toolkit.dart';

void main() {
  group('XSpacingsData defaults', () {
    const data = XSpacingsData();

    test('values are correct', () {
      expect(data.none, XStandardSizes.zero);
      expect(data.superSmall, XAuxiliarySizes.x2);
      expect(data.extraSmall, XStandardSizes.x4);
      expect(data.small, XStandardSizes.x8);
      expect(data.semiSmall, XStandardSizes.x12);
      expect(data.medium, XStandardSizes.x16);
      expect(data.semiLarge, XStandardSizes.x20);
      expect(data.large, XStandardSizes.x24);
      expect(data.extraLarge, XStandardSizes.x32);
      expect(data.superLarge, XStandardSizes.x48);
    });
  });

  group('XRadiiData', () {
    const data = XRadiiData();

    test('default values', () {
      expect(data.none, XStandardSizes.zero);
      expect(data.extraSmall, XStandardSizes.x4);
      expect(data.small, XStandardSizes.x8);
      expect(data.semiSmall, XStandardSizes.x12);
      expect(data.medium, XStandardSizes.x16);
      expect(data.semiLarge, XStandardSizes.x20);
      expect(data.large, XStandardSizes.x24);
      expect(data.extraLarge, XStandardSizes.x32);
      expect(data.superLarge, XStandardSizes.x48);
    });

    test('copyWith overrides values', () {
      final custom = data.copyWith(extraSmall: 1, large: 2);
      expect(custom.extraSmall, 1);
      expect(custom.small, data.small);
      expect(custom.large, 2);
      expect(custom.superLarge, data.superLarge);
    });
  });

  group('XDesignTokensData.copyWith', () {
    test('overrides selected fields', () {
      final tokens = XDesignTokensData();
      const customSpaces = XSpacingsData(extraSmall: 99);
      final copy = tokens.copyWith(spacings: customSpaces);

      expect(copy.spacings, customSpaces);
      expect(copy.radii, tokens.radii);
    });
  });

  group('Other data defaults', () {
    test('XIconSizesData', () {
      const data = XIconSizesData();
      expect(data.extraSmall, XStandardSizes.x16);
      expect(data.small, XAuxiliarySizes.x18);
      expect(data.semiSmall, XStandardSizes.x20);
      expect(data.medium, XStandardSizes.x24);
      expect(data.semiLarge, XStandardSizes.x32);
      expect(data.large, XStandardSizes.x48);
      expect(data.extraLarge, XStandardSizes.x96);
      expect(data.superLarge, XStandardSizes.x192);
    });

    test('XBreakpointsData', () {
      const data = XBreakpointsData();
      expect(data.mobile.minWidth, XStandardSizes.zero);
      expect(data.mobile.maxWidth, XAuxiliarySizes.x599);
      expect(data.tablet.minWidth, XAuxiliarySizes.x600);
      expect(data.tablet.maxWidth, XAuxiliarySizes.x1023);
      expect(data.desktop.minWidth, XStandardSizes.x1024);
      expect(data.desktop.maxWidth, XAuxiliarySizes.x1439);
      expect(data.infinity.minWidth, XAuxiliarySizes.x1440);
      expect(data.infinity.maxWidth, double.infinity);
    });

    test('XElevationsData', () {
      const data = XElevationsData();
      expect(data.level1, XAuxiliarySizes.x1);
      expect(data.level2, XAuxiliarySizes.x3);
      expect(data.level3, XAuxiliarySizes.x6);
      expect(data.level4, XStandardSizes.x8);
      expect(data.level5, XStandardSizes.x12);
    });

    test('XDurationsData', () {
      const data = XDurationsData();
      expect(data.areAnimationEnabled, isTrue);
      expect(data.slow, const Duration(milliseconds: XStandardMilliseconds.x500));
      expect(data.regular, const Duration(milliseconds: XStandardMilliseconds.x300));
      expect(data.quick, const Duration(milliseconds: XStandardMilliseconds.x100));
    });

    test('XBoxShadowsData', () {
      const data = XBoxShadowsData();
      expect(
        data.small,
        const BoxShadow(
          blurRadius: XAuxiliarySizes.x2,
          spreadRadius: XAuxiliarySizes.x1,
          color: Color(0x44000000),
        ),
      );
      expect(
        data.medium,
        const BoxShadow(
          blurRadius: XStandardSizes.x4,
          spreadRadius: XAuxiliarySizes.x1,
          color: Color(0x44000000),
        ),
      );
      expect(
        data.large,
        const BoxShadow(
          blurRadius: XStandardSizes.x8,
          spreadRadius: XAuxiliarySizes.x2,
          color: Color(0x44000000),
        ),
      );
    });

    test('XTextShadowsData', () {
      const data = XTextShadowsData();
      expect(
        data.small,
        const Shadow(
          blurRadius: XAuxiliarySizes.x2,
          color: Color(0x44000000),
        ),
      );
      expect(
        data.medium,
        const Shadow(
          blurRadius: XStandardSizes.x4,
          color: Color(0x44000000),
        ),
      );
      expect(
        data.large,
        const Shadow(
          blurRadius: XStandardSizes.x8,
          color: Color(0x44000000),
        ),
      );
    });
  });

  group('EdgeInsets and Padding', () {
    const spacings = XSpacingsData();
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
