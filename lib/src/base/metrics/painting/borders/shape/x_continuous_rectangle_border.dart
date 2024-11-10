part of '../../../x_metrics_data.dart';

/// Extensão para a classe [XContinuousRectangleBorder] que adiciona um método
/// para converter em um [ContinuousRectangleBorder] do Flutter.
extension XContinuousRectangleBorderExtension on XContinuousRectangleBorder {
  /// Converte um [XContinuousRectangleBorder] para um [ContinuousRectangleBorder].
  ///
  /// Retorna um [ContinuousRectangleBorder] com a mesma configuração de [borderSide]
  /// e [borderRadius].
  ContinuousRectangleBorder toContinuousRectangleBorder(XRadiiData radiiData) {
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
class XContinuousRectangleBorder {
  /// Creates a continuous rectangle border.
  const XContinuousRectangleBorder({
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

  /// Returns a copy of this XContinuousRectangleBorder with the given fields
  /// replaced with the new values.
  XContinuousRectangleBorder copyWith(
      {BorderSide? borderSide, XBorderRadius? borderRadius}) {
    return XContinuousRectangleBorder(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
