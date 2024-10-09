part of '../x_metrics_data.dart';

extension XRadiusExtension on XRadius {
  /// Converts [XRadius] to a Flutter [Radius].
  ///
  /// If the `x` and `y` values are the same, this returns a [Radius.circular].
  /// Otherwise, it returns a [Radius.elliptical] with the given `x` and `y`.
  Radius toRadius(XRadiiData radiiData) {
    if (x == y) {
      return Radius.circular(x.toData(radiiData));
    } else {
      return Radius.elliptical(x.toData(radiiData), y.toData(radiiData));
    }
  }
}

/// A radius for either circular or elliptical shapes.
class XRadius {
  /// Constructs a circular radius. [x] and [y] will have the same radius value.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_circular.png#gh-light-mode-only)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_circular_dark.png#gh-dark-mode-only)
  const XRadius.circular(XRadii radius) : this.elliptical(radius, radius);

  /// Constructs an elliptical radius with the given radii.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_elliptical.png#gh-light-mode-only)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_elliptical_dark.png#gh-dark-mode-only)
  const XRadius.elliptical(this.x, this.y);

  /// The radius value on the horizontal axis.
  final XRadii x;

  /// The radius value on the vertical axis.
  final XRadii y;

  /// A radius with [x] and [y] values set to none.
  ///
  /// You can use [XRadius.none] with [RRect] to have right-angle corners.
  static XRadius get none => const XRadius.circular(XRadii.none);
}
