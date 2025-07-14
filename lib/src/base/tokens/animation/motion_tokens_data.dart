part of '../../design_tokens.dart';

/// Standard motions used across the Material Design animations.
///
/// Based on official Material Design specifications:
/// - Mobile: 200-300ms
/// - Desktop: 150-200ms
/// - Wearables: 30% faster than mobile
/// - Tablets: 30% slower than mobile
/// - Entrance animations: slightly longer than exit animations
/// - Small elements: shorter motions than large elements
///
/// Reference: https://m2.material.io/design/motion/speed.html
abstract final class MaterialMotion {
  /// Micro-interactions (icon changes, button press feedback)
  static const microInteraction = Duration(milliseconds: 100);

  /// Small element transitions (buttons, chips, small cards)
  static const smallElement = Duration(milliseconds: 150);

  /// Medium element transitions (cards, dialogs)
  static const mediumElement = Duration(milliseconds: 250);

  /// Large element transitions (drawers, bottom sheets)
  static const largeElement = Duration(milliseconds: 300);

  /// Complex transitions (page transitions, morphing)
  static const complexTransition = Duration(milliseconds: 400);

  /// Full screen transitions
  static const int fullScreen = 500;

  // ============================================
  // DEVICE-SPECIFIC DURATIONS
  // ============================================

  /// Desktop animations (150-200ms range)
  static const desktopShort = Duration(milliseconds: 150);
  static const desktopLong = Duration(milliseconds: 200);

  /// Page transitions
  static const pageTransition = Duration(milliseconds: 400);

  /// Splash screens and loading
  // static const int splash = ;

  // ============================================
  // MATERIAL DESIGN SEMANTIC DURATIONS
  // ============================================

  /// Desktop standard animations (200ms)
  static const desktop = Duration(milliseconds: 200);

  /// Mobile short animations (200ms)
  static const mobileShort = Duration(milliseconds: 200);

  static const mobileStandard = Duration(milliseconds: 250);

  /// Mobile long animations (300ms)
  static const mobileLong = Duration(milliseconds: 300);

  // ============================================
  // COMPONENT-SPECIFIC DURATIONS
  // ============================================

  /// Navigation drawer animations
  static const drawerOpen = Duration(milliseconds: 250);
  static const drawerClose = Duration(milliseconds: 200);

  /// Card animations
  static const cardExpand = Duration(milliseconds: 300);
  static const cardCollapse = Duration(milliseconds: 250);

  /// Dialog animations
  static const dialogEnter = Duration(milliseconds: 300);
  static const dialogExit = Duration(milliseconds: 200);

  /// Bottom sheet animations
  static const bottomSheetEnter = Duration(milliseconds: 300);
  static const bottomSheetExit = Duration(milliseconds: 250);

  /// FAB animations
  static const fabShow = Duration(milliseconds: 200);
  static const fabHide = Duration(milliseconds: 150);

  /// Snackbar animations
  static const snackbarEnter = Duration(milliseconds: 300);
  static const snackbarExit = Duration(milliseconds: 200);

  /// Splash screen duration
  static const splash = Duration(milliseconds: 500);

  // ============================================
  // DIRECT ACCESS TO MATERIAL TIMINGS
  // ============================================

  /// Direct access to all Material Design timing values
  static const x100 = Duration(milliseconds: 100);
  static const x150 = Duration(milliseconds: 150);
  static const x200 = Duration(milliseconds: 200);
  static const x250 = Duration(milliseconds: 250);
  static const x300 = Duration(milliseconds: 300);
  static const x400 = Duration(milliseconds: 400);
  static const x500 = Duration(milliseconds: 500);

  // ============================================
  // DEVICE-SPECIFIC DURATIONS
  // ============================================

  /// Wearable device animations (30% faster than mobile)
  static const wearableShort = Duration(milliseconds: 140); // 200ms * 0.7
  static const wearableStandard = Duration(milliseconds: 175); // 250ms * 0.7
  static const wearableLong = Duration(milliseconds: 210); // 300ms * 0.7

  /// Tablet device animations (30% slower than mobile)
  static const tabletShort = Duration(milliseconds: 260); // 200ms * 1.3
  static const tabletStandard = Duration(milliseconds: 325); // 250ms * 1.3
  static const tabletLong = Duration(milliseconds: 390); // 300ms * 1.3

  // ============================================
  // UTILITY METHODS
  // ============================================

  /// Returns appropriate duration for device type
  static int forDevice({
    required int mobile,
    int? desktop,
    int? tablet,
    int? wearable,
  }) {
    // Em uma implementação real, você detectaria o tipo de device
    // Por enquanto, retorna mobile como padrão
    return mobile;
  }

  /// Applies Material Design entrance/exit timing rules
  static int forEntrance(int baseDuration) => baseDuration;
  static int forExit(int baseDuration) => (baseDuration * 0.8).round();

  /// Scales duration based on distance/size
  static int forDistance(int baseDuration, double distance) {
    if (distance < 100) return (baseDuration * 0.7).round();
    if (distance > 500) return (baseDuration * 1.3).round();
    return baseDuration;
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
       none = MaterialSpacing.none,
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
  final double none;

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
