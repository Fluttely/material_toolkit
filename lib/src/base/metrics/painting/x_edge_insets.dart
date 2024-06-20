part of '../x_metrics_data.dart';

class XEdgeInsets extends Equatable {
  final XSpacesData _spaces;

  const XEdgeInsets(this._spaces);

  EdgeInsets get none => EdgeInsets.all(_spaces.none);

  EdgeInsets all(final XSpaces value) =>
      EdgeInsets.all(value.toDouble(_spaces));

  EdgeInsets symmetric({
    final XSpaces? vertical,
    final XSpaces? horizontal,
  }) =>
      EdgeInsets.symmetric(
        horizontal: (horizontal ?? XSpaces.none).toDouble(_spaces),
        vertical: (vertical ?? XSpaces.none).toDouble(_spaces),
      );

  EdgeInsets only({
    final XSpaces? left,
    final XSpaces? top,
    final XSpaces? right,
    final XSpaces? bottom,
  }) =>
      EdgeInsets.only(
        left: (left ?? XSpaces.none).toDouble(_spaces),
        top: (top ?? XSpaces.none).toDouble(_spaces),
        right: (right ?? XSpaces.none).toDouble(_spaces),
        bottom: (bottom ?? XSpaces.none).toDouble(_spaces),
      );

  // EdgeInsets get allSuperSmall => EdgeInsets.all(_spaces.superSmall);
  // EdgeInsets get allExtraSmall => EdgeInsets.all(_spaces.extraSmall);
  // EdgeInsets get allSmall => EdgeInsets.all(_spaces.small);
  // EdgeInsets get allSemiSmall => EdgeInsets.all(_spaces.semiSmall);
  // EdgeInsets get allMedium => EdgeInsets.all(_spaces.medium);
  // EdgeInsets get allSemiLarge => EdgeInsets.all(_spaces.semiLarge);
  // EdgeInsets get allLarge => EdgeInsets.all(_spaces.large);
  // EdgeInsets get allExtraLarge => EdgeInsets.all(_spaces.extraLarge);
  // EdgeInsets get allSuperLarge => EdgeInsets.all(_spaces.superLarge);

  // EdgeInsets get verticalSuperSmall =>
  //     EdgeInsets.symmetric(vertical: _spaces.superSmall);
  // EdgeInsets get verticalExtraSmall =>
  //     EdgeInsets.symmetric(vertical: _spaces.extraSmall);
  // EdgeInsets get verticalSmall => EdgeInsets.symmetric(vertical: _spaces.small);
  // EdgeInsets get verticalSemiSmall =>
  //     EdgeInsets.symmetric(vertical: _spaces.semiSmall);
  // EdgeInsets get verticalMedium =>
  //     EdgeInsets.symmetric(vertical: _spaces.medium);
  // EdgeInsets get verticalSemiLarge =>
  //     EdgeInsets.symmetric(vertical: _spaces.semiLarge);
  // EdgeInsets get verticalLarge => EdgeInsets.symmetric(vertical: _spaces.large);
  // EdgeInsets get verticalExtraLarge =>
  //     EdgeInsets.symmetric(vertical: _spaces.extraLarge);
  // EdgeInsets get verticalSuperLarge =>
  //     EdgeInsets.symmetric(vertical: _spaces.superLarge);

  // EdgeInsets get horizontalSuperSmall =>
  //     EdgeInsets.symmetric(horizontal: _spaces.superSmall);
  // EdgeInsets get horizontalExtraSmall =>
  //     EdgeInsets.symmetric(horizontal: _spaces.extraSmall);
  // EdgeInsets get horizontalSmall =>
  //     EdgeInsets.symmetric(horizontal: _spaces.small);
  // EdgeInsets get horizontalSemiSmall =>
  //     EdgeInsets.symmetric(horizontal: _spaces.semiSmall);
  // EdgeInsets get horizontalMedium =>
  //     EdgeInsets.symmetric(horizontal: _spaces.medium);
  // EdgeInsets get horizontalSemiLarge =>
  //     EdgeInsets.symmetric(horizontal: _spaces.semiLarge);
  // EdgeInsets get horizontalLarge =>
  //     EdgeInsets.symmetric(horizontal: _spaces.large);
  // EdgeInsets get horizontalExtraLarge =>
  //     EdgeInsets.symmetric(horizontal: _spaces.extraLarge);
  // EdgeInsets get horizontalSuperLarge =>
  //     EdgeInsets.symmetric(horizontal: _spaces.superLarge);

  @override
  List<Object?> get props => [
        _spaces.named('_spaces'),
      ];

  @override
  String toString() => '''
    XEdgeInsetses(
      _spaces: $_spaces,
    )
  ''';
}
