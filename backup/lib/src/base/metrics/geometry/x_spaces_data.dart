// ignore_for_file: must_be_immutable, library_private_types_in_public_api

part of '../x_metrics_data.dart';

class XSpacesData extends Equatable {
  final double? _superSmall;
  final double? _extraSmall;
  final double? _small;
  final double? _semiSmall;
  final double? _medium;
  final double? _semiLarge;
  final double? _large;
  final double? _extraLarge;
  final double? _superLarge;

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

  double get none => XStandardSizes.zero;
  double get superSmall =>
      _superSmall ??
      (throw UnsupportedError(XMetricsError.unsupportedErrorMessage(
          attribute: 'superSmall', location: 'spaces')));
  double get extraSmall =>
      _extraSmall ??
      (throw UnsupportedError(XMetricsError.unsupportedErrorMessage(
          attribute: 'extraSmall', location: 'spaces')));
  double get small =>
      _small ??
      (throw UnsupportedError(XMetricsError.unsupportedErrorMessage(
          attribute: 'small', location: 'spaces')));
  double get semiSmall =>
      _semiSmall ??
      (throw UnsupportedError(XMetricsError.unsupportedErrorMessage(
          attribute: 'semiSmall', location: 'spaces')));
  double get medium =>
      _medium ??
      (throw UnsupportedError(XMetricsError.unsupportedErrorMessage(
          attribute: 'medium', location: 'spaces')));
  double get semiLarge =>
      _semiLarge ??
      (throw UnsupportedError(XMetricsError.unsupportedErrorMessage(
          attribute: 'semiLarge', location: 'spaces')));
  double get large =>
      _large ??
      (throw UnsupportedError(XMetricsError.unsupportedErrorMessage(
          attribute: 'large', location: 'spaces')));
  double get extraLarge =>
      _extraLarge ??
      (throw UnsupportedError(XMetricsError.unsupportedErrorMessage(
          attribute: 'extraLarge', location: 'spaces')));
  double get superLarge =>
      _superLarge ??
      (throw UnsupportedError(XMetricsError.unsupportedErrorMessage(
          attribute: 'superLarge', location: 'spaces')));

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
