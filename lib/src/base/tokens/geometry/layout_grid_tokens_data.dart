part of '../../design_tokens.dart';

/// Grid configuration used for layout metrics.

/// Defines the default layout grid for the application.
class LayoutGridTokensData extends Equatable {
  const LayoutGridTokensData({
    int? columns,
    double? gutter,
    double? margin,
  }) : columns = columns ?? MaterialValues.x12Int,
       gutter = gutter ?? MaterialValues.x16,
       margin = margin ?? MaterialValues.x16;
  final int columns;
  final double gutter;
  final double margin;

  @override
  List<Object?> get props => [
    columns,
    gutter,
    margin,
  ];

  @override
  String toString() =>
      '''
LayoutGridTokens(
  columns: $columns,
  gutter: $gutter,
  margin: $margin,
)''';
}
