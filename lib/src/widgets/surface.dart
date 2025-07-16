import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';

/// A surface that correctly applies Material 3's elevation effects, including
/// both the tonal tint and the shadow, based on a single elevation value.
///
/// This is a powerful, low-level building block for creating any elevated
/// surface in a Material 3 application, serving as a replacement for a generic
/// `Container` when Material styling is desired.
class MaterialSurface extends StatelessWidget {
  const MaterialSurface({
    super.key,
    required this.child,
    this.elevation = MaterialElevation.level0,
    this.shape = const RoundedRectangleBorder(),
    this.shadowColor,
  });

  final Widget child;

  /// The elevation level. This single value controls both the surface tint
  /// color and the shadow depth.
  final double elevation;

  final ShapeBorder shape;
  final Color? shadowColor; // Opcional para customizar a cor da sombra

  @override
  Widget build(BuildContext context) {
    // Passo 1: Calcular a cor da superfície com a tonalidade de elevação.
    final Color tintedSurfaceColor = MaterialTonalColor.fromElevation(
      context,
      elevation,
    );

    // com base no valor de `elevation`.
    return Material(
      // A cor é a nossa cor tonal calculada.
      color: tintedSurfaceColor,
      // A elevação é usada para desenhar a sombra correta.
      elevation: elevation,
      // Propriedades adicionais para um container completo.
      shape: shape,
      shadowColor: shadowColor,
      clipBehavior: Clip.antiAlias,
      child: child,
    );
  }
}
