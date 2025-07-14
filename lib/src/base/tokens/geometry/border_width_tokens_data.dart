part of '../../design_tokens.dart';

/// Stroke widths used when drawing borders.

/// Collection of standard border stroke widths.
class BorderWidthTokensData extends Equatable {
  const BorderWidthTokensData({
    double? hairline,
    double? thin,
    double? regular,
    double? thick,
  }) : none = Spacing.none,
       hairline = hairline ?? MaterialExtendedValues.x05,
       thin = thin ?? MaterialExtendedValues.x1,
       regular = regular ?? MaterialExtendedValues.x2,
       thick = thick ?? MaterialValues.x4;

  final double none;
  final double hairline;
  final double thin;
  final double regular;
  final double thick;

  @override
  List<Object?> get props => [
    none,
    hairline,
    thin,
    regular,
    thick,
  ];

  @override
  String toString() {
    return '''
BorderWidthTokens(
  none: $none,
  hairline: $hairline,
  thin: $thin,
  regular: $regular,
  thick: $thick,
)
''';
  }
}
