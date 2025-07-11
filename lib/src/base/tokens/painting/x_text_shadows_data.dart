part of '../x_design_tokens.dart';

class XTextShadowsData extends Equatable {
  // final Shadow? _small;
  // final Shadow? _medium;
  // final Shadow? _large;

  final Shadow _small;
  final Shadow _medium;
  final Shadow _large;

  // const XTextShadowsData({
  //   final Shadow? small,
  //   final Shadow? medium,
  //   final Shadow? large,
  // })  : _small = small,
  //       _medium = medium,
  //       _large = large;

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

  // XTextShadowsData.x({
  //   final XAttribute<Shadow?>? small,
  //   final XAttribute<Shadow?>? medium,
  //   final XAttribute<Shadow?>? large,
  // })  : _small = small == null
  //           ? const Shadow(
  //               blurRadius: XAuxiliarySizes.x2,
  //               color: Color(0x44000000),
  //             )
  //           : small.value,
  //       _medium = medium == null
  //           ? const Shadow(
  //               blurRadius: XStandardSizes.x4,
  //               color: Color(0x44000000),
  //             )
  //           : medium.value,
  //       _large = large == null
  //           ? const Shadow(
  //               blurRadius: XStandardSizes.x8,
  //               color: Color(0x44000000),
  //             )
  //           : large.value;

  // Shadow get small =>
  //     _small ??
  //     (throw UnsupportedError(XDesignTokensError.getUnsupportedErrorMessage(attribute: 'small', location: 'boxShadows')));
  // Shadow get medium =>
  //     _medium ??
  //     (throw UnsupportedError(XDesignTokensError.getUnsupportedErrorMessage(attribute: 'medium', location: 'boxShadows')));
  // Shadow get large =>
  //     _large ??
  //     (throw UnsupportedError(XDesignTokensError.getUnsupportedErrorMessage(attribute: 'large', location: 'boxShadows')));

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
