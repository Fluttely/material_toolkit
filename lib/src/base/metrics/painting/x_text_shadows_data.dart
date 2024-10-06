part of '../x_metrics_data.dart';

class XTextShadowsData extends Equatable {
  // final Shadow? _small;
  // final Shadow? _medium;
  // final Shadow? _large;

  final Shadow _small;
  final Shadow _medium;
  final Shadow _large;

  // const XTextShadowsData({
  //   final Shadow? small,
  //   final Shadow? medium,
  //   final Shadow? large,
  // })  : _small = small,
  //       _medium = medium,
  //       _large = large;

  const XTextShadowsData({
    final Shadow? small,
    final Shadow? medium,
    final Shadow? large,
  })  : _small = small ??
            const Shadow(
              blurRadius: XAuxiliarySizes.x2,
              color: Color(0x44000000),
            ),
        _medium = medium ??
            const Shadow(
              blurRadius: XStandardSizes.x4,
              color: Color(0x44000000),
            ),
        _large = large ??
            const Shadow(
              blurRadius: XStandardSizes.x8,
              color: Color(0x44000000),
            );

  // XTextShadowsData.x({
  //   final XAttribute<Shadow?>? small,
  //   final XAttribute<Shadow?>? medium,
  //   final XAttribute<Shadow?>? large,
  // })  : _small = small == null
  //           ? const Shadow(
  //               blurRadius: XAuxiliarySizes.x2,
  //               color: Color(0x44000000),
  //             )
  //           : small.value,
  //       _medium = medium == null
  //           ? const Shadow(
  //               blurRadius: XStandardSizes.x4,
  //               color: Color(0x44000000),
  //             )
  //           : medium.value,
  //       _large = large == null
  //           ? const Shadow(
  //               blurRadius: XStandardSizes.x8,
  //               color: Color(0x44000000),
  //             )
  //           : large.value;

  // Shadow get small =>
  //     _small ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'small', location: 'boxShadows')));
  // Shadow get medium =>
  //     _medium ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'medium', location: 'boxShadows')));
  // Shadow get large =>
  //     _large ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'large', location: 'boxShadows')));

  Shadow get none => const Shadow(
        blurRadius: XStandardSizes.zero,
        color: Color(0x00000000),
      );
  Shadow get small => _small;
  Shadow get medium => _medium;
  Shadow get large => _large;

  @override
  List<Object?> get props => [
        none.named('none'),
        small.named('small'),
        medium.named('medium'),
        large.named('large'),
      ];

  @override
  String toString() => '''
    XTextShadowsData(
      none: $none,
      small: $small,
      medium: $medium,
      large: $large,
    )
  ''';
}
