part of '../../../design_tokens.dart';

/// Extension on [OutlineInputBorderData] to convert it into Flutter's
/// [OutlineInputBorder].
extension OutlineInputBorderDataExtension on OutlineInputBorderData {
  /// Returns a Flutter [OutlineInputBorder] using the provided [borderSide]
  /// and [borderRadius].
  OutlineInputBorder toOutlineInputBorder(Radii radiiData) {
    return OutlineInputBorder(
      borderSide: borderSide,
      borderRadius: borderRadius.toBorderRadius(radiiData),
      gapPadding: gapPadding,
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
class OutlineInputBorderData {
  /// Creates a rounded rectangle border.
  const OutlineInputBorderData({
    this.borderSide = BorderSide.none,
    this.borderRadius = DesignBorderRadius.none,
    this.gapPadding = 4.0,
  });

  /// The border outline's color and weight.
  ///
  /// If [borderSide] is [BorderSide.none], which is the default, an outline is not drawn.
  /// Otherwise the outline is centered over the shape's boundary.
  final BorderSide borderSide;

  /// The radii for each corner.
  final DesignBorderRadius borderRadius;

  // TODO: description
  final double gapPadding;

  /// Returns a copy of this object with the given fields replaced.
  OutlineInputBorderData copyWith(
      {BorderSide? borderSide, DesignBorderRadius? borderRadius}) {
    return OutlineInputBorderData(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
