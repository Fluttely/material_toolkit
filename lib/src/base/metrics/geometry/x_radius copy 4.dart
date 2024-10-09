// part of '../x_metrics_data.dart';

// /// A radius for either circular or elliptical shapes.
// class XRadius {
//   /// Constructs a circular radius. [x] and [y] will have the same radius value.
//   ///
//   /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_circular.png#gh-light-mode-only)
//   /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_circular_dark.png#gh-dark-mode-only)
//   const XRadius.circular(double radius) : this.elliptical(radius, radius);

//   /// Constructs an elliptical radius with the given radii.
//   ///
//   /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_elliptical.png#gh-light-mode-only)
//   /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/radius_elliptical_dark.png#gh-dark-mode-only)
//   const XRadius.elliptical(this.x, this.y);

//   /// The radius value on the horizontal axis.
//   final double x;

//   /// The radius value on the vertical axis.
//   final double y;

//   /// A radius with [x] and [y] values set to zero.
//   ///
//   /// You can use [XRadius.zero] with [RRect] to have right-angle corners.
//   static const XRadius zero = XRadius.circular(0.0);

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (runtimeType != other.runtimeType) {
//       return false;
//     }

//     return other is XRadius && other.x == x && other.y == y;
//   }

//   @override
//   int get hashCode => Object.hash(x, y);

//   @override
//   String toString() {
//     return x == y
//         ? 'XRadius.circular(${x.toStringAsFixed(1)})'
//         : 'XRadius.elliptical(${x.toStringAsFixed(1)}, '
//             '${y.toStringAsFixed(1)})';
//   }
// }
