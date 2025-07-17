import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';

/// A collection of page transitions built according to the Material Design 3
/// motion guidelines.
///
/// These builders can be used with a `MaterialApp` theme to customize page
/// transitions globally.
///
/// See also:
///
///  * [Material Design 3 Motion](https://m3.material.io/styles/motion/overview)
///  * [PageTransitionsTheme](https://api.flutter.dev/flutter/material/PageTransitionsTheme-class.html)
abstract final class MaterialPageTransitionsBuilder {
  /// A page transition that uses the shared-axis pattern on the X-axis.
  static PageTransitionsBuilder sharedAxisX = _SharedAxisPageTransitionsBuilder(
    transitionToken: MaterialMotion.emphasized,
    fillColor: Colors.transparent,
    transitionType: SharedAxisTransitionType.horizontal,
  );

  /// A page transition that uses the shared-axis pattern on the Y-axis.
  static PageTransitionsBuilder sharedAxisY = _SharedAxisPageTransitionsBuilder(
    transitionToken: MaterialMotion.emphasized,
    fillColor: Colors.transparent,
    transitionType: SharedAxisTransitionType.vertical,
  );

  /// A page transition that uses the shared-axis pattern on the Z-axis.
  static PageTransitionsBuilder sharedAxisZ = _SharedAxisPageTransitionsBuilder(
    transitionToken: MaterialMotion.emphasized,
    fillColor: Colors.transparent,
    transitionType: SharedAxisTransitionType.scaled,
  );

  /// A page transition that uses the fade-through pattern.
  static PageTransitionsBuilder fadeThrough =
      _FadeThroughPageTransitionsBuilder(
        transitionToken: MaterialMotion.standard,
        fillColor: Colors.transparent,
      );

  /// The default platform page transition.
  static const PageTransitionsBuilder platformDefault =
      FadeUpwardsPageTransitionsBuilder();
}

class _SharedAxisPageTransitionsBuilder extends PageTransitionsBuilder {
  _SharedAxisPageTransitionsBuilder({
    required MotionScheme transitionToken,
    required this.transitionType,
    this.fillColor,
  }) : transitionDuration = transitionToken.duration;

  @override
  final Duration transitionDuration;
  final Color? fillColor;
  final SharedAxisTransitionType transitionType;

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SharedAxisTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      transitionType: transitionType,
      fillColor: fillColor,
      child: child,
    );
  }
}

class _FadeThroughPageTransitionsBuilder extends PageTransitionsBuilder {
  _FadeThroughPageTransitionsBuilder({
    required MotionScheme transitionToken,
    this.fillColor,
  }) : transitionDuration = transitionToken.duration;

  @override
  final Duration transitionDuration;
  final Color? fillColor;

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeThroughTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      fillColor: fillColor,
      child: child,
    );
  }
}
