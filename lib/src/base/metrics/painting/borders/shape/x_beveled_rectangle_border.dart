part of '../../../x_metrics_data.dart';

/// Extensão para a classe [XBeveledRectangleBorder] que adiciona um método
/// para converter em um [BeveledRectangleBorder] do Flutter.
extension XBeveledRectangleBorderExtension on XBeveledRectangleBorder {
  /// Converte um [XBeveledRectangleBorder] para um [BeveledRectangleBorder].
  ///
  /// Retorna um [BeveledRectangleBorder] com a mesma configuração de [side]
  /// e [borderRadius].
  BeveledRectangleBorder toBeveledRectangleBorder(XRadiiData radiiData) {
    return BeveledRectangleBorder(
      side: side,
      borderRadius: borderRadius.toBorderRadius(radiiData), // Convertendo para XBorderRadius
    );
  }
}

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

  /// Returns a copy of this XBeveledRectangleBorder with the given fields
  /// replaced with the new values.
  XBeveledRectangleBorder copyWith({BorderSide? side, XBorderRadius? borderRadius}) {
    return XBeveledRectangleBorder(
      side: side ?? this.side,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
