part of '../x_metrics_data.dart';

class XIconSizesData extends Equatable {
  final double _extraSmall;
  final double _small;
  final double _semiSmall;
  final double _medium;
  final double _semiLarge;
  final double _large;
  final double _extraLarge;
  final double _superLarge;

  const XIconSizesData({
    final double? extraSmall,
    final double? small,
    final double? semiSmall,
    final double? medium,
    final double? semiLarge,
    final double? large,
    final double? extraLarge,
    final double? superLarge,
  })  : _extraSmall = extraSmall ?? XStandardSizes.x16,
        _small = small ?? XAuxiliarySizes.x18,
        _semiSmall = semiSmall ?? XStandardSizes.x20,
        _medium = medium ?? XStandardSizes.x24,
        _semiLarge = semiLarge ?? XStandardSizes.x32,
        _large = large ?? XStandardSizes.x48,
        _extraLarge = extraLarge ?? XStandardSizes.x96,
        _superLarge = superLarge ?? XStandardSizes.x192;

  double get none => XStandardSizes.zero;
  double get extraSmall => _extraSmall;
  double get small => _small;
  double get semiSmall => _semiSmall;
  double get medium => _medium;
  double get semiLarge => _semiLarge;
  double get large => _large;
  double get extraLarge => _extraLarge;
  double get superLarge => _superLarge;

  /// + 2
  double get x16 => XStandardSizes.x16;
  double get x18 => XAuxiliarySizes.x18;
  double get x20 => XStandardSizes.x20;

  /// + 8
  double get x24 => XStandardSizes.x24;
  double get x32 => XStandardSizes.x32;
  double get x40 => XStandardSizes.x40;
  double get x48 => XStandardSizes.x48;

  /// * 2
  double get x96 => XStandardSizes.x96;
  double get x192 => XStandardSizes.x192;

  /// * 2
  double get x256 => XStandardSizes.x256;
  double get x512 => XStandardSizes.x512;

  @override
  List<Object?> get props => [
        none.named('none'),
        extraSmall.named('extraSmall'),
        small.named('small'),
        semiSmall.named('semiSmall'),
        medium.named('medium'),
        semiLarge.named('semiLarge'),
        large.named('large'),
        extraLarge.named('extraLarge'),
        superLarge.named('superLarge'),
      ];

  @override
  String toString() => '''
    XIconSizesData(
      none: $none,
      extraSmall: $extraSmall,
      small: $small,
      semiSmall: $semiSmall,
      medium: $medium,
      semiLarge: $semiLarge,
      large: $large,
      extraLarge: $extraLarge,
      superLarge: $superLarge,
    )
  ''';
}

// enum XIconSizes {
//   extraSmall,
//   small,
//   semiSmall,
//   medium,
//   semiLarge,
//   large,
//   extraLarge,
//   superLarge,
// }

// extension XIconSizesExtension on XIconSizes {
//   double toData(XIconSizesData iconSizes) => switch (this) {
//         XIconSizes.extraSmall => iconSizes.extraSmall,
//         XIconSizes.small => iconSizes.small,
//         XIconSizes.semiSmall => iconSizes.semiSmall,
//         XIconSizes.medium => iconSizes.medium,
//         XIconSizes.semiLarge => iconSizes.semiLarge,
//         XIconSizes.large => iconSizes.large,
//         XIconSizes.extraLarge => iconSizes.extraLarge,
//         XIconSizes.superLarge => iconSizes.superLarge,
//       };
// }
