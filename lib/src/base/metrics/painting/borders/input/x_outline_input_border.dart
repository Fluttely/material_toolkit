part of '../../../x_metrics_data.dart';

/// Extensão para a classe [XOutlineInputBorder] que adiciona um método
/// para converter em um [OutlineInputBorder] do Flutter.
extension XOutlineInputBorderExtension on XOutlineInputBorder {
  /// Converte um [XOutlineInputBorder] para um [OutlineInputBorder].
  ///
  /// Retorna um [OutlineInputBorder] com a mesma configuração de [borderSide]
  /// e [borderRadius].
  OutlineInputBorder toOutlineInputBorder(XRadiiData radiiData) {
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
class XOutlineInputBorder {
  /// Creates a rounded rectangle border.
  const XOutlineInputBorder({
    this.borderSide = BorderSide.none,
    this.borderRadius = XBorderRadius.none,
    this.gapPadding = 4.0,
  });

  /// The border outline's color and weight.
  ///
  /// If [borderSide] is [BorderSide.none], which is the default, an outline is not drawn.
  /// Otherwise the outline is centered over the shape's boundary.
  final BorderSide borderSide;

  /// The radii for each corner.
  final XBorderRadius borderRadius;

  // TODO: description
  final double gapPadding;

  /// Returns a copy of this XOutlineInputBorder with the given fields
  /// replaced with the new values.
  XOutlineInputBorder copyWith(
      {BorderSide? borderSide, XBorderRadius? borderRadius}) {
    return XOutlineInputBorder(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
