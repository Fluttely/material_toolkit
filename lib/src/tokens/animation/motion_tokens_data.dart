import 'package:equatable/equatable.dart';
import 'package:material_toolkit/material_toolkit.dart';

enum MotionToken {
  microInteraction,
  quick,
  regular,
  slow,
  complex,
  pageTransition;

  Duration toDuration(MotionTokensData motions) {
    return switch (this) {
      microInteraction => motions.microInteraction,
      quick => motions.quick,
      regular => motions.regular,
      slow => motions.slow,
      complex => motions.complex,
      pageTransition => motions.pageTransition,
    };
  }
}

/// Duration values used for animations following Material Design specifications.
///
/// Material Design uses specific timing patterns:
/// - Micro-interactions: 100ms
/// - Small elements: 150ms
/// - Standard mobile: 200-300ms
/// - Desktop: 150-200ms
/// - Complex transitions: 400ms+
/// - Entrance animations are slightly longer than exit animations
///
/// Reference: https://m2.material.io/design/motion/speed.html
class MotionTokensData extends Equatable {
  const MotionTokensData({
    bool? areAnimationEnabled,
    Duration? microInteraction,
    Duration? quick,
    Duration? regular,
    Duration? slow,
    Duration? complex,
    Duration? pageTransition,
  }) : areAnimationEnabled = areAnimationEnabled ?? true,
       none = MaterialMotion.none,
       microInteraction = microInteraction ?? MaterialMotion.microInteraction,
       quick = quick ?? MaterialMotion.smallElement,
       regular = regular ?? MaterialMotion.mediumElement,
       slow = slow ?? MaterialMotion.largeElement,
       complex = complex ?? MaterialMotion.complexTransition,
       pageTransition = pageTransition ?? MaterialMotion.pageTransition;

  factory MotionTokensData.fromMap(Map<String, dynamic> map) {
    Duration? d(String key) {
      final value = map[key];
      if (value is int) return Duration(milliseconds: value);
      return null;
    }

    return MotionTokensData(
      areAnimationEnabled: map['areAnimationEnabled'] as bool?,
      microInteraction: d('microInteraction'),
      quick: d('quick'),
      regular: d('regular'),
      slow: d('slow'),
      complex: d('complex'),
      pageTransition: d('pageTransition'),
    );
  }

  /// Whether animations are enabled globally
  final bool areAnimationEnabled;

  /// No animation (0ms)
  final Duration none;

  /// Micro-interactions (100ms) - icon changes, button press feedback
  final Duration microInteraction;

  /// Quick transitions (150ms) - small elements, hover effects
  final Duration quick;

  /// Regular transitions (250ms) - standard mobile animations
  final Duration regular;

  /// Slow transitions (300ms) - large elements, complex UI changes
  final Duration slow;

  /// Complex transitions (400ms) - morphing, multi-step animations
  final Duration complex;

  /// Page transitions (400ms) - route changes, navigation
  final Duration pageTransition;

  // ============================================
  // UTILITY METHODS
  // ============================================

  /// Returns appropriate duration for entrance animations
  Duration forEntrance(Duration baseDuration) {
    if (!areAnimationEnabled) return Duration.zero;
    return baseDuration;
  }

  /// Returns appropriate duration for exit animations (20% faster)
  Duration forExit(Duration baseDuration) {
    if (!areAnimationEnabled) return Duration.zero;
    return Duration(milliseconds: (baseDuration.inMilliseconds * 0.8).round());
  }

  /// Scales duration based on distance/size
  Duration forDistance(Duration baseDuration, double distance) {
    if (!areAnimationEnabled) return Duration.zero;

    if (distance < 100) {
      return Duration(
        milliseconds: (baseDuration.inMilliseconds * 0.7).round(),
      );
    }
    if (distance > 500) {
      return Duration(
        milliseconds: (baseDuration.inMilliseconds * 1.3).round(),
      );
    }
    return baseDuration;
  }

  /// Returns duration based on device type
  Duration forDevice({
    required Duration mobile,
    Duration? desktop,
    Duration? tablet,
    Duration? wearable,
  }) {
    if (!areAnimationEnabled) return Duration.zero;

    // Em uma implementação real, você detectaria o tipo de device
    // Por enquanto, retorna mobile como padrão
    return mobile;
  }

  @override
  List<Object?> get props => [
    areAnimationEnabled,
    microInteraction,
    quick,
    regular,
    slow,
    complex,
    pageTransition,
  ];

  @override
  String toString() =>
      '''
DurationTokens(
  areAnimationEnabled: $areAnimationEnabled,
  microInteraction: ${microInteraction.inMilliseconds}ms,
  quick: ${quick.inMilliseconds}ms,
  regular: ${regular.inMilliseconds}ms,
  slow: ${slow.inMilliseconds}ms,
  complex: ${complex.inMilliseconds}ms,
  pageTransition: ${pageTransition.inMilliseconds}ms,
)
''';
}
