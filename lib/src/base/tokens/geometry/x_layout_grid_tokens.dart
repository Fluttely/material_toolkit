part of '../x_design_tokens.dart';

/// Grid configuration used for layout metrics.

/// Defines the default layout grid for the application.
class XLayoutGridTokens extends Equatable {
  const XLayoutGridTokens({
    int? columns,
    double? gutter,
    double? margin,
  })  : columns = columns ?? XStandardSizes.x12Int,
        gutter = gutter ?? XStandardSizes.x16,
        margin = margin ?? XStandardSizes.x16;
  final int columns;
  final double gutter;
  final double margin;

  @override
  List<Object?> get props => [
        columns,
        gutter,
        margin,
      ];
}
