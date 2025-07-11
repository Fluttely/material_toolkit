part of '../../../x_design_tokens.dart';

/// An immutable set of radii for each corner of a rectangle.
///
/// Used by [BoxDecoration] when the shape is a [BoxShape.rectangle].
///
/// The [XBorderRadius] class specifies offsets in terms of visual corners, e.g.
/// [topLeft]. These values are not affected by the [TextDirection]. To support
/// both left-to-right and right-to-left layouts, consider using
/// [BorderRadiusDirectional], which is expressed in terms that are relative to
/// a [TextDirection] (typically obtained from the ambient [Directionality]).
class XBorderRadius {
  /// Creates a border radius where all radii are [radius].
  const XBorderRadius.all(XRadius radius)
      : this.only(
          topLeft: radius,
          topRight: radius,
          bottomLeft: radius,
          bottomRight: radius,
        );

  /// Creates a border radius where all radii are [XRadius.circular(radius)].
  XBorderRadius.circular(XRadii radius)
      : this.all(
          XRadius.circular(radius),
        );

  /// Creates a vertically symmetric border radius where the top and bottom
  /// sides of the rectangle have the same radii.
  const XBorderRadius.vertical({
    XRadius top = XRadius.none,
    XRadius bottom = XRadius.none,
  }) : this.only(
          topLeft: top,
          topRight: top,
          bottomLeft: bottom,
          bottomRight: bottom,
        );

  /// Creates a horizontally symmetrical border radius where the left and right
  /// sides of the rectangle have the same radii.
  const XBorderRadius.horizontal({
    XRadius left = XRadius.none,
    XRadius right = XRadius.none,
  }) : this.only(
          topLeft: left,
          topRight: right,
          bottomLeft: left,
          bottomRight: right,
        );

  /// Creates a border radius with only the given non-zero values. The other
  /// corners will be right angles.
  const XBorderRadius.only({
    this.topLeft = XRadius.none,
    this.topRight = XRadius.none,
    this.bottomLeft = XRadius.none,
    this.bottomRight = XRadius.none,
  });

  /// The top-left [XRadius].
  final XRadius topLeft;

  /// The top-right [XRadius].
  final XRadius topRight;

  /// The bottom-left [XRadius].
  final XRadius bottomLeft;

  /// The bottom-right [XRadius].
  final XRadius bottomRight;

  /// A border radius with all none radii.
  static const XBorderRadius none = XBorderRadius.all(XRadius.none);

  /// Returns a copy of this XBorderRadius with the given fields replaced with
  /// the new values.
  XBorderRadius copyWith({
    XRadius? topLeft,
    XRadius? topRight,
    XRadius? bottomLeft,
    XRadius? bottomRight,
  }) {
    return XBorderRadius.only(
      topLeft: topLeft ?? this.topLeft,
      topRight: topRight ?? this.topRight,
      bottomLeft: bottomLeft ?? this.bottomLeft,
      bottomRight: bottomRight ?? this.bottomRight,
    );
  }

  /// Converts [XBorderRadius] to a Flutter [BorderRadius].
  ///
  /// Otherwise, it returns a [BorderRadius.only] with the given radii for each corner.
  BorderRadius toBorderRadius(XRadiiTokens radiiTokens) {
    return BorderRadius.only(
      topLeft: Radius.elliptical(
          topLeft.toRadius(radiiTokens).x, topLeft.toRadius(radiiTokens).y),
      topRight: Radius.elliptical(
          topRight.toRadius(radiiTokens).x, topRight.toRadius(radiiTokens).y),
      bottomLeft: Radius.elliptical(bottomLeft.toRadius(radiiTokens).x,
          bottomLeft.toRadius(radiiTokens).y),
      bottomRight: Radius.elliptical(bottomRight.toRadius(radiiTokens).x,
          bottomRight.toRadius(radiiTokens).y),
    );
  }
}
