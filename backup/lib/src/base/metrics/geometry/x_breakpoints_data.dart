// ignore_for_file: must_be_immutable, library_private_types_in_public_api

part of '../x_metrics_data.dart';

class XBreakpointsData extends Equatable {
  final Breakpoint? _extraSmall;
  final Breakpoint? _small;
  final Breakpoint? _medium;
  final Breakpoint? _large;

  // const XBreakpointsData({
  //   final Breakpoint? extraSmall,
  //   final Breakpoint? small,
  //   final Breakpoint? medium,
  //   final Breakpoint? large,
  // })  : _extraSmall = extraSmall,
  //       _small = small,
  //       _medium = medium,
  //       _large = large;

  const XBreakpointsData({
    final Breakpoint? extraSmall,
    final Breakpoint? small,
    final Breakpoint? medium,
    final Breakpoint? large,
  })  : _extraSmall = extraSmall ??
            const Breakpoint(
              minWidth: XStandardSizes.zero,
              maxWidth: XAuxiliarySizes.x599,
            ),
        _small = small ??
            const Breakpoint(
              minWidth: XAuxiliarySizes.x600,
              maxWidth: XAuxiliarySizes.x1023,
            ),
        _medium = medium ??
            const Breakpoint(
              minWidth: XStandardSizes.x1024,
              maxWidth: XAuxiliarySizes.x1439,
            ),
        _large = large ??
            const Breakpoint(
              minWidth: XAuxiliarySizes.x1440,
              maxWidth: double.infinity,
            );

  // XBreakpointsData.x({
  //   final XAttribute<Breakpoint?>? extraSmall,
  //   final XAttribute<Breakpoint?>? small,
  //   final XAttribute<Breakpoint?>? medium,
  //   final XAttribute<Breakpoint?>? large,
  // })  : _extraSmall = extraSmall == null
  //           ? const Breakpoint(
  //               minWidth: XStandardSizes.zero,
  //               maxWidth: XAuxiliarySizes.x599,
  //             )
  //           : extraSmall.value,
  //       _small = small == null
  //           ? const Breakpoint(
  //               minWidth: XAuxiliarySizes.x600,
  //               maxWidth: XAuxiliarySizes.x1023,
  //             )
  //           : small.value,
  //       _medium = medium == null
  //           ? const Breakpoint(
  //               minWidth: XStandardSizes.x1024,
  //               maxWidth: XAuxiliarySizes.x1439,
  //             )
  //           : medium.value,
  //       _large = large == null
  //           ? const Breakpoint(
  //               minWidth: XAuxiliarySizes.x1440,
  //               maxWidth: double.infinity,
  //             )
  //           : large.value;

  Breakpoint get extraSmall =>
      _extraSmall ??
      (throw UnsupportedError(
          XMetricsAttributeErrors.unsupportedError.message(attribute: 'extraSmall', location: 'breakpoints')));
  Breakpoint get small =>
      _small ??
      (throw UnsupportedError(
          XMetricsAttributeErrors.unsupportedError.message(attribute: 'small', location: 'breakpoints')));
  Breakpoint get medium =>
      _medium ??
      (throw UnsupportedError(
          XMetricsAttributeErrors.unsupportedError.message(attribute: 'medium', location: 'breakpoints')));
  Breakpoint get large =>
      _large ??
      (throw UnsupportedError(
          XMetricsAttributeErrors.unsupportedError.message(attribute: 'large', location: 'breakpoints')));

  @override
  List<Object?> get props => [
        extraSmall.named('extraSmall'),
        small.named('small'),
        medium.named('medium'),
        large.named('large'),
      ];

  @override
  String toString() => '''
    XBreakpointsData(
      extraSmall: $extraSmall,
      small: $small,
      medium: $medium,
      large: $large,
    )
  ''';
}

class Breakpoint {
  /// The minimum width for this breakpoint.
  final double minWidth;

  /// The maximum width for this breakpoint.
  final double maxWidth;

  /// Creates a new breakpoint with the given [minWidth] and [maxWidth].
  ///
  /// Default values are 0 for [minWidth] and [double.infinity] for [maxWidth].
  const Breakpoint({this.minWidth = 0, this.maxWidth = double.infinity});

  /// Checks whether the given [size] matches this breakpoint.
  ///
  /// Returns true if the width of the [size] is between [minWidth] and
  /// [maxWidth], inclusive.
  bool matches(Size size) {
    return size.width >= minWidth && size.width <= maxWidth;
  }

  @override
  String toString() => '''
    Breakpoint(
      minWidth: $minWidth,
      maxWidth: $maxWidth,
    )
  ''';
}
