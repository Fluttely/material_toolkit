part of '../resolvers.dart';

/// Converts [SpacingToken] values into Flutter [EdgeInsets].

/// Helper that maps spacing tokens to [EdgeInsets] instances.
class EdgeInsetsResolver extends Equatable {
  const EdgeInsetsResolver(this._spacings);
  final SpacingTokensData _spacings;

  EdgeInsets get none => EdgeInsets.all(_spacings.none);

  EdgeInsets all(final SpacingToken value) =>
      EdgeInsets.all(value.toDouble(_spacings));

  EdgeInsets symmetric({
    final SpacingToken? vertical,
    final SpacingToken? horizontal,
  }) => EdgeInsets.symmetric(
    horizontal: (horizontal ?? SpacingToken.none).toDouble(_spacings),
    vertical: (vertical ?? SpacingToken.none).toDouble(_spacings),
  );

  EdgeInsets only({
    final SpacingToken? left,
    final SpacingToken? top,
    final SpacingToken? right,
    final SpacingToken? bottom,
  }) => EdgeInsets.only(
    left: (left ?? SpacingToken.none).toDouble(_spacings),
    top: (top ?? SpacingToken.none).toDouble(_spacings),
    right: (right ?? SpacingToken.none).toDouble(_spacings),
    bottom: (bottom ?? SpacingToken.none).toDouble(_spacings),
  );

  // EdgeInsets get allExtraSmall => EdgeInsets.all(_spacings.extraSmall);
  // EdgeInsets get allSmall => EdgeInsets.all(_spacings.small);
  // EdgeInsets get allSemiSmall => EdgeInsets.all(_spacings.semiSmall);
  // EdgeInsets get allMedium => EdgeInsets.all(_spacings.medium);
  // EdgeInsets get allSemiLarge => EdgeInsets.all(_spacings.semiLarge);
  // EdgeInsets get allLarge => EdgeInsets.all(_spacings.large);
  // EdgeInsets get allExtraLarge => EdgeInsets.all(_spacings.extraLarge);
  // EdgeInsets get allSuperLarge => EdgeInsets.all(_spacings.superLarge);

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
    _spacings.tagged('_spacings'),
  ];

  @override
  String toString() =>
      '''
    EdgeInsetsResolver(
      _spacings: $_spacings,
    )
  ''';
}
