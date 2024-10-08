part of '../x_metrics_data.dart';

enum XRadii {
  none,
  extraSmall,
  small,
  semiSmall,
  medium,
  semiLarge,
  large,
  extraLarge,
  superLarge,
}

extension XRadiiExtension on XRadii {
  double toData(XRadiiData radii) {
    return switch (this) {
      XRadii.none => radii.none,
      XRadii.extraSmall => radii.extraSmall,
      XRadii.small => radii.small,
      XRadii.semiSmall => radii.semiSmall,
      XRadii.medium => radii.medium,
      XRadii.semiLarge => radii.semiLarge,
      XRadii.large => radii.large,
      XRadii.extraLarge => radii.extraLarge,
      XRadii.superLarge => radii.superLarge,
    };
  }
}

class XRadiiData extends Equatable {
  // final double? _extraSmall;
  // final double? _small;
  // final double? _semiSmall;
  // final double? _medium;
  // final double? _semiLarge;
  // final double? _large;
  // final double? _extraLarge;
  // final double? _superLarge;

  final double _extraSmall;
  final double _small;
  final double _semiSmall;
  final double _medium;
  final double _semiLarge;
  final double _large;
  final double _extraLarge;
  final double _superLarge;

  // const XRadiiData({
  //   final double? extraSmall,
  //   final double? small,
  //   final double? semiSmall,
  //   final double? medium,
  //   final double? semiLarge,
  //   final double? large,
  //   final double? extraLarge,
  //   final double? superLarge,
  // })  : _extraSmall = extraSmall,
  //       _small = small,
  //       _semiSmall = semiSmall,
  //       _medium = medium,
  //       _semiLarge = semiLarge,
  //       _large = large,
  //       _extraLarge = extraLarge,
  //       _superLarge = superLarge;

  const XRadiiData({
    final double? extraSmall,
    final double? small,
    final double? semiSmall,
    final double? medium,
    final double? semiLarge,
    final double? large,
    final double? extraLarge,
    final double? superLarge,
  })  : _extraSmall = extraSmall ?? XStandardSizes.x4,
        _small = small ?? XStandardSizes.x8,
        _semiSmall = semiSmall ?? XStandardSizes.x12,
        _medium = medium ?? XStandardSizes.x16,
        _semiLarge = semiLarge ?? XStandardSizes.x20,
        _large = large ?? XStandardSizes.x24,
        _extraLarge = extraLarge ?? XStandardSizes.x32,
        _superLarge = superLarge ?? XStandardSizes.x48;

  // XRadiiData.x({
  //   final XAttribute<double?>? extraSmall,
  //   final XAttribute<double?>? small,
  //   final XAttribute<double?>? semiSmall,
  //   final XAttribute<double?>? medium,
  //   final XAttribute<double?>? semiLarge,
  //   final XAttribute<double?>? large,
  //   final XAttribute<double?>? extraLarge,
  //   final XAttribute<double?>? superLarge,
  // })  : _extraSmall = extraSmall == null ? const double.circular(XStandardSizes.x4) : extraSmall.value,
  //       _small = small == null ? const double.circular(XStandardSizes.x8) : small.value,
  //       _semiSmall = semiSmall == null ? const double.circular(XStandardSizes.x12) : semiSmall.value,
  //       _medium = medium == null ? const double.circular(XStandardSizes.x16) : medium.value,
  //       _semiLarge = semiLarge == null ? const double.circular(XStandardSizes.x20) : semiLarge.value,
  //       _large = large == null ? const double.circular(XStandardSizes.x24) : large.value,
  //       _extraLarge = extraLarge == null ? const double.circular(XStandardSizes.x32) : extraLarge.value,
  //       _superLarge = superLarge == null ? const double.circular(XStandardSizes.x48) : superLarge.value;

  // double get none => double.zero;
  // double get extraSmall =>
  //     _extraSmall ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'extraSmall', location: 'radii')));
  // double get small =>
  //     _small ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'small', location: 'radii')));
  // double get semiSmall =>
  //     _semiSmall ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'semiSmall', location: 'radii')));
  // double get medium =>
  //     _medium ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'medium', location: 'radii')));
  // double get semiLarge =>
  //     _semiLarge ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'semiLarge', location: 'radii')));
  // double get large =>
  //     _large ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'large', location: 'radii')));
  // double get extraLarge =>
  //     _extraLarge ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'extraLarge', location: 'radii')));
  // double get superLarge =>
  //     _superLarge ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'superLarge', location: 'radii')));

  double get none => XStandardSizes.zero;
  double get extraSmall => _extraSmall;
  double get small => _small;
  double get semiSmall => _semiSmall;
  double get medium => _medium;
  double get semiLarge => _semiLarge;
  double get large => _large;
  double get extraLarge => _extraLarge;
  double get superLarge => _superLarge;

  XRadiiData copyWith({
    double? extraSmall,
    double? small,
    double? semiSmall,
    double? medium,
    double? semiLarge,
    double? large,
    double? extraLarge,
    double? superLarge,
  }) {
    return XRadiiData(
      extraSmall: extraSmall ?? _extraSmall,
      small: small ?? _small,
      semiSmall: semiSmall ?? _semiSmall,
      medium: medium ?? _medium,
      semiLarge: semiLarge ?? _semiLarge,
      large: large ?? _large,
      extraLarge: extraLarge ?? _extraLarge,
      superLarge: superLarge ?? _superLarge,
    );
  }

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
    XRadiiData(
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
