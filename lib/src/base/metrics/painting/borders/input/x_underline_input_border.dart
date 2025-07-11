part of '../../../design_tokens.dart';

/// Extension on [UnderlineInputBorderData] to convert it into Flutter's
/// [UnderlineInputBorder].
extension UnderlineInputBorderDataExtension on UnderlineInputBorderData {
  /// Returns a Flutter [UnderlineInputBorder] using the provided [borderSide]
  /// and [borderRadius].
  UnderlineInputBorder toUnderlineInputBorder(Radii radiiData) {
    return UnderlineInputBorder(
      borderSide: borderSide,
      borderRadius: borderRadius.toBorderRadius(radiiData),
    );
  }
}

/// A rectangular border with rounded corners.
///
/// Typically used with [ShapeDecoration] to draw a box with a rounded
/// rectangle.
///
/// This shape can interpolate to and from [CircleBorder].
///
/// See also:
///
///  * [BorderSide], which is used to describe each side of the box.
///  * [Border], which, when used with [BoxDecoration], can also
///    describe a rounded rectangle.
class UnderlineInputBorderData {
  /// Creates a rounded rectangle border.
  const UnderlineInputBorderData({
    this.borderSide = BorderSide.none,
    this.borderRadius = DesignBorderRadius.none,
  });

  /// The border underline's color and weight.
  ///
  /// If [borderSide] is [BorderSide.none], which is the default, an underline is not drawn.
  /// Otherwise the underline is centered over the shape's boundary.
  final BorderSide borderSide;

  /// The radii for each corner.
  final DesignBorderRadius borderRadius;

  /// Returns a copy of this object with the given fields replaced.
  UnderlineInputBorderData copyWith(
      {BorderSide? borderSide, DesignBorderRadius? borderRadius}) {
    return UnderlineInputBorderData(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
