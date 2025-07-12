part of '../x_design_tokens.dart';

/// Stroke widths used when drawing borders.

/// Collection of standard border stroke widths.
class XBorderWidthsTokens extends Equatable {
  const XBorderWidthsTokens({
    double? hairline,
    double? thin,
    double? regular,
    double? thick,
  })  : hairline = hairline ?? XAuxiliarySizes.x05,
        thin = thin ?? XAuxiliarySizes.x1,
        regular = regular ?? XAuxiliarySizes.x2,
        thick = thick ?? XStandardSizes.x4;
  final double hairline;
  final double thin;
  final double regular;
  final double thick;

  double get none => XStandardSizes.zero;

  @override
  List<Object?> get props => [
        none,
        hairline,
        thin,
        regular,
        thick,
      ];
}
