part of '../x_design_tokens.dart';

class XLayoutGridTokens extends Equatable {
  final int columns;
  final double gutter;
  final double margin;

  const XLayoutGridTokens({
    int? columns,
    double? gutter,
    double? margin,
  })  : columns = columns ?? XStandardSizes.x12Int,
        gutter = gutter ?? XStandardSizes.x16,
        margin = margin ?? XStandardSizes.x16;

  @override
  List<Object?> get props => [
        columns,
        gutter,
        margin,
      ];
}
