part of '../../../x_metrics_data.dart';

/// Extensão para a classe [XContinuousRectangleBorder] que adiciona um método
/// para converter em um [ContinuousRectangleBorder] do Flutter.
extension XContinuousRectangleBorderExtension on XContinuousRectangleBorder {
  /// Converte um [XContinuousRectangleBorder] para um [ContinuousRectangleBorder].
  ///
  /// Retorna um [ContinuousRectangleBorder] com a mesma configuração de [side]
  /// e [borderRadius].
  ContinuousRectangleBorder toContinuousRectangleBorder(XRadiiData radiiData) {
    return ContinuousRectangleBorder(
      side: side,
      borderRadius: borderRadius.toBorderRadius(radiiData), // Convertendo para XBorderRadius
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
class XContinuousRectangleBorder {
  /// Creates a continuous rectangle border.
  const XContinuousRectangleBorder({
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

  /// Returns a copy of this XContinuousRectangleBorder with the given fields
  /// replaced with the new values.
  XContinuousRectangleBorder copyWith({BorderSide? side, XBorderRadius? borderRadius}) {
    return XContinuousRectangleBorder(
      side: side ?? this.side,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
