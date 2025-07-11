part of '../x_design_tokens.dart';

class XTextShadowsData extends Equatable {
  final Shadow _small;
  final Shadow _medium;
  final Shadow _large;

  const XTextShadowsData({
    final Shadow? small,
    final Shadow? medium,
    final Shadow? large,
  })  : _small = small ??
            const Shadow(
              blurRadius: XAuxiliarySizes.x2,
              color: Color(0x44000000),
            ),
        _medium = medium ??
            const Shadow(
              blurRadius: XStandardSizes.x4,
              color: Color(0x44000000),
            ),
        _large = large ??
            const Shadow(
              blurRadius: XStandardSizes.x8,
              color: Color(0x44000000),
            );

  factory XTextShadowsData.fromMap(Map<String, dynamic> map) {
    Shadow? _s(String key) {
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

    return XTextShadowsData(
      small: _s('small'),
      medium: _s('medium'),
      large: _s('large'),
    );
  }


  Shadow get none => const Shadow(
        blurRadius: XStandardSizes.zero,
        color: Color(0x00000000),
      );
  Shadow get small => _small;
  Shadow get medium => _medium;
  Shadow get large => _large;

  @override
  List<Object?> get props => [
        none.named('none'),
        small.named('small'),
        medium.named('medium'),
        large.named('large'),
      ];

  @override
  String toString() => '''
    XTextShadowsData(
      none: $none,
      small: $small,
      medium: $medium,
      large: $large,
    )
  ''';
}
