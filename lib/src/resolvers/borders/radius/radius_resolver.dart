import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// Utility class for converting [DesignRadius] values to Flutter [Radius] objects.

/// Resolves [DesignRadius] values using the provided [RadiusTokensData].
class RadiusResolver extends Equatable {
  const RadiusResolver(this._radii);
  final RadiusTokensData _radii;

  Radius get none => DesignRadius.none.toRadius(_radii);

  Radius circular(RadiusToken radius) =>
      DesignRadius.circular(radius).toRadius(_radii);
  Radius elliptical(RadiusToken x, RadiusToken y) =>
      DesignRadius.elliptical(x, y).toRadius(_radii);

  @override
  List<Object?> get props => [
    _radii.tagged('_radii'),
  ];

  @override
  String toString() =>
      '''
    RadiusResolver(
      _radii: $_radii,
    )
  ''';
}
