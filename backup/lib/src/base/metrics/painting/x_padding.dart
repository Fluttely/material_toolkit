part of '../x_metrics_data.dart';

class XPadding extends Equatable {
  final XEdgeInsets _edgeInsets;

  const XPadding(this._edgeInsets);

  Padding none({
    Widget? child,
  }) =>
      Padding(
        padding: _edgeInsets.none,
        child: child,
      );

  Padding all(
    final XSpaces value, {
    final Widget? child,
  }) =>
      Padding(
        padding: _edgeInsets.all(value),
        child: child,
      );

  Padding symmetric({
    final XSpaces? vertical,
    final XSpaces? horizontal,
    final Widget? child,
  }) =>
      Padding(
        padding: _edgeInsets.symmetric(
          vertical: vertical,
          horizontal: horizontal,
        ),
        child: child,
      );

  Padding only({
    final XSpaces? left,
    final XSpaces? top,
    final XSpaces? right,
    final XSpaces? bottom,
    final Widget? child,
  }) =>
      Padding(
        padding: _edgeInsets.only(
          left: left,
          top: top,
          right: right,
          bottom: bottom,
        ),
        child: child,
      );

  // Padding allSuperSmall({Widget? child}) => Padding(padding: _edgeInsets.allSuperSmall, child: child);
  // Padding allExtraSmall({Widget? child}) => Padding(padding: _edgeInsets.allExtraSmall, child: child);
  // Padding allSmall({Widget? child}) => Padding(padding: _edgeInsets.allSmall, child: child);
  // Padding allSemiSmall({Widget? child}) => Padding(padding: _edgeInsets.allSemiSmall, child: child);
  // Padding allMedium({Widget? child}) => Padding(padding: _edgeInsets.allMedium, child: child);
  // Padding allSemiLarge({Widget? child}) => Padding(padding: _edgeInsets.allSemiLarge, child: child);
  // Padding allLarge({Widget? child}) => Padding(padding: _edgeInsets.allLarge, child: child);
  // Padding allExtraLarge({Widget? child}) => Padding(padding: _edgeInsets.allExtraLarge, child: child);
  // Padding allSuperLarge({Widget? child}) => Padding(padding: _edgeInsets.allSuperLarge, child: child);

  // Padding verticalSuperSmall({Widget? child}) => Padding(padding: _edgeInsets.verticalSuperSmall, child: child);
  // Padding verticalExtraSmall({Widget? child}) => Padding(padding: _edgeInsets.verticalExtraSmall, child: child);
  // Padding verticalSmall({Widget? child}) => Padding(padding: _edgeInsets.verticalSmall, child: child);
  // Padding verticalSemiSmall({Widget? child}) => Padding(padding: _edgeInsets.verticalSemiSmall, child: child);
  // Padding verticalMedium({Widget? child}) => Padding(padding: _edgeInsets.verticalMedium, child: child);
  // Padding verticalSemiLarge({Widget? child}) => Padding(padding: _edgeInsets.verticalSemiLarge, child: child);
  // Padding verticalLarge({Widget? child}) => Padding(padding: _edgeInsets.verticalLarge, child: child);
  // Padding verticalExtraLarge({Widget? child}) => Padding(padding: _edgeInsets.verticalExtraLarge, child: child);
  // Padding verticalSuperLarge({Widget? child}) => Padding(padding: _edgeInsets.verticalSuperLarge, child: child);

  // Padding horizontalSuperSmall({Widget? child}) => Padding(padding: _edgeInsets.horizontalSuperSmall, child: child);
  // Padding horizontalExtraSmall({Widget? child}) => Padding(padding: _edgeInsets.horizontalExtraSmall, child: child);
  // Padding horizontalSmall({Widget? child}) => Padding(padding: _edgeInsets.horizontalSmall, child: child);
  // Padding horizontalSemiSmall({Widget? child}) => Padding(padding: _edgeInsets.horizontalSemiSmall, child: child);
  // Padding horizontalMedium({Widget? child}) => Padding(padding: _edgeInsets.horizontalMedium, child: child);
  // Padding horizontalSemiLarge({Widget? child}) => Padding(padding: _edgeInsets.horizontalSemiLarge, child: child);
  // Padding horizontalLarge({Widget? child}) => Padding(padding: _edgeInsets.horizontalLarge, child: child);
  // Padding horizontalExtraLarge({Widget? child}) => Padding(padding: _edgeInsets.horizontalExtraLarge, child: child);
  // Padding horizontalSuperLarge({Widget? child}) => Padding(padding: _edgeInsets.horizontalSuperLarge, child: child);

  @override
  List<Object?> get props => [
        _edgeInsets.named('_edgeInsets'),
      ];

  @override
  String toString() => '''
    XPadding(
      _edgeInsets: $_edgeInsets,
    )
  ''';
}
