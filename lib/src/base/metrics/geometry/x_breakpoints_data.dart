part of '../x_metrics_data.dart';

class XBreakpointsData extends Equatable {
  // final Breakpoint? _mobile;
  // final Breakpoint? _tablet;
  // final Breakpoint? _desktop;
  // final Breakpoint? _infinity;

  final XBreakpoint _mobile;
  final XBreakpoint _tablet;
  final XBreakpoint _desktop;
  final XBreakpoint _infinity;

  // const XBreakpointsData({
  //   final Breakpoint? mobile,
  //   final Breakpoint? tablet,
  //   final Breakpoint? desktop,
  //   final Breakpoint? infinity,
  // })  : _mobile = mobile,
  //       _tablet = tablet,
  //       _desktop = desktop,
  //       _infinity = infinity;

  const XBreakpointsData({
    final XBreakpoint? mobile,
    final XBreakpoint? tablet,
    final XBreakpoint? desktop,
    final XBreakpoint? infinity,
  })  : _mobile = mobile ??
            const XBreakpoint(
              minWidth: XStandardSizes.zero,
              maxWidth: XAuxiliarySizes.x599,
            ),
        _tablet = tablet ??
            const XBreakpoint(
              minWidth: XAuxiliarySizes.x600,
              maxWidth: XAuxiliarySizes.x1023,
            ),
        _desktop = desktop ??
            const XBreakpoint(
              minWidth: XStandardSizes.x1024,
              maxWidth: XAuxiliarySizes.x1439,
            ),
        _infinity = infinity ??
            const XBreakpoint(
              minWidth: XAuxiliarySizes.x1440,
              maxWidth: double.infinity,
            );

  // XBreakpointsData.x({
  //   final XAttribute<Breakpoint?>? mobile,
  //   final XAttribute<Breakpoint?>? tablet,
  //   final XAttribute<Breakpoint?>? desktop,
  //   final XAttribute<Breakpoint?>? infinity,
  // })  : _mobile = mobile == null
  //           ? const Breakpoint(
  //               minWidth: XStandardSizes.zero,
  //               maxWidth: XAuxiliarySizes.x599,
  //             )
  //           : mobile.value,
  //       _tablet = tablet == null
  //           ? const Breakpoint(
  //               minWidth: XAuxiliarySizes.x600,
  //               maxWidth: XAuxiliarySizes.x1023,
  //             )
  //           : tablet.value,
  //       _desktop = desktop == null
  //           ? const Breakpoint(
  //               minWidth: XStandardSizes.x1024,
  //               maxWidth: XAuxiliarySizes.x1439,
  //             )
  //           : desktop.value,
  //       _infinity = infinity == null
  //           ? const Breakpoint(
  //               minWidth: XAuxiliarySizes.x1440,
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

  XBreakpoint get mobile => _mobile;
  XBreakpoint get tablet => _tablet;
  XBreakpoint get desktop => _desktop;
  XBreakpoint get infinity => _infinity;

  @override
  List<Object?> get props => [
        mobile.named('mobile'),
        tablet.named('tablet'),
        desktop.named('desktop'),
        infinity.named('infinity'),
      ];

  @override
  String toString() => '''
    XBreakpointsData(
      mobile: $mobile,
      tablet: $tablet,
      desktop: $desktop,
      infinity: $infinity,
    )
  ''';
}

class XBreakpoint {
  /// The minimum width for this breakpoint.
  final double minWidth;

  /// The maximum width for this breakpoint.
  final double maxWidth;

  /// Creates a new breakpoint with the given [minWidth] and [maxWidth].
  ///
  /// Default values are 0 for [minWidth] and [double.infinity] for [maxWidth].
  const XBreakpoint({this.minWidth = 0, this.maxWidth = double.infinity});

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
