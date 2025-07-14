import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// A class that translates an [ElevationToken] into concrete shadow values
/// for Flutter.
class ElevationResolver {
  /// Creates an [ElevationResolver].
  const ElevationResolver({
    required Color shadowColor,
    required ElevationTokensData elevations,
  }) : _shadowColor = shadowColor,
       _elevations = elevations;

  /// The base color for the shadows.
  /// This usually comes from your [ColorScheme].
  final Color _shadowColor;
  final ElevationTokensData _elevations;

  /// The elevation level for no elevation.
  double get none => _elevations.none;

  /// The elevation level for small elevation.
  double get small => _elevations.small;

  /// The elevation level for medium elevation.
  double get medium => _elevations.medium;

  /// The elevation level for large elevation.
  double get large => _elevations.large;

  /// The elevation level for extra-large elevation.
  double get extraLarge => _elevations.extraLarge;

  /// The elevation level for maximum elevation.
  double get maximum => _elevations.maximum;

  /// Returns the list of [BoxShadow] corresponding to an elevation token.
  /// This is the most robust and recommended way to apply elevation.
  List<BoxShadow> toBoxShadow(ElevationToken elevation) {
    final value = elevation.toDouble(_elevations);
    return ElevationHelper.toBoxShadow(value, shadowColor: _shadowColor);
  }
}
