part of '../x_metrics_data.dart';

class XBoxShadowsData extends Equatable {
  // final BoxShadow? _small;
  // final BoxShadow? _medium;
  // final BoxShadow? _large;

  final BoxShadow _small;
  final BoxShadow _medium;
  final BoxShadow _large;

  // const XBoxShadowsData({
  //   final BoxShadow? small,
  //   final BoxShadow? medium,
  //   final BoxShadow? large,
  // })  : _small = small,
  //       _medium = medium,
  //       _large = large;

  const XBoxShadowsData({
    final BoxShadow? small,
    final BoxShadow? medium,
    final BoxShadow? large,
  })  : _small = small ??
            const BoxShadow(
              blurRadius: XAuxiliarySizes.x2,
              spreadRadius: XAuxiliarySizes.x1,
              color: Color(0x44000000),
            ),
        _medium = medium ??
            const BoxShadow(
              blurRadius: XStandardSizes.x4,
              spreadRadius: XAuxiliarySizes.x1,
              color: Color(0x44000000),
            ),
        _large = large ??
            const BoxShadow(
              blurRadius: XStandardSizes.x8,
              spreadRadius: XAuxiliarySizes.x2,
              color: Color(0x44000000),
            );

  // XBoxShadowsData.x({
  //   final XAttribute<BoxShadow?>? small,
  //   final XAttribute<BoxShadow?>? medium,
  //   final XAttribute<BoxShadow?>? large,
  // })  : _small = small == null
  //           ? const BoxShadow(
  //               blurRadius: XAuxiliarySizes.x2,
  //               spreadRadius: XAuxiliarySizes.x1,
  //               color: Color(0x44000000),
  //             )
  //           : small.value,
  //       _medium = medium == null
  //           ? const BoxShadow(
  //               blurRadius: XStandardSizes.x4,
  //               spreadRadius: XAuxiliarySizes.x1,
  //               color: Color(0x44000000),
  //             )
  //           : medium.value,
  //       _large = large == null
  //           ? const BoxShadow(
  //               blurRadius: XStandardSizes.x8,
  //               spreadRadius: XAuxiliarySizes.x2,
  //               color: Color(0x44000000),
  //             )
  //           : large.value;

  // BoxShadow get small =>
  //     _small ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'small', location: 'boxShadows')));
  // BoxShadow get medium =>
  //     _medium ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'medium', location: 'boxShadows')));
  // BoxShadow get large =>
  //     _large ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'large', location: 'boxShadows')));

  BoxShadow get small => _small;
  BoxShadow get medium => _medium;
  BoxShadow get large => _large;

  @override
  List<Object?> get props => [
        small.named('small'),
        medium.named('medium'),
        large.named('large'),
      ];

  @override
  String toString() => '''
    XBoxShadowsData(
      small: $small,
      medium: $medium,
      large: $large,
    )
  ''';
}