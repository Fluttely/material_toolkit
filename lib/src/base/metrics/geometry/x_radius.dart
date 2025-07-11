part of '../design_tokens.dart';

extension CornerRadiusExtension on CornerRadius {
  /// Converts [CornerRadius] to a Flutter [Radius].
  ///
  /// Otherwise, it returns a [Radius.elliptical] with the given `x` and `y`.
  Radius toRadius(Radii radiiData) {
    return Radius.elliptical(
      x.toData(radiiData),
      y.toData(radiiData),
    );
  }
}

/// A radius for either circular or elliptical shapes.
class CornerRadius {
  /// Constructs a circular radius. [x] and [y] will have the same radius value.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_circular.png#gh-light-mode-only)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_circular_dark.png#gh-dark-mode-only)
  const CornerRadius.circular(RadiusLevel radius)
      : this.elliptical(
          radius,
          radius,
        );

  /// Constructs an elliptical radius with the given radii.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_elliptical.png#gh-light-mode-only)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_elliptical_dark.png#gh-dark-mode-only)
  const CornerRadius.elliptical(
    this.x,
    this.y,
  );

  /// The radius value on the horizontal axis.
  final RadiusLevel x;

  /// The radius value on the vertical axis.
  final RadiusLevel y;

  /// A radius with [x] and [y] values set to none.
  ///
  /// You can use [CornerRadius.none] with [RRect] to have right-angle corners.
  static const CornerRadius none = CornerRadius.circular(RadiusLevel.none);
}
