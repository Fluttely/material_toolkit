part of '../design_tokens.dart';

class BoxShadows extends Equatable {
  // final BoxShadow? _small;
  // final BoxShadow? _medium;
  // final BoxShadow? _large;

  final BoxShadow _small;
  final BoxShadow _medium;
  final BoxShadow _large;

  // const BoxShadows({
  //   final BoxShadow? small,
  //   final BoxShadow? medium,
  //   final BoxShadow? large,
  // })  : _small = small,
  //       _medium = medium,
  //       _large = large;

  const BoxShadows({
    final BoxShadow? small,
    final BoxShadow? medium,
    final BoxShadow? large,
  })  : _small = small ??
            const BoxShadow(
              blurRadius: AuxiliarySizes.x2,
              spreadRadius: AuxiliarySizes.x1,
              color: Color(0x44000000),
            ),
        _medium = medium ??
            const BoxShadow(
              blurRadius: StandardSizes.x4,
              spreadRadius: AuxiliarySizes.x1,
              color: Color(0x44000000),
            ),
        _large = large ??
            const BoxShadow(
              blurRadius: StandardSizes.x8,
              spreadRadius: AuxiliarySizes.x2,
              color: Color(0x44000000),
            );

  // BoxShadows.x({
  //   final XAttribute<BoxShadow?>? small,
  //   final XAttribute<BoxShadow?>? medium,
  //   final XAttribute<BoxShadow?>? large,
  // })  : _small = small == null
  //           ? const BoxShadow(
  //               blurRadius: AuxiliarySizes.x2,
  //               spreadRadius: AuxiliarySizes.x1,
  //               color: Color(0x44000000),
  //             )
  //           : small.value,
  //       _medium = medium == null
  //           ? const BoxShadow(
  //               blurRadius: StandardSizes.x4,
  //               spreadRadius: AuxiliarySizes.x1,
  //               color: Color(0x44000000),
  //             )
  //           : medium.value,
  //       _large = large == null
  //           ? const BoxShadow(
  //               blurRadius: StandardSizes.x8,
  //               spreadRadius: AuxiliarySizes.x2,
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

  BoxShadow get none => const BoxShadow(
        blurRadius: StandardSizes.zero,
        spreadRadius: StandardSizes.zero,
        color: Color(0x00000000),
      );
  BoxShadow get small => _small;
  BoxShadow get medium => _medium;
  BoxShadow get large => _large;

  @override
  List<Object?> get props => [
        none.named('none'),
        small.named('small'),
        medium.named('medium'),
        large.named('large'),
      ];

  @override
  String toString() => '''
    BoxShadows(
      none: $none,
      small: $small,
      medium: $medium,
      large: $large,
    )
  ''';
}
