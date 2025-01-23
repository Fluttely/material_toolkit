part of '../x_metrics_data.dart';

enum XSpaces {
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

extension XSpacesExtension on XSpaces {
  double toData(XSpacesData spaces) {
    return switch (this) {
      XSpaces.none => spaces.none,
      XSpaces.superSmall => spaces.superSmall,
      XSpaces.extraSmall => spaces.extraSmall,
      XSpaces.small => spaces.small,
      XSpaces.semiSmall => spaces.semiSmall,
      XSpaces.medium => spaces.medium,
      XSpaces.semiLarge => spaces.semiLarge,
      XSpaces.large => spaces.large,
      XSpaces.extraLarge => spaces.extraLarge,
      XSpaces.superLarge => spaces.superLarge,
    };
  }
}

class XSpacesData extends Equatable {
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

  // const XSpacesData({
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

  const XSpacesData({
    final double? superSmall,
    final double? extraSmall,
    final double? small,
    final double? semiSmall,
    final double? medium,
    final double? semiLarge,
    final double? large,
    final double? extraLarge,
    final double? superLarge,
  })  : _superSmall = superSmall ?? XAuxiliarySizes.x2,
        _extraSmall = extraSmall ?? XStandardSizes.x4,
        _small = small ?? XStandardSizes.x8,
        _semiSmall = semiSmall ?? XStandardSizes.x12,
        _medium = medium ?? XStandardSizes.x16,
        _semiLarge = semiLarge ?? XStandardSizes.x20,
        _large = large ?? XStandardSizes.x24,
        _extraLarge = extraLarge ?? XStandardSizes.x32,
        _superLarge = superLarge ?? XStandardSizes.x48;

  // XSpacesData.x({
  //   final XAttribute<double?>? superSmall,
  //   final XAttribute<double?>? extraSmall,
  //   final XAttribute<double?>? small,
  //   final XAttribute<double?>? semiSmall,
  //   final XAttribute<double?>? medium,
  //   final XAttribute<double?>? semiLarge,
  //   final XAttribute<double?>? large,
  //   final XAttribute<double?>? extraLarge,
  //   final XAttribute<double?>? superLarge,
  // })  : _superSmall = superSmall == null ? XAuxiliarySizes.x2 : superSmall.value,
  //       _extraSmall = extraSmall == null ? XStandardSizes.x4 : extraSmall.value,
  //       _small = small == null ? XStandardSizes.x8 : small.value,
  //       _semiSmall = semiSmall == null ? XStandardSizes.x12 : semiSmall.value,
  //       _medium = medium == null ? XStandardSizes.x16 : medium.value,
  //       _semiLarge = semiLarge == null ? XStandardSizes.x20 : semiLarge.value,
  //       _large = large == null ? XStandardSizes.x24 : large.value,
  //       _extraLarge = extraLarge == null ? XStandardSizes.x32 : extraLarge.value,
  //       _superLarge = superLarge == null ? XStandardSizes.x48 : superLarge.value;

  // double get none => XStandardSizes.zero;
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

  double get none => XStandardSizes.zero;
  double get superSmall => _superSmall;
  double get extraSmall => _extraSmall;
  double get small => _small;
  double get semiSmall => _semiSmall;
  double get medium => _medium;
  double get semiLarge => _semiLarge;
  double get large => _large;
  double get extraLarge => _extraLarge;
  double get superLarge => _superLarge;

  /// + 4
  double get x2 => XAuxiliarySizes.x2;
  double get x4 => XStandardSizes.x4;
  double get x8 => XStandardSizes.x8;
  double get x12 => XStandardSizes.x12;
  double get x16 => XStandardSizes.x16;
  double get x20 => XStandardSizes.x20;
  double get x24 => XStandardSizes.x24;
  double get x32 => XStandardSizes.x32;
  double get x48 => XStandardSizes.x48;
  double get x64 => XStandardSizes.x64;
  double get x68 => XStandardSizes.x68;
  double get x72 => XStandardSizes.x72;
  double get x76 => XStandardSizes.x76;
  double get x80 => XStandardSizes.x80;
  double get x84 => XStandardSizes.x84;
  double get x88 => XStandardSizes.x88;
  double get x92 => XStandardSizes.x92;
  double get x96 => XStandardSizes.x96;
  double get x100 => XStandardSizes.x100;
  double get x104 => XStandardSizes.x104;
  double get x108 => XStandardSizes.x108;
  double get x112 => XStandardSizes.x112;
  double get x116 => XStandardSizes.x116;
  double get x120 => XStandardSizes.x120;
  double get x128 => XStandardSizes.x128;

  /// + 8
  double get x136 => XStandardSizes.x136;
  double get x144 => XStandardSizes.x144;
  double get x152 => XStandardSizes.x152;
  double get x160 => XStandardSizes.x160;
  double get x168 => XStandardSizes.x168;
  double get x176 => XStandardSizes.x176;
  double get x184 => XStandardSizes.x184;
  double get x192 => XStandardSizes.x192;
  double get x200 => XStandardSizes.x200;
  double get x208 => XStandardSizes.x208;
  double get x216 => XStandardSizes.x216;
  double get x224 => XStandardSizes.x224;
  double get x232 => XStandardSizes.x232;
  double get x240 => XStandardSizes.x240;
  double get x248 => XStandardSizes.x248;
  double get x256 => XStandardSizes.x256;

  /// * 2
  double get x512 => XStandardSizes.x512;
  double get x1024 => XStandardSizes.x1024;
  double get x2048 => XStandardSizes.x2048;
  

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
    XSpacesData(
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
