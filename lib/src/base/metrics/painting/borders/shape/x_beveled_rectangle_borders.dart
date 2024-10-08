part of '../../../x_metrics_data.dart';

class XBeveledRectangleBorders extends Equatable {
  final XBorderRadii _borderRadii;

  const XBeveledRectangleBorders(this._borderRadii);

  BeveledRectangleBorder get none => BeveledRectangleBorder(borderRadius: _borderRadii.none);
  BeveledRectangleBorder get extraSmall => BeveledRectangleBorder(borderRadius: _borderRadii.all(XRadii.extraSmall));
  BeveledRectangleBorder get small => BeveledRectangleBorder(borderRadius: _borderRadii.all(XRadii.small));
  BeveledRectangleBorder get semiSmall => BeveledRectangleBorder(borderRadius: _borderRadii.all(XRadii.semiSmall));
  BeveledRectangleBorder get medium => BeveledRectangleBorder(borderRadius: _borderRadii.all(XRadii.medium));
  BeveledRectangleBorder get semiLarge => BeveledRectangleBorder(borderRadius: _borderRadii.all(XRadii.semiLarge));
  BeveledRectangleBorder get large => BeveledRectangleBorder(borderRadius: _borderRadii.all(XRadii.large));
  BeveledRectangleBorder get extraLarge => BeveledRectangleBorder(borderRadius: _borderRadii.all(XRadii.extraLarge));
  BeveledRectangleBorder get superLarge => BeveledRectangleBorder(borderRadius: _borderRadii.all(XRadii.superLarge));

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
