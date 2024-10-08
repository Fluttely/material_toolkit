part of '../../../x_metrics_data.dart';

class XUnderlineInputBorders extends Equatable {
  final XBorderRadii _borderRadii;

  const XUnderlineInputBorders(this._borderRadii);

  UnderlineInputBorder get none => UnderlineInputBorder(borderRadius: _borderRadii.none);
  UnderlineInputBorder get extraSmall => UnderlineInputBorder(borderRadius: _borderRadii.extraSmall);
  UnderlineInputBorder get small => UnderlineInputBorder(borderRadius: _borderRadii.small);
  UnderlineInputBorder get semiSmall => UnderlineInputBorder(borderRadius: _borderRadii.semiSmall);
  UnderlineInputBorder get medium => UnderlineInputBorder(borderRadius: _borderRadii.medium);
  UnderlineInputBorder get semiLarge => UnderlineInputBorder(borderRadius: _borderRadii.semiLarge);
  UnderlineInputBorder get large => UnderlineInputBorder(borderRadius: _borderRadii.large);
  UnderlineInputBorder get extraLarge => UnderlineInputBorder(borderRadius: _borderRadii.extraLarge);
  UnderlineInputBorder get superLarge => UnderlineInputBorder(borderRadius: _borderRadii.superLarge);

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
