part of '../x_metrics_data.dart';

class XRadiiData extends Equatable {
  // final Radius? _extraSmall;
  // final Radius? _small;
  // final Radius? _semiSmall;
  // final Radius? _medium;
  // final Radius? _semiLarge;
  // final Radius? _large;
  // final Radius? _extraLarge;
  // final Radius? _superLarge;

  final Radius _extraSmall;
  final Radius _small;
  final Radius _semiSmall;
  final Radius _medium;
  final Radius _semiLarge;
  final Radius _large;
  final Radius _extraLarge;
  final Radius _superLarge;

  // const XRadiiData({
  //   final Radius? extraSmall,
  //   final Radius? small,
  //   final Radius? semiSmall,
  //   final Radius? medium,
  //   final Radius? semiLarge,
  //   final Radius? large,
  //   final Radius? extraLarge,
  //   final Radius? superLarge,
  // })  : _extraSmall = extraSmall,
  //       _small = small,
  //       _semiSmall = semiSmall,
  //       _medium = medium,
  //       _semiLarge = semiLarge,
  //       _large = large,
  //       _extraLarge = extraLarge,
  //       _superLarge = superLarge;

  const XRadiiData({
    final Radius? extraSmall,
    final Radius? small,
    final Radius? semiSmall,
    final Radius? medium,
    final Radius? semiLarge,
    final Radius? large,
    final Radius? extraLarge,
    final Radius? superLarge,
  })  : _extraSmall = extraSmall ?? const Radius.circular(XStandardSizes.x4),
        _small = small ?? const Radius.circular(XStandardSizes.x8),
        _semiSmall = semiSmall ?? const Radius.circular(XStandardSizes.x12),
        _medium = medium ?? const Radius.circular(XStandardSizes.x16),
        _semiLarge = semiLarge ?? const Radius.circular(XStandardSizes.x20),
        _large = large ?? const Radius.circular(XStandardSizes.x24),
        _extraLarge = extraLarge ?? const Radius.circular(XStandardSizes.x32),
        _superLarge = superLarge ?? const Radius.circular(XStandardSizes.x48);

  // XRadiiData.x({
  //   final XAttribute<Radius?>? extraSmall,
  //   final XAttribute<Radius?>? small,
  //   final XAttribute<Radius?>? semiSmall,
  //   final XAttribute<Radius?>? medium,
  //   final XAttribute<Radius?>? semiLarge,
  //   final XAttribute<Radius?>? large,
  //   final XAttribute<Radius?>? extraLarge,
  //   final XAttribute<Radius?>? superLarge,
  // })  : _extraSmall = extraSmall == null ? const Radius.circular(XStandardSizes.x4) : extraSmall.value,
  //       _small = small == null ? const Radius.circular(XStandardSizes.x8) : small.value,
  //       _semiSmall = semiSmall == null ? const Radius.circular(XStandardSizes.x12) : semiSmall.value,
  //       _medium = medium == null ? const Radius.circular(XStandardSizes.x16) : medium.value,
  //       _semiLarge = semiLarge == null ? const Radius.circular(XStandardSizes.x20) : semiLarge.value,
  //       _large = large == null ? const Radius.circular(XStandardSizes.x24) : large.value,
  //       _extraLarge = extraLarge == null ? const Radius.circular(XStandardSizes.x32) : extraLarge.value,
  //       _superLarge = superLarge == null ? const Radius.circular(XStandardSizes.x48) : superLarge.value;

  // Radius get none => Radius.zero;
  // Radius get extraSmall =>
  //     _extraSmall ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'extraSmall', location: 'radii')));
  // Radius get small =>
  //     _small ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'small', location: 'radii')));
  // Radius get semiSmall =>
  //     _semiSmall ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'semiSmall', location: 'radii')));
  // Radius get medium =>
  //     _medium ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'medium', location: 'radii')));
  // Radius get semiLarge =>
  //     _semiLarge ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'semiLarge', location: 'radii')));
  // Radius get large =>
  //     _large ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'large', location: 'radii')));
  // Radius get extraLarge =>
  //     _extraLarge ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'extraLarge', location: 'radii')));
  // Radius get superLarge =>
  //     _superLarge ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'superLarge', location: 'radii')));

  Radius get extraSmall => _extraSmall;
  Radius get small => _small;
  Radius get semiSmall => _semiSmall;
  Radius get medium => _medium;
  Radius get semiLarge => _semiLarge;
  Radius get large => _large;
  Radius get extraLarge => _extraLarge;
  Radius get superLarge => _superLarge;

  Radius get none => Radius.zero;
  Radius get x4 => const Radius.circular(XStandardSizes.x4);
  Radius get x8 => const Radius.circular(XStandardSizes.x8);
  Radius get x12 => const Radius.circular(XStandardSizes.x12);
  Radius get x16 => const Radius.circular(XStandardSizes.x16);
  Radius get x20 => const Radius.circular(XStandardSizes.x20);
  Radius get x24 => const Radius.circular(XStandardSizes.x24);
  Radius get x32 => const Radius.circular(XStandardSizes.x32);
  Radius get x48 => const Radius.circular(XStandardSizes.x48);

  XRadiiData copyWith({
    Radius? extraSmall,
    Radius? small,
    Radius? semiSmall,
    Radius? medium,
    Radius? semiLarge,
    Radius? large,
    Radius? extraLarge,
    Radius? superLarge,
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
