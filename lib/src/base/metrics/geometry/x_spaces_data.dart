part of '../design_tokens.dart';

enum Space {
  none,
  superSmall,
  extraSmall,
  small,
  semiSmall,
  medium,
  semiLarge,
  large,
  extraLarge,
  superLarge,
}

extension SpaceExtension on Space {
  double toData(Spaces spaces) {
    return switch (this) {
      Space.none => spaces.none,
      Space.superSmall => spaces.superSmall,
      Space.extraSmall => spaces.extraSmall,
      Space.small => spaces.small,
      Space.semiSmall => spaces.semiSmall,
      Space.medium => spaces.medium,
      Space.semiLarge => spaces.semiLarge,
      Space.large => spaces.large,
      Space.extraLarge => spaces.extraLarge,
      Space.superLarge => spaces.superLarge,
    };
  }
}

class Spaces extends Equatable {
  // final double? _superSmall;
  // final double? _extraSmall;
  // final double? _small;
  // final double? _semiSmall;
  // final double? _medium;
  // final double? _semiLarge;
  // final double? _large;
  // final double? _extraLarge;
  // final double? _superLarge;

  final double _superSmall;
  final double _extraSmall;
  final double _small;
  final double _semiSmall;
  final double _medium;
  final double _semiLarge;
  final double _large;
  final double _extraLarge;
  final double _superLarge;

  // const Spaces({
  //   final double? superSmall,
  //   final double? extraSmall,
  //   final double? small,
  //   final double? semiSmall,
  //   final double? medium,
  //   final double? semiLarge,
  //   final double? large,
  //   final double? extraLarge,
  //   final double? superLarge,
  // })  : _superSmall = superSmall,
  //       _extraSmall = extraSmall,
  //       _small = small,
  //       _semiSmall = semiSmall,
  //       _medium = medium,
  //       _semiLarge = semiLarge,
  //       _large = large,
  //       _extraLarge = extraLarge,
  //       _superLarge = superLarge;

  const Spaces({
    final double? superSmall,
    final double? extraSmall,
    final double? small,
    final double? semiSmall,
    final double? medium,
    final double? semiLarge,
    final double? large,
    final double? extraLarge,
    final double? superLarge,
  })  : _superSmall = superSmall ?? AuxiliarySizes.x2,
        _extraSmall = extraSmall ?? StandardSizes.x4,
        _small = small ?? StandardSizes.x8,
        _semiSmall = semiSmall ?? StandardSizes.x12,
        _medium = medium ?? StandardSizes.x16,
        _semiLarge = semiLarge ?? StandardSizes.x20,
        _large = large ?? StandardSizes.x24,
        _extraLarge = extraLarge ?? StandardSizes.x32,
        _superLarge = superLarge ?? StandardSizes.x48;

  // Spaces.x({
  //   final XAttribute<double?>? superSmall,
  //   final XAttribute<double?>? extraSmall,
  //   final XAttribute<double?>? small,
  //   final XAttribute<double?>? semiSmall,
  //   final XAttribute<double?>? medium,
  //   final XAttribute<double?>? semiLarge,
  //   final XAttribute<double?>? large,
  //   final XAttribute<double?>? extraLarge,
  //   final XAttribute<double?>? superLarge,
  // })  : _superSmall = superSmall == null ? AuxiliarySizes.x2 : superSmall.value,
  //       _extraSmall = extraSmall == null ? StandardSizes.x4 : extraSmall.value,
  //       _small = small == null ? StandardSizes.x8 : small.value,
  //       _semiSmall = semiSmall == null ? StandardSizes.x12 : semiSmall.value,
  //       _medium = medium == null ? StandardSizes.x16 : medium.value,
  //       _semiLarge = semiLarge == null ? StandardSizes.x20 : semiLarge.value,
  //       _large = large == null ? StandardSizes.x24 : large.value,
  //       _extraLarge = extraLarge == null ? StandardSizes.x32 : extraLarge.value,
  //       _superLarge = superLarge == null ? StandardSizes.x48 : superLarge.value;

  // double get none => StandardSizes.zero;
  // double get superSmall =>
  //     _superSmall ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'superSmall', location: 'spaces')));
  // double get extraSmall =>
  //     _extraSmall ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'extraSmall', location: 'spaces')));
  // double get small =>
  //     _small ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'small', location: 'spaces')));
  // double get semiSmall =>
  //     _semiSmall ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'semiSmall', location: 'spaces')));
  // double get medium =>
  //     _medium ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'medium', location: 'spaces')));
  // double get semiLarge =>
  //     _semiLarge ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'semiLarge', location: 'spaces')));
  // double get large =>
  //     _large ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'large', location: 'spaces')));
  // double get extraLarge =>
  //     _extraLarge ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'extraLarge', location: 'spaces')));
  // double get superLarge =>
  //     _superLarge ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'superLarge', location: 'spaces')));

  double get none => StandardSizes.zero;
  double get superSmall => _superSmall;
  double get extraSmall => _extraSmall;
  double get small => _small;
  double get semiSmall => _semiSmall;
  double get medium => _medium;
  double get semiLarge => _semiLarge;
  double get large => _large;
  double get extraLarge => _extraLarge;
  double get superLarge => _superLarge;

  /// + 2
  double get x2 => AuxiliarySizes.x2;

  /// + 4
  double get x4 => StandardSizes.x4;
  double get x8 => StandardSizes.x8;
  double get x12 => StandardSizes.x12;
  double get x16 => StandardSizes.x16;
  double get x20 => StandardSizes.x20;
  double get x24 => StandardSizes.x24;
  double get x28 => StandardSizes.x28;
  double get x32 => StandardSizes.x32;
  double get x36 => StandardSizes.x36;
  double get x40 => StandardSizes.x40;
  double get x44 => StandardSizes.x44;
  double get x48 => StandardSizes.x48;
  double get x52 => StandardSizes.x52;
  double get x56 => StandardSizes.x56;
  double get x60 => StandardSizes.x60;
  double get x64 => StandardSizes.x64;
  double get x68 => StandardSizes.x68;
  double get x72 => StandardSizes.x72;
  double get x76 => StandardSizes.x76;
  double get x80 => StandardSizes.x80;
  double get x84 => StandardSizes.x84;
  double get x88 => StandardSizes.x88;
  double get x92 => StandardSizes.x92;
  double get x96 => StandardSizes.x96;
  double get x100 => StandardSizes.x100;
  double get x104 => StandardSizes.x104;
  double get x108 => StandardSizes.x108;
  double get x112 => StandardSizes.x112;
  double get x116 => StandardSizes.x116;
  double get x120 => StandardSizes.x120;
  double get x128 => StandardSizes.x128;

  /// + 8
  double get x136 => StandardSizes.x136;
  double get x144 => StandardSizes.x144;
  double get x152 => StandardSizes.x152;
  double get x160 => StandardSizes.x160;
  double get x168 => StandardSizes.x168;
  double get x176 => StandardSizes.x176;
  double get x184 => StandardSizes.x184;
  double get x192 => StandardSizes.x192;
  double get x200 => StandardSizes.x200;
  double get x208 => StandardSizes.x208;
  double get x216 => StandardSizes.x216;
  double get x224 => StandardSizes.x224;
  double get x232 => StandardSizes.x232;
  double get x240 => StandardSizes.x240;
  double get x248 => StandardSizes.x248;
  double get x256 => StandardSizes.x256;

  /// * 2
  double get x512 => StandardSizes.x512;
  double get x1024 => StandardSizes.x1024;
  double get x2048 => StandardSizes.x2048;

  @override
  List<Object?> get props => [
        none.named('none'),
        superSmall.named('superSmall'),
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
    Spaces(
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
