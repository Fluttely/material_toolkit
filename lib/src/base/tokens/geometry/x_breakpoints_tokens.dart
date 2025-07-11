part of '../x_design_tokens.dart';

/// Breakpoints defining responsive layout ranges.

/// Contains screen size ranges for responsive layouts.
class XBreakpointsTokens extends Equatable {
  const XBreakpointsTokens({
    XBreakpoint? mobile,
    XBreakpoint? tablet,
    XBreakpoint? desktop,
    XBreakpoint? infinity,
  })  : mobile = mobile ??
            const XBreakpoint(
              maxWidth: XAuxiliarySizes.x599,
            ),
        tablet = tablet ??
            const XBreakpoint(
              minWidth: XAuxiliarySizes.x600,
              maxWidth: XAuxiliarySizes.x1023,
            ),
        desktop = desktop ??
            const XBreakpoint(
              minWidth: XStandardSizes.x1024,
              maxWidth: XAuxiliarySizes.x1439,
            ),
        infinity = infinity ??
            const XBreakpoint(
              minWidth: XAuxiliarySizes.x1440,
            );
  factory XBreakpointsTokens.fromMap(Map<String, dynamic> map) {
    XBreakpoint? parseBreakpoint(String key) {
      final value = map[key];
      if (value is Map<String, dynamic>) {
        return XBreakpoint(
          minWidth: (value['minWidth'] as num?)?.toDouble() ?? 0,
          maxWidth: (value['maxWidth'] as num?)?.toDouble() ?? double.infinity,
        );
      }
      return null;
    }

    return XBreakpointsTokens(
      mobile: parseBreakpoint('mobile'),
      tablet: parseBreakpoint('tablet'),
      desktop: parseBreakpoint('desktop'),
      infinity: parseBreakpoint('infinity'),
    );
  }
  final XBreakpoint mobile;
  final XBreakpoint tablet;
  final XBreakpoint desktop;
  final XBreakpoint infinity;

  @override
  List<Object?> get props => [mobile, tablet, desktop, infinity];

  @override
  String toString() => '''
XBreakpointsTokens(
  mobile: $mobile,
  tablet: $tablet,
  desktop: $desktop,
  infinity: $infinity,
)''';
}

class XBreakpoint {
  const XBreakpoint({this.minWidth = 0, this.maxWidth = double.infinity});
  final double minWidth;
  final double maxWidth;

  bool matches(Size size) => size.width >= minWidth && size.width <= maxWidth;

  @override
  String toString() => 'XBreakpoint(minWidth: $minWidth, maxWidth: $maxWidth)';
}
