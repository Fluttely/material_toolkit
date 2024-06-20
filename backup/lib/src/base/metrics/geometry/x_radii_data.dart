// ignore_for_file: library_private_types_in_public_api

part of x_metrics_data;

class XRadiiData extends Equatable {
  final Radius? _extraSmall;
  final Radius? _small;
  final Radius? _semiSmall;
  final Radius? _medium;
  final Radius? _semiLarge;
  final Radius? _large;
  final Radius? _extraLarge;
  final Radius? _superLarge;

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

  Radius get none => Radius.zero;
  Radius get extraSmall =>
      _extraSmall ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'extraSmall', location: 'radii')));
  Radius get small =>
      _small ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'small', location: 'radii')));
  Radius get semiSmall =>
      _semiSmall ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'semiSmall', location: 'radii')));
  Radius get medium =>
      _medium ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'medium', location: 'radii')));
  Radius get semiLarge =>
      _semiLarge ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'semiLarge', location: 'radii')));
  Radius get large =>
      _large ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'large', location: 'radii')));
  Radius get extraLarge =>
      _extraLarge ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'extraLarge', location: 'radii')));
  Radius get superLarge =>
      _superLarge ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'superLarge', location: 'radii')));

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
