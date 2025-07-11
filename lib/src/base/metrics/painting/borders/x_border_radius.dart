part of '../../design_tokens.dart';

extension DesignBorderRadiusExtension on DesignBorderRadius {
  /// Converts [DesignBorderRadius] to a Flutter [BorderRadius].
  ///
  /// Otherwise, it returns a [BorderRadius.only] with the given radii for each corner.
  BorderRadius toBorderRadius(Radii radiiData) {
    return BorderRadius.only(
      topLeft: Radius.elliptical(
          topLeft.toRadius(radiiData).x, topLeft.toRadius(radiiData).y),
      topRight: Radius.elliptical(
          topRight.toRadius(radiiData).x, topRight.toRadius(radiiData).y),
      bottomLeft: Radius.elliptical(
          bottomLeft.toRadius(radiiData).x, bottomLeft.toRadius(radiiData).y),
      bottomRight: Radius.elliptical(
          bottomRight.toRadius(radiiData).x, bottomRight.toRadius(radiiData).y),
    );
  }
}

/// An immutable set of radii for each corner of a rectangle.
///
/// Used by [BoxDecoration] when the shape is a [BoxShape.rectangle].
///
/// The [DesignBorderRadius] class specifies offsets in terms of visual corners, e.g.
/// [topLeft]. These values are not affected by the [TextDirection]. To support
/// both left-to-right and right-to-left layouts, consider using
/// [BorderRadiusDirectional], which is expressed in terms that are relative to
/// a [TextDirection] (typically obtained from the ambient [Directionality]).
class DesignBorderRadius {
  /// Creates a border radius where all radii are [radius].
  const DesignBorderRadius.all(CornerRadius radius)
      : this.only(
          topLeft: radius,
          topRight: radius,
          bottomLeft: radius,
          bottomRight: radius,
        );

  /// Creates a border radius where all radii are [CornerRadius.circular(radius)].
  DesignBorderRadius.circular(RadiusLevel radius)
      : this.all(
          CornerRadius.circular(radius),
        );

  /// Creates a vertically symmetric border radius where the top and bottom
  /// sides of the rectangle have the same radii.
  const DesignBorderRadius.vertical({
    CornerRadius top = CornerRadius.none,
    CornerRadius bottom = CornerRadius.none,
  }) : this.only(
          topLeft: top,
          topRight: top,
          bottomLeft: bottom,
          bottomRight: bottom,
        );

  /// Creates a horizontally symmetrical border radius where the left and right
  /// sides of the rectangle have the same radii.
  const DesignBorderRadius.horizontal({
    CornerRadius left = CornerRadius.none,
    CornerRadius right = CornerRadius.none,
  }) : this.only(
          topLeft: left,
          topRight: right,
          bottomLeft: left,
          bottomRight: right,
        );

  /// Creates a border radius with only the given non-zero values. The other
  /// corners will be right angles.
  const DesignBorderRadius.only({
    this.topLeft = CornerRadius.none,
    this.topRight = CornerRadius.none,
    this.bottomLeft = CornerRadius.none,
    this.bottomRight = CornerRadius.none,
  });

  /// Returns a copy of this DesignBorderRadius with the given fields replaced with
  /// the new values.
  DesignBorderRadius copyWith({
    CornerRadius? topLeft,
    CornerRadius? topRight,
    CornerRadius? bottomLeft,
    CornerRadius? bottomRight,
  }) {
    return DesignBorderRadius.only(
      topLeft: topLeft ?? this.topLeft,
      topRight: topRight ?? this.topRight,
      bottomLeft: bottomLeft ?? this.bottomLeft,
      bottomRight: bottomRight ?? this.bottomRight,
    );
  }

  /// A border radius with all none radii.
  static const DesignBorderRadius none = DesignBorderRadius.all(CornerRadius.none);

  /// The top-left [CornerRadius].
  final CornerRadius topLeft;

  /// The top-right [CornerRadius].
  final CornerRadius topRight;

  /// The bottom-left [CornerRadius].
  final CornerRadius bottomLeft;

  /// The bottom-right [CornerRadius].
  final CornerRadius bottomRight;
}
