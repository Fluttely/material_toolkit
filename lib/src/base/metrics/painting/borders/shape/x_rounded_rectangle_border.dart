part of '../../../design_tokens.dart';

/// Extension on [RoundedRectangleBorderData] to convert it into Flutter's
/// [RoundedRectangleBorder].
extension RoundedRectangleBorderDataExtension on RoundedRectangleBorderData {
  /// Returns a Flutter [RoundedRectangleBorder] using the provided [borderSide]
  /// and [borderRadius].
  RoundedRectangleBorder toRoundedRectangleBorder(Radii radiiData) {
    return RoundedRectangleBorder(
      side: borderSide,
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
class RoundedRectangleBorderData {
  /// Creates a rounded rectangle border.
  const RoundedRectangleBorderData({
    this.borderSide = BorderSide.none,
    this.borderRadius = DesignBorderRadius.none,
  });

  /// The border outline's color and weight.
  ///
  /// If [borderSide] is [BorderSide.none], which is the default, an outline is not drawn.
  /// Otherwise the outline is centered over the shape's boundary.
  final BorderSide borderSide;

  /// The radii for each corner.
  final DesignBorderRadius borderRadius;

  /// Returns a copy of this object with the given fields replaced.
  RoundedRectangleBorderData copyWith(
      {BorderSide? borderSide, DesignBorderRadius? borderRadius}) {
    return RoundedRectangleBorderData(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
