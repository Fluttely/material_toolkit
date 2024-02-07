
import 'package:material_toolkit/material_toolkit.dart';

class XIconSizesData {
  final double extraSmall;
  final double small;
  final double semiSmall;
  final double medium;
  final double semiLarge;
  final double large;
  final double extraLarge;
  final double superLarge;

  const XIconSizesData({
    final double? extraSmall,
    final double? small,
    final double? semiSmall,
    final double? medium,
    final double? semiLarge,
    final double? large,
    final double? extraLarge,
    final double? superLarge,
  })  : extraSmall = extraSmall ?? XStandardSizes.x16,
        small = small ?? XAuxiliarySizes.x18,
        semiSmall = semiSmall ?? XStandardSizes.x20,
        medium = medium ?? XStandardSizes.x24,
        semiLarge = semiLarge ?? XStandardSizes.x32,
        large = large ?? XStandardSizes.x48,
        extraLarge = extraLarge ?? XStandardSizes.x96,
        superLarge = superLarge ?? XStandardSizes.x192;
}

enum XIconSizes {
  extraSmall,
  small,
  semiSmall,
  medium,
  semiLarge,
  large,
  extraLarge,
  superLarge,
}

extension XIconSizesExtension on XIconSizes {
  double toDouble(XIconSizesData xIconSizes) => switch (this) {
        XIconSizes.extraSmall => xIconSizes.extraSmall,
        XIconSizes.small => xIconSizes.small,
        XIconSizes.semiSmall => xIconSizes.semiSmall,
        XIconSizes.medium => xIconSizes.medium,
        XIconSizes.semiLarge => xIconSizes.semiLarge,
        XIconSizes.large => xIconSizes.large,
        XIconSizes.extraLarge => xIconSizes.extraLarge,
        XIconSizes.superLarge => xIconSizes.superLarge,
      };
}
