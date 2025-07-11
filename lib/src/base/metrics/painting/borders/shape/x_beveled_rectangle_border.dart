part of '../../../design_tokens.dart';

/// Extension on [BeveledRectangleBorderData] to convert it into Flutter's
/// [BeveledRectangleBorder].
extension BeveledRectangleBorderDataExtension on BeveledRectangleBorderData {
  /// Returns a Flutter [BeveledRectangleBorder] using the provided [borderSide]
  /// and [borderRadius].
  BeveledRectangleBorder toBeveledRectangleBorder(Radii radiiData) {
    return BeveledRectangleBorder(
      side: borderSide,
      borderRadius: borderRadius.toBorderRadius(radiiData),
    );
  }
}

/// A rectangular border with beveled corners.
///
/// Typically used with [ShapeDecoration] to draw a box with a beveled
/// rectangle.
///
/// This shape can interpolate to and from [CircleBorder].
///
/// See also:
///
///  * [BorderSide], which is used to describe each side of the box.
///  * [Border], which, when used with [BoxDecoration], can also
///    describe a beveled rectangle.
class BeveledRectangleBorderData {
  /// Creates a beveled rectangle border.
  const BeveledRectangleBorderData({
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

  /// Returns a copy of this object with the given fields
  /// replaced with the new values.
  BeveledRectangleBorderData copyWith(
      {BorderSide? borderSide, DesignBorderRadius? borderRadius}) {
    return BeveledRectangleBorderData(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
