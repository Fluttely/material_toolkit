part of '../../../x_design_tokens.dart';

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
class XBeveledRectangleBorder {
  /// Creates a beveled rectangle border.
  const XBeveledRectangleBorder({
    this.borderSide = BorderSide.none,
    this.borderRadius = XBorderRadius.none,
  });

  /// The border outline's color and weight.
  ///
  /// If [borderSide] is [BorderSide.none], which is the default, an outline is not drawn.
  /// Otherwise the outline is centered over the shape's boundary.
  final BorderSide borderSide;

  /// The radii for each corner.
  final XBorderRadius borderRadius;

  /// Returns a copy of this XBeveledRectangleBorder with the given fields
  /// replaced with the new values.
  XBeveledRectangleBorder copyWith(
      {BorderSide? borderSide, XBorderRadius? borderRadius}) {
    return XBeveledRectangleBorder(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  /// Converts an [XBeveledRectangleBorder] into a [BeveledRectangleBorder].
  ///
  /// Returns a [BeveledRectangleBorder] with the same [borderSide] and
  /// [borderRadius] configuration.
  BeveledRectangleBorder toBeveledRectangleBorder(XRadiiTokens radiiTokens) {
    return BeveledRectangleBorder(
      side: borderSide,
      borderRadius: borderRadius.toBorderRadius(radiiTokens),
    );
  }
}
