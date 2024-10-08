part of '../../../x_metrics_data.dart';

class XOutlineInputBorders extends Equatable {
  final XBorderRadii _borderRadii;

  const XOutlineInputBorders(this._borderRadii);

  OutlineInputBorder get none => OutlineInputBorder(borderRadius: _borderRadii.none);
  OutlineInputBorder get extraSmall => OutlineInputBorder(borderRadius: _borderRadii.extraSmall);
  OutlineInputBorder get small => OutlineInputBorder(borderRadius: _borderRadii.small);
  OutlineInputBorder get semiSmall => OutlineInputBorder(borderRadius: _borderRadii.semiSmall);
  OutlineInputBorder get medium => OutlineInputBorder(borderRadius: _borderRadii.medium);
  OutlineInputBorder get semiLarge => OutlineInputBorder(borderRadius: _borderRadii.semiLarge);
  OutlineInputBorder get large => OutlineInputBorder(borderRadius: _borderRadii.large);
  OutlineInputBorder get extraLarge => OutlineInputBorder(borderRadius: _borderRadii.extraLarge);
  OutlineInputBorder get superLarge => OutlineInputBorder(borderRadius: _borderRadii.superLarge);

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
