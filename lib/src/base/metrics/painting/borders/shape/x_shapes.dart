part of '../../../x_metrics_data.dart';

class XShapes extends Equatable {
  final XRadiiData _radiiData;

  const XShapes(this._radiiData);

  BoxShape get rectangleBoxShape => BoxShape.rectangle;
  BoxShape get circleBoxShape => BoxShape.circle;

  CircleBorder get circleBorder => const CircleBorder();
  StadiumBorder get stadiumBorder => const StadiumBorder();

  RoundedRectangleBorder roundedRectangleBorder({
    BorderSide borderSide = BorderSide.none,
    XBorderRadius borderRadius = XBorderRadius.none,
  }) =>
      XRoundedRectangleBorder(side: borderSide, borderRadius: borderRadius).toRoundedRectangleBorder(_radiiData);

  BeveledRectangleBorder beveledRectangleBorder({
    BorderSide borderSide = BorderSide.none,
    XBorderRadius borderRadius = XBorderRadius.none,
  }) =>
      XBeveledRectangleBorder(side: borderSide, borderRadius: borderRadius).toBeveledRectangleBorder(_radiiData);

  ContinuousRectangleBorder continuousRectangleBorder({
    BorderSide borderSide = BorderSide.none,
    XBorderRadius borderRadius = XBorderRadius.none,
  }) =>
      XContinuousRectangleBorder(side: borderSide, borderRadius: borderRadius).toContinuousRectangleBorder(_radiiData);

  @override
  List<Object?> get props => [
        _radiiData.named('_radiiData'),
      ];

  @override
  String toString() => '''
    XShapes(
      _radiiData: $_radiiData,
    )
  ''';
}
