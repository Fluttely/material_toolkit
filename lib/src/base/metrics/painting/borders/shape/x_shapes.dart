part of '../../../design_tokens.dart';

class Shapes extends Equatable {
  final Radii _radiiData;

  const Shapes(this._radiiData);

  BoxShape get rectangleBoxShape => BoxShape.rectangle;
  BoxShape get circleBoxShape => BoxShape.circle;

  CircleBorder get circleBorder => const CircleBorder();
  StadiumBorder get stadiumBorder => const StadiumBorder();

  RoundedRectangleBorder roundedRectangleBorder({
    BorderSide borderSide = BorderSide.none,
    DesignBorderRadius borderRadius = DesignBorderRadius.none,
  }) =>
      RoundedRectangleBorderData(
              borderSide: borderSide, borderRadius: borderRadius)
          .toRoundedRectangleBorder(_radiiData);

  BeveledRectangleBorder beveledRectangleBorder({
    BorderSide borderSide = BorderSide.none,
    DesignBorderRadius borderRadius = DesignBorderRadius.none,
  }) =>
      BeveledRectangleBorderData(
              borderSide: borderSide, borderRadius: borderRadius)
          .toBeveledRectangleBorder(_radiiData);

  ContinuousRectangleBorder continuousRectangleBorder({
    BorderSide borderSide = BorderSide.none,
    DesignBorderRadius borderRadius = DesignBorderRadius.none,
  }) =>
      ContinuousRectangleBorderData(
              borderSide: borderSide, borderRadius: borderRadius)
          .toContinuousRectangleBorder(_radiiData);

  @override
  List<Object?> get props => [
        _radiiData.named('_radiiData'),
      ];

  @override
  String toString() => '''
    Shapes(
      _radiiData: $_radiiData,
    )
  ''';
}
