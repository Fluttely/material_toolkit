part of '../../../design_tokens.dart';

/// Extension on [ContinuousRectangleBorderData] to convert it into Flutter's
/// [ContinuousRectangleBorder].
extension ContinuousRectangleBorderDataExtension on ContinuousRectangleBorderData {
  /// Returns a Flutter [ContinuousRectangleBorder] using the provided [borderSide]
  /// and [borderRadius].
  ContinuousRectangleBorder toContinuousRectangleBorder(Radii radiiData) {
    return ContinuousRectangleBorder(
      side: borderSide,
      borderRadius: borderRadius.toBorderRadius(radiiData),
    );
  }
}

/// A rectangular border with continuous corners.
///
/// Typically used with [ShapeDecoration] to draw a box with a continuous
/// rectangle.
///
/// This shape can interpolate to and from [CircleBorder].
///
/// See also:
///
///  * [BorderSide], which is used to describe each side of the box.
///  * [Border], which, when used with [BoxDecoration], can also
///    describe a continuous rectangle.
class ContinuousRectangleBorderData {
  /// Creates a continuous rectangle border.
  const ContinuousRectangleBorderData({
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
  ContinuousRectangleBorderData copyWith(
      {BorderSide? borderSide, DesignBorderRadius? borderRadius}) {
    return ContinuousRectangleBorderData(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
