part of '../x_design_tokens.dart';

class XEdgeInsets extends Equatable {
  final XSpacingsTokens _spacings;

  const XEdgeInsets(this._spacings);

  EdgeInsets get none => EdgeInsets.all(_spacings.none);

  EdgeInsets all(final XSpacings value) => EdgeInsets.all(value.toDouble(_spacings));

  EdgeInsets symmetric({
    final XSpacings? vertical,
    final XSpacings? horizontal,
  }) =>
      EdgeInsets.symmetric(
        horizontal: (horizontal ?? XSpacings.none).toDouble(_spacings),
        vertical: (vertical ?? XSpacings.none).toDouble(_spacings),
      );

  EdgeInsets only({
    final XSpacings? left,
    final XSpacings? top,
    final XSpacings? right,
    final XSpacings? bottom,
  }) =>
      EdgeInsets.only(
        left: (left ?? XSpacings.none).toDouble(_spacings),
        top: (top ?? XSpacings.none).toDouble(_spacings),
        right: (right ?? XSpacings.none).toDouble(_spacings),
        bottom: (bottom ?? XSpacings.none).toDouble(_spacings),
      );

  // EdgeInsets get allSuperSmall => EdgeInsets.all(_spacings.superSmall);
  // EdgeInsets get allExtraSmall => EdgeInsets.all(_spacings.extraSmall);
  // EdgeInsets get allSmall => EdgeInsets.all(_spacings.small);
  // EdgeInsets get allSemiSmall => EdgeInsets.all(_spacings.semiSmall);
  // EdgeInsets get allMedium => EdgeInsets.all(_spacings.medium);
  // EdgeInsets get allSemiLarge => EdgeInsets.all(_spacings.semiLarge);
  // EdgeInsets get allLarge => EdgeInsets.all(_spacings.large);
  // EdgeInsets get allExtraLarge => EdgeInsets.all(_spacings.extraLarge);
  // EdgeInsets get allSuperLarge => EdgeInsets.all(_spacings.superLarge);

  // EdgeInsets get verticalSuperSmall =>
  //     EdgeInsets.symmetric(vertical: _spacings.superSmall);
  // EdgeInsets get verticalExtraSmall =>
  //     EdgeInsets.symmetric(vertical: _spacings.extraSmall);
  // EdgeInsets get verticalSmall => EdgeInsets.symmetric(vertical: _spacings.small);
  // EdgeInsets get verticalSemiSmall =>
  //     EdgeInsets.symmetric(vertical: _spacings.semiSmall);
  // EdgeInsets get verticalMedium =>
  //     EdgeInsets.symmetric(vertical: _spacings.medium);
  // EdgeInsets get verticalSemiLarge =>
  //     EdgeInsets.symmetric(vertical: _spacings.semiLarge);
  // EdgeInsets get verticalLarge => EdgeInsets.symmetric(vertical: _spacings.large);
  // EdgeInsets get verticalExtraLarge =>
  //     EdgeInsets.symmetric(vertical: _spacings.extraLarge);
  // EdgeInsets get verticalSuperLarge =>
  //     EdgeInsets.symmetric(vertical: _spacings.superLarge);

  // EdgeInsets get horizontalSuperSmall =>
  //     EdgeInsets.symmetric(horizontal: _spacings.superSmall);
  // EdgeInsets get horizontalExtraSmall =>
  //     EdgeInsets.symmetric(horizontal: _spacings.extraSmall);
  // EdgeInsets get horizontalSmall =>
  //     EdgeInsets.symmetric(horizontal: _spacings.small);
  // EdgeInsets get horizontalSemiSmall =>
  //     EdgeInsets.symmetric(horizontal: _spacings.semiSmall);
  // EdgeInsets get horizontalMedium =>
  //     EdgeInsets.symmetric(horizontal: _spacings.medium);
  // EdgeInsets get horizontalSemiLarge =>
  //     EdgeInsets.symmetric(horizontal: _spacings.semiLarge);
  // EdgeInsets get horizontalLarge =>
  //     EdgeInsets.symmetric(horizontal: _spacings.large);
  // EdgeInsets get horizontalExtraLarge =>
  //     EdgeInsets.symmetric(horizontal: _spacings.extraLarge);
  // EdgeInsets get horizontalSuperLarge =>
  //     EdgeInsets.symmetric(horizontal: _spacings.superLarge);

  @override
  List<Object?> get props => [
        _spacings.named('_spacings'),
      ];

  @override
  String toString() => '''
    XEdgeInsets(
      _spacings: $_spacings,
    )
  ''';
}
