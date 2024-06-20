part of '../x_metrics_data.dart';

class XGaps extends Equatable {
  final XSpacesData _spaces;

  const XGaps(this._spaces);

  Gap get none => Gap(_spaces.none);
  Gap get superSmall => Gap(_spaces.superSmall);
  Gap get extraSmall => Gap(_spaces.extraSmall);
  Gap get small => Gap(_spaces.small);
  Gap get semiSmall => Gap(_spaces.semiSmall);
  Gap get medium => Gap(_spaces.medium);
  Gap get semiLarge => Gap(_spaces.semiLarge);
  Gap get large => Gap(_spaces.large);
  Gap get extraLarge => Gap(_spaces.extraLarge);
  Gap get superLarge => Gap(_spaces.superLarge);

  @override
  List<Object?> get props => [
        _spaces.named('_spaces'),
      ];

  @override
  String toString() => '''
    XGaps(
      _spaces: $_spaces,
    )
  ''';
}
