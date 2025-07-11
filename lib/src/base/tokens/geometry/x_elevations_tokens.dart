part of '../x_design_tokens.dart';

/// Elevation values used for Material surfaces.

/// Collection of elevation constants for visual hierarchy.
class XElevationsTokens extends Equatable {
  const XElevationsTokens({
    double? level1,
    double? level2,
    double? level3,
    double? level4,
    double? level5,
  })  : level1 = level1 ?? XAuxiliarySizes.x1,
        level2 = level2 ?? XAuxiliarySizes.x3,
        level3 = level3 ?? XAuxiliarySizes.x6,
        level4 = level4 ?? XStandardSizes.x8,
        level5 = level5 ?? XStandardSizes.x12;

  factory XElevationsTokens.fromMap(Map<String, dynamic> map) {
    double? d(String key) => (map[key] as num?)?.toDouble();

    return XElevationsTokens(
      level1: d('level1'),
      level2: d('level2'),
      level3: d('level3'),
      level4: d('level4'),
      level5: d('level5'),
    );
  }
  final double level1;
  final double level2;
  final double level3;
  final double level4;
  final double level5;

  static const double zero = XStandardSizes.zero;
  static const double x1 = XAuxiliarySizes.x1;
  static const double x3 = XAuxiliarySizes.x3;
  static const double x6 = XAuxiliarySizes.x6;
  static const double x8 = XStandardSizes.x8;
  static const double x12 = XStandardSizes.x12;

  @override
  List<Object?> get props => [zero, level1, level2, level3, level4, level5];

  @override
  String toString() => '''
XElevationsTokens(
  zero: $zero,
  level1: $level1,
  level2: $level2,
  level3: $level3,
  level4: $level4,
  level5: $level5,
)
''';
}
