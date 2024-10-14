part of '../../../x_metrics_data.dart';

/// Extensão para a classe [XRoundedRectangleBorder] que adiciona um método
/// para converter em um [RoundedRectangleBorder] do Flutter.
extension XRoundedRectangleBorderExtension on XRoundedRectangleBorder {
  /// Converte um [XRoundedRectangleBorder] para um [RoundedRectangleBorder].
  ///
  /// Retorna um [RoundedRectangleBorder] com a mesma configuração de [side]
  /// e [borderRadius].
  RoundedRectangleBorder toRoundedRectangleBorder(XRadiiData radiiData) {
    return RoundedRectangleBorder(
      side: side,
      borderRadius: borderRadius.toBorderRadius(radiiData), // Convertendo para XBorderRadius
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
    this.side = BorderSide.none,
    this.borderRadius = XBorderRadius.none,
  });

  /// The border outline's color and weight.
  ///
  /// If [side] is [BorderSide.none], which is the default, an outline is not drawn.
  /// Otherwise the outline is centered over the shape's boundary.
  final BorderSide side;

  /// The radii for each corner.
  final XBorderRadius borderRadius;

  /// Returns a copy of this XRoundedRectangleBorder with the given fields
  /// replaced with the new values.
  XRoundedRectangleBorder copyWith({BorderSide? side, XBorderRadius? borderRadius}) {
    return XRoundedRectangleBorder(
      side: side ?? this.side,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
