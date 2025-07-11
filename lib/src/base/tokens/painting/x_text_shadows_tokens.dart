part of '../x_design_tokens.dart';

class XTextShadowsTokens extends Equatable {
  final Shadow small;
  final Shadow medium;
  final Shadow large;

  const XTextShadowsTokens({
    Shadow? small,
    Shadow? medium,
    Shadow? large,
  })  : small = small ??
            const Shadow(
              blurRadius: XAuxiliarySizes.x2,
              offset: Offset(0, 1),
              color: Color(0x44000000),
            ),
        medium = medium ??
            const Shadow(
              blurRadius: XStandardSizes.x4,
              offset: Offset(0, 2),
              color: Color(0x44000000),
            ),
        large = large ??
            const Shadow(
              blurRadius: XStandardSizes.x8,
              offset: Offset(0, 4),
              color: Color(0x44000000),
            );

  Shadow get none => const Shadow(
        blurRadius: XStandardSizes.zero,
        color: Color(0x00000000),
      );

  factory XTextShadowsTokens.fromMap(Map<String, dynamic> map) {
    Shadow? parseShadow(String key) {
      final value = map[key];
      if (value is Map<String, dynamic>) {
        return Shadow(
          blurRadius: (value['blurRadius'] as num?)?.toDouble() ?? 0,
          offset: Offset(
            (value['offsetX'] as num?)?.toDouble() ?? 0,
            (value['offsetY'] as num?)?.toDouble() ?? 0,
          ),
          color: Color((value['color'] as int?) ?? 0x44000000),
        );
      }
      return null;
    }

    return XTextShadowsTokens(
      small: parseShadow('small'),
      medium: parseShadow('medium'),
      large: parseShadow('large'),
    );
  }

  @override
  List<Object?> get props => [none, small, medium, large];

  @override
  String toString() => '''
XTextShadowsTokens(
  none: $none,
  small: $small,
  medium: $medium,
  large: $large,
)
''';
}
