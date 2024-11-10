part of '../../../x_metrics_data.dart';

/// Extensão para a classe [XRoundedRectangleBorder] que adiciona um método
/// para converter em um [RoundedRectangleBorder] do Flutter.
extension XRoundedRectangleBorderExtension on XRoundedRectangleBorder {
  /// Converte um [XRoundedRectangleBorder] para um [RoundedRectangleBorder].
  ///
  /// Retorna um [RoundedRectangleBorder] com a mesma configuração de [borderSide]
  /// e [borderRadius].
  RoundedRectangleBorder toRoundedRectangleBorder(XRadiiData radiiData) {
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
class XRoundedRectangleBorder {
  /// Creates a rounded rectangle border.
  const XRoundedRectangleBorder({
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

  /// Returns a copy of this XRoundedRectangleBorder with the given fields
  /// replaced with the new values.
  XRoundedRectangleBorder copyWith(
      {BorderSide? borderSide, XBorderRadius? borderRadius}) {
    return XRoundedRectangleBorder(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
