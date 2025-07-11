part of '../design_tokens.dart';

class IconSizes extends Equatable {
  final double _extraSmall;
  final double _small;
  final double _semiSmall;
  final double _medium;
  final double _semiLarge;
  final double _large;
  final double _extraLarge;
  final double _superLarge;

  const IconSizes({
    final double? extraSmall,
    final double? small,
    final double? semiSmall,
    final double? medium,
    final double? semiLarge,
    final double? large,
    final double? extraLarge,
    final double? superLarge,
  })  : _extraSmall = extraSmall ?? StandardSizes.x16,
        _small = small ?? AuxiliarySizes.x18,
        _semiSmall = semiSmall ?? StandardSizes.x20,
        _medium = medium ?? StandardSizes.x24,
        _semiLarge = semiLarge ?? StandardSizes.x32,
        _large = large ?? StandardSizes.x48,
        _extraLarge = extraLarge ?? StandardSizes.x96,
        _superLarge = superLarge ?? StandardSizes.x192;

  double get none => StandardSizes.zero;
  double get extraSmall => _extraSmall;
  double get small => _small;
  double get semiSmall => _semiSmall;
  double get medium => _medium;
  double get semiLarge => _semiLarge;
  double get large => _large;
  double get extraLarge => _extraLarge;
  double get superLarge => _superLarge;

  /// + 2
  double get x16 => StandardSizes.x16;
  double get x18 => AuxiliarySizes.x18;
  double get x20 => StandardSizes.x20;

  /// + 8
  double get x24 => StandardSizes.x24;
  double get x32 => StandardSizes.x32;
  double get x40 => StandardSizes.x40;
  double get x48 => StandardSizes.x48;

  /// * 2
  double get x96 => StandardSizes.x96;
  double get x192 => StandardSizes.x192;

  /// * 2
  double get x256 => StandardSizes.x256;
  double get x512 => StandardSizes.x512;

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
    IconSizes(
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
//   double toData(IconSizes iconSizes) => switch (this) {
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
