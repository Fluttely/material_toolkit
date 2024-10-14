part of '../../../x_metrics_data.dart';

/// Extensão para a classe [XUnderlineInputBorder] que adiciona um método
/// para converter em um [UnderlineInputBorder] do Flutter.
extension XUnderlineInputBorderExtension on XUnderlineInputBorder {
  /// Converte um [XUnderlineInputBorder] para um [UnderlineInputBorder].
  ///
  /// Retorna um [UnderlineInputBorder] com a mesma configuração de [borderSide]
  /// e [borderRadius].
  UnderlineInputBorder toUnderlineInputBorder(XRadiiData radiiData) {
    return UnderlineInputBorder(
      borderSide: borderSide,
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
class XUnderlineInputBorder {
  /// Creates a rounded rectangle border.
  const XUnderlineInputBorder({
    this.borderSide = BorderSide.none,
    this.borderRadius = XBorderRadius.none,
  });

  /// The border underline's color and weight.
  ///
  /// If [borderSide] is [BorderSide.none], which is the default, an underline is not drawn.
  /// Otherwise the underline is centered over the shape's boundary.
  final BorderSide borderSide;

  /// The radii for each corner.
  final XBorderRadius borderRadius;

  /// Returns a copy of this XUnderlineInputBorder with the given fields
  /// replaced with the new values.
  XUnderlineInputBorder copyWith({BorderSide? borderSide, XBorderRadius? borderRadius}) {
    return XUnderlineInputBorder(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
