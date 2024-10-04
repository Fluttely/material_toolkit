part of '../x_metrics_data.dart';

// TODO: NOW, enums and functions like XPadding class
class XBorderRadii extends Equatable {
  final XRadiiData _radius;

  const XBorderRadii(this._radius);

  BorderRadius get none => BorderRadius.all(_radius.none);
  BorderRadius get extraSmall => BorderRadius.all(_radius.extraSmall);
  BorderRadius get small => BorderRadius.all(_radius.small);
  BorderRadius get semiSmall => BorderRadius.all(_radius.semiSmall);
  BorderRadius get medium => BorderRadius.all(_radius.medium);
  BorderRadius get semiLarge => BorderRadius.all(_radius.semiLarge);
  BorderRadius get large => BorderRadius.all(_radius.large);
  BorderRadius get extraLarge => BorderRadius.all(_radius.extraLarge);
  BorderRadius get superLarge => BorderRadius.all(_radius.superLarge);

  @override
  List<Object?> get props => [
        _radius.named('_radius'),
      ];

  @override
  String toString() => '''
    XBorderRadii(
      _radius: $_radius,
    )
  ''';
}
