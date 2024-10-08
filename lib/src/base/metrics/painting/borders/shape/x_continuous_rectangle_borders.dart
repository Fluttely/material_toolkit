part of '../../../x_metrics_data.dart';

class XContinuousRectangleBorders extends Equatable {
  final XBorderRadii _borderRadii;

  const XContinuousRectangleBorders(this._borderRadii);

  ContinuousRectangleBorder get none => ContinuousRectangleBorder(borderRadius: _borderRadii.none);
  ContinuousRectangleBorder get extraSmall =>
      ContinuousRectangleBorder(borderRadius: _borderRadii.all(XRadii.extraSmall));
  ContinuousRectangleBorder get small => ContinuousRectangleBorder(borderRadius: _borderRadii.all(XRadii.small));
  ContinuousRectangleBorder get semiSmall =>
      ContinuousRectangleBorder(borderRadius: _borderRadii.all(XRadii.semiSmall));
  ContinuousRectangleBorder get medium => ContinuousRectangleBorder(borderRadius: _borderRadii.all(XRadii.medium));
  ContinuousRectangleBorder get semiLarge =>
      ContinuousRectangleBorder(borderRadius: _borderRadii.all(XRadii.semiLarge));
  ContinuousRectangleBorder get large => ContinuousRectangleBorder(borderRadius: _borderRadii.all(XRadii.large));
  ContinuousRectangleBorder get extraLarge =>
      ContinuousRectangleBorder(borderRadius: _borderRadii.all(XRadii.extraLarge));
  ContinuousRectangleBorder get superLarge =>
      ContinuousRectangleBorder(borderRadius: _borderRadii.all(XRadii.superLarge));

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
