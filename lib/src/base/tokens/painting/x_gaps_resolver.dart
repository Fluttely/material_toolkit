part of '../x_design_tokens.dart';

/// Creates [Gap] widgets based on spacing tokens.

/// Utility for generating consistent gaps between widgets.
class XGapsResolver extends Equatable {
  const XGapsResolver(this._spacings);
  final XSpacingsTokens _spacings;

  Gap get none => Gap(_spacings.none);
  Gap get superSmall => Gap(_spacings.superSmall);
  Gap get extraSmall => Gap(_spacings.extraSmall);
  Gap get small => Gap(_spacings.small);
  Gap get semiSmall => Gap(_spacings.semiSmall);
  Gap get medium => Gap(_spacings.medium);
  Gap get semiLarge => Gap(_spacings.semiLarge);
  Gap get large => Gap(_spacings.large);
  Gap get extraLarge => Gap(_spacings.extraLarge);
  Gap get superLarge => Gap(_spacings.superLarge);

  // Gap get x64 => Gap(_spacings.x64);

  @override
  List<Object?> get props => [
        _spacings.named('_spacings'),
      ];

  @override
  String toString() => '''
    XGaps(
      _spacings: $_spacings,
    )
  ''';
}
