part of '../../design_tokens.dart';

/// Box shadow presets used by components.

/// Predefined [BoxShadow] values for different elevation levels.
class BoxShadowTokensData extends Equatable {
  const BoxShadowTokensData({
    BoxShadow? small,
    BoxShadow? medium,
    BoxShadow? large,
  }) : small =
           small ??
           const BoxShadow(
             blurRadius: MaterialExtendedValues.x2,
             spreadRadius: MaterialExtendedValues.x1,
             offset: Offset(0, 2),
             color: Color(0x44000000),
           ),
       medium =
           medium ??
           const BoxShadow(
             blurRadius: MaterialExtendedValues.x4,
             spreadRadius: MaterialExtendedValues.x1,
             offset: Offset(0, 4),
             color: Color(0x44000000),
           ),
       large =
           large ??
           const BoxShadow(
             blurRadius: MaterialExtendedValues.x8,
             spreadRadius: MaterialExtendedValues.x2,
             offset: Offset(0, 8),
             color: Color(0x44000000),
           );

  factory BoxShadowTokensData.fromMap(Map<String, dynamic> map) {
    BoxShadow? parseShadow(String key) {
      final value = map[key];
      if (value is Map<String, dynamic>) {
        return BoxShadow(
          blurRadius: (value['blurRadius'] as num?)?.toDouble() ?? 0,
          spreadRadius: (value['spreadRadius'] as num?)?.toDouble() ?? 0,
          offset: Offset(
            (value['offsetX'] as num?)?.toDouble() ?? 0,
            (value['offsetY'] as num?)?.toDouble() ?? 0,
          ),
          color: Color((value['color'] as int?) ?? 0x44000000),
        );
      }
      return null;
    }

    return BoxShadowTokensData(
      small: parseShadow('small'),
      medium: parseShadow('medium'),
      large: parseShadow('large'),
    );
  }

  final BoxShadow small;
  final BoxShadow medium;
  final BoxShadow large;

  BoxShadow get none => const BoxShadow(
    color: Color(0x00000000),
  );

  @override
  List<Object?> get props => [none, small, medium, large];

  @override
  String toString() {
    return '''
BoxShadowTokens(
  none: $none,
  small: $small,
  medium: $medium,
  large: $large,
)
''';
  }
}
