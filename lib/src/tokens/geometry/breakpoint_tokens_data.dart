import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract final class Breakpoint {
  static const mobile = DesignBreakpoint(
    maxWidth: 599,
  );
  static const tablet = DesignBreakpoint(
    minWidth: 600,
    maxWidth: 1023,
  );
  static const desktop = DesignBreakpoint(
    minWidth: 1024,
    maxWidth: 1439,
  );
  static const infinity = DesignBreakpoint(
    minWidth: 1440,
  );
}

/// Breakpoints defining responsive layout ranges.

/// Contains screen size ranges for responsive layouts.
class BreakpointTokensData extends Equatable {
  const BreakpointTokensData({
    DesignBreakpoint? mobile,
    DesignBreakpoint? tablet,
    DesignBreakpoint? desktop,
    DesignBreakpoint? infinity,
  }) : mobile = mobile ?? Breakpoint.mobile,
       tablet = tablet ?? Breakpoint.tablet,
       desktop = desktop ?? Breakpoint.desktop,
       infinity = infinity ?? Breakpoint.infinity;

  factory BreakpointTokensData.fromMap(Map<String, dynamic> map) {
    DesignBreakpoint? parseBreakpoint(String key) {
      final value = map[key];
      if (value is Map<String, dynamic>) {
        return DesignBreakpoint(
          minWidth: (value['minWidth'] as num?)?.toDouble() ?? 0,
          maxWidth: (value['maxWidth'] as num?)?.toDouble() ?? double.infinity,
        );
      }
      return null;
    }

    return BreakpointTokensData(
      mobile: parseBreakpoint('mobile'),
      tablet: parseBreakpoint('tablet'),
      desktop: parseBreakpoint('desktop'),
      infinity: parseBreakpoint('infinity'),
    );
  }

  final DesignBreakpoint mobile;
  final DesignBreakpoint tablet;
  final DesignBreakpoint desktop;
  final DesignBreakpoint infinity;

  @override
  List<Object?> get props => [mobile, tablet, desktop, infinity];

  @override
  String toString() =>
      '''
BreakpointTokens(
  mobile: $mobile,
  tablet: $tablet,
  desktop: $desktop,
  infinity: $infinity,
)''';
}

class DesignBreakpoint {
  const DesignBreakpoint({this.minWidth = 0, this.maxWidth = double.infinity});
  final double minWidth;
  final double maxWidth;

  bool matches(Size size) => size.width >= minWidth && size.width <= maxWidth;

  @override
  String toString() =>
      'DesignBreakpoint(minWidth: $minWidth, maxWidth: $maxWidth)';
}
