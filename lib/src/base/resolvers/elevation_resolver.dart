// lib/src/resolvers/elevation_resolver.dart
import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// Uma classe que traduz um ElevationToken em valores concretos de sombra para o Flutter.
class ElevationResolver {
  const ElevationResolver({
    required Color shadowColor,
    required ElevationTokensData elevations,
  }) : _shadowColor = shadowColor,
       _elevations = elevations;

  /// A cor base para as sombras. Geralmente vem do seu ColorScheme.
  final Color _shadowColor;
  final ElevationTokensData _elevations;

  /// Semantic gap getters
  double get none => _elevations.none;
  double get small => _elevations.small;
  double get medium => _elevations.medium;
  double get large => _elevations.large;
  double get extraLarge => _elevations.extraLarge;
  double get maximum => _elevations.maximum;

  /// Retorna a lista de BoxShadow correspondente a um token de elevação.
  /// Esta é a forma mais robusta e recomendada de aplicar elevação.
  List<BoxShadow> toBoxShadow(ElevationToken elevation) {
    final value = elevation.toDouble(_elevations);
    return ElevationTokensData.toBoxShadow(value, shadowColor: _shadowColor);
  }
}
