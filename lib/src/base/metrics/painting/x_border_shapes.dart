part of '../x_metrics_data.dart';

class XBorderShapes extends Equatable {
  final XBorderRadii _borderRadius;

  const XBorderShapes(this._borderRadius);

  RoundedRectangleBorder get none => RoundedRectangleBorder(borderRadius: _borderRadius.none);
  RoundedRectangleBorder get extraSmall => RoundedRectangleBorder(borderRadius: _borderRadius.extraSmall);
  RoundedRectangleBorder get small => RoundedRectangleBorder(borderRadius: _borderRadius.small);
  RoundedRectangleBorder get semiSmall => RoundedRectangleBorder(borderRadius: _borderRadius.semiSmall);
  RoundedRectangleBorder get medium => RoundedRectangleBorder(borderRadius: _borderRadius.medium);
  RoundedRectangleBorder get semiLarge => RoundedRectangleBorder(borderRadius: _borderRadius.semiLarge);
  RoundedRectangleBorder get large => RoundedRectangleBorder(borderRadius: _borderRadius.large);
  RoundedRectangleBorder get extraLarge => RoundedRectangleBorder(borderRadius: _borderRadius.extraLarge);
  RoundedRectangleBorder get superLarge => RoundedRectangleBorder(borderRadius: _borderRadius.superLarge);

  BoxShape get rectangle => BoxShape.rectangle;
  BoxShape get circle => BoxShape.circle;

  CircleBorder get circleBorder => const CircleBorder();
  StadiumBorder get stadiumBorder => const StadiumBorder();

  @override
  List<Object?> get props => [
        _borderRadius.named('_borderRadius'),
      ];

  @override
  String toString() => '''
    XShapes(
      _borderRadius: $_borderRadius,
    )
  ''';
}
