part of '../../../x_metrics_data.dart';

class XContinuousRectangleBorders extends Equatable {
  final XBorderRadii _borderRadii;

  const XContinuousRectangleBorders(this._borderRadii);

  ContinuousRectangleBorder get none => ContinuousRectangleBorder(borderRadius: _borderRadii.none);
  ContinuousRectangleBorder get extraSmall => ContinuousRectangleBorder(borderRadius: _borderRadii.extraSmall);
  ContinuousRectangleBorder get small => ContinuousRectangleBorder(borderRadius: _borderRadii.small);
  ContinuousRectangleBorder get semiSmall => ContinuousRectangleBorder(borderRadius: _borderRadii.semiSmall);
  ContinuousRectangleBorder get medium => ContinuousRectangleBorder(borderRadius: _borderRadii.medium);
  ContinuousRectangleBorder get semiLarge => ContinuousRectangleBorder(borderRadius: _borderRadii.semiLarge);
  ContinuousRectangleBorder get large => ContinuousRectangleBorder(borderRadius: _borderRadii.large);
  ContinuousRectangleBorder get extraLarge => ContinuousRectangleBorder(borderRadius: _borderRadii.extraLarge);
  ContinuousRectangleBorder get superLarge => ContinuousRectangleBorder(borderRadius: _borderRadii.superLarge);

  @override
  List<Object?> get props => [
        _borderRadii.named('_borderRadii'),
      ];

  @override
  String toString() => '''
    XShapes(
      _borderRadii: $_borderRadii,
    )
  ''';
}
