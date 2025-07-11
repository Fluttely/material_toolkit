part of '../x_design_tokens.dart';

class XBoxShadowsTokens extends Equatable {
  // final BoxShadow? _small;
  // final BoxShadow? _medium;
  // final BoxShadow? _large;

  final BoxShadow _small;
  final BoxShadow _medium;
  final BoxShadow _large;

  // const XBoxShadowsData({
  //   final BoxShadow? small,
  //   final BoxShadow? medium,
  //   final BoxShadow? large,
  // })  : _small = small,
  //       _medium = medium,
  //       _large = large;

  const XBoxShadowsTokens({
    final BoxShadow? small,
    final BoxShadow? medium,
    final BoxShadow? large,
  })  : _small = small ??
            const BoxShadow(
              blurRadius: XAuxiliarySizes.x2,
              spreadRadius: XAuxiliarySizes.x1,
              color: Color(0x44000000),
            ),
        _medium = medium ??
            const BoxShadow(
              blurRadius: XStandardSizes.x4,
              spreadRadius: XAuxiliarySizes.x1,
              color: Color(0x44000000),
            ),
        _large = large ??
            const BoxShadow(
              blurRadius: XStandardSizes.x8,
              spreadRadius: XAuxiliarySizes.x2,
              color: Color(0x44000000),
            );

  factory XBoxShadowsTokens.fromMap(Map<String, dynamic> map) {
    BoxShadow? _bs(String key) {
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

    return XBoxShadowsTokens(
      small: _bs('small'),
      medium: _bs('medium'),
      large: _bs('large'),
    );
  }

  // XBoxShadowsData.x({
  //   final XAttribute<BoxShadow?>? small,
  //   final XAttribute<BoxShadow?>? medium,
  //   final XAttribute<BoxShadow?>? large,
  // })  : _small = small == null
  //           ? const BoxShadow(
  //               blurRadius: XAuxiliarySizes.x2,
  //               spreadRadius: XAuxiliarySizes.x1,
  //               color: Color(0x44000000),
  //             )
  //           : small.value,
  //       _medium = medium == null
  //           ? const BoxShadow(
  //               blurRadius: XStandardSizes.x4,
  //               spreadRadius: XAuxiliarySizes.x1,
  //               color: Color(0x44000000),
  //             )
  //           : medium.value,
  //       _large = large == null
  //           ? const BoxShadow(
  //               blurRadius: XStandardSizes.x8,
  //               spreadRadius: XAuxiliarySizes.x2,
  //               color: Color(0x44000000),
  //             )
  //           : large.value;

  // BoxShadow get small =>
  //     _small ??
  //     (throw UnsupportedError(XDesignTokensError.getUnsupportedErrorMessage(attribute: 'small', location: 'boxShadows')));
  // BoxShadow get medium =>
  //     _medium ??
  //     (throw UnsupportedError(XDesignTokensError.getUnsupportedErrorMessage(attribute: 'medium', location: 'boxShadows')));
  // BoxShadow get large =>
  //     _large ??
  //     (throw UnsupportedError(XDesignTokensError.getUnsupportedErrorMessage(attribute: 'large', location: 'boxShadows')));

  BoxShadow get none => const BoxShadow(
        blurRadius: XStandardSizes.zero,
        spreadRadius: XStandardSizes.zero,
        color: Color(0x00000000),
      );
  BoxShadow get small => _small;
  BoxShadow get medium => _medium;
  BoxShadow get large => _large;

  @override
  List<Object?> get props => [
        none.named('none'),
        small.named('small'),
        medium.named('medium'),
        large.named('large'),
      ];

  @override
  String toString() => '''
    XBoxShadowsData(
      none: $none,
      small: $small,
      medium: $medium,
      large: $large,
    )
  ''';
}
