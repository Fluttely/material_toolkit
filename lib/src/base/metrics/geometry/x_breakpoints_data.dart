part of '../design_tokens.dart';

class Breakpoints extends Equatable {
  // final Breakpoint? _mobile;
  // final Breakpoint? _tablet;
  // final Breakpoint? _desktop;
  // final Breakpoint? _infinity;

  final Breakpoint _mobile;
  final Breakpoint _tablet;
  final Breakpoint _desktop;
  final Breakpoint _infinity;

  // const Breakpoints({
  //   final Breakpoint? mobile,
  //   final Breakpoint? tablet,
  //   final Breakpoint? desktop,
  //   final Breakpoint? infinity,
  // })  : _mobile = mobile,
  //       _tablet = tablet,
  //       _desktop = desktop,
  //       _infinity = infinity;

  const Breakpoints({
    final Breakpoint? mobile,
    final Breakpoint? tablet,
    final Breakpoint? desktop,
    final Breakpoint? infinity,
  })  : _mobile = mobile ??
            const Breakpoint(
              minWidth: StandardSizes.zero,
              maxWidth: AuxiliarySizes.x599,
            ),
        _tablet = tablet ??
            const Breakpoint(
              minWidth: AuxiliarySizes.x600,
              maxWidth: AuxiliarySizes.x1023,
            ),
        _desktop = desktop ??
            const Breakpoint(
              minWidth: StandardSizes.x1024,
              maxWidth: AuxiliarySizes.x1439,
            ),
        _infinity = infinity ??
            const Breakpoint(
              minWidth: AuxiliarySizes.x1440,
              maxWidth: double.infinity,
            );

  // Breakpoints.x({
  //   final XAttribute<Breakpoint?>? mobile,
  //   final XAttribute<Breakpoint?>? tablet,
  //   final XAttribute<Breakpoint?>? desktop,
  //   final XAttribute<Breakpoint?>? infinity,
  // })  : _mobile = mobile == null
  //           ? const Breakpoint(
  //               minWidth: StandardSizes.zero,
  //               maxWidth: AuxiliarySizes.x599,
  //             )
  //           : mobile.value,
  //       _tablet = tablet == null
  //           ? const Breakpoint(
  //               minWidth: AuxiliarySizes.x600,
  //               maxWidth: AuxiliarySizes.x1023,
  //             )
  //           : tablet.value,
  //       _desktop = desktop == null
  //           ? const Breakpoint(
  //               minWidth: StandardSizes.x1024,
  //               maxWidth: AuxiliarySizes.x1439,
  //             )
  //           : desktop.value,
  //       _infinity = infinity == null
  //           ? const Breakpoint(
  //               minWidth: AuxiliarySizes.x1440,
  //               maxWidth: double.infinity,
  //             )
  //           : infinity.value;

  // Breakpoint get mobile =>
  //     _mobile ??
  //     (throw UnsupportedError(
  //         XMetricsError.getUnsupportedErrorMessage(attribute: 'mobile', location: 'breakpoints')));
  // Breakpoint get tablet =>
  //     _tablet ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'tablet', location: 'breakpoints')));
  // Breakpoint get desktop =>
  //     _desktop ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'desktop', location: 'breakpoints')));
  // Breakpoint get infinity =>
  //     _infinity ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'infinity', location: 'breakpoints')));

  Breakpoint get mobile => _mobile;
  Breakpoint get tablet => _tablet;
  Breakpoint get desktop => _desktop;
  Breakpoint get infinity => _infinity;

  @override
  List<Object?> get props => [
        mobile.named('mobile'),
        tablet.named('tablet'),
        desktop.named('desktop'),
        infinity.named('infinity'),
      ];

  @override
  String toString() => '''
    Breakpoints(
      mobile: $mobile,
      tablet: $tablet,
      desktop: $desktop,
      infinity: $infinity,
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
