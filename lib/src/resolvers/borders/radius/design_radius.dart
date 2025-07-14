import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// A radius for either circular or elliptical shapes.
class DesignRadius {
  /// Constructs a circular radius. [x] and [y] will have the same radius value.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_circular.png#gh-light-mode-only)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_circular_dark.png#gh-dark-mode-only)
  const DesignRadius.circular(RadiusToken radius)
    : this.elliptical(
        radius,
        radius,
      );

  /// Constructs an elliptical radius with the given radii.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_elliptical.png#gh-light-mode-only)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_elliptical_dark.png#gh-dark-mode-only)
  const DesignRadius.elliptical(
    this.x,
    this.y,
  );

  /// The radius value on the horizontal axis.
  final RadiusToken x;

  /// The radius value on the vertical axis.
  final RadiusToken y;

  /// A radius with [x] and [y] values set to none.
  ///
  /// You can use [DesignRadius.none] with [RRect] to have right-angle corners.
  static const DesignRadius none = DesignRadius.circular(RadiusToken.none);

  /// Converts [DesignRadius] to a Flutter [Radius].
  ///
  /// Otherwise, it returns a [Radius.elliptical] with the given `x` and `y`.
  Radius toRadius(RadiusTokensData radiiTokens) {
    return Radius.elliptical(
      x.toDouble(radiiTokens),
      y.toDouble(radiiTokens),
    );
  }
}
