part of '../../../x_design_tokens.dart';

class XShapeResolver extends Equatable {
  final XRadiiTokens _radiiTokens;

  const XShapeResolver(this._radiiTokens);

  BoxShape get rectangleBoxShape => BoxShape.rectangle;
  BoxShape get circleBoxShape => BoxShape.circle;

  CircleBorder get circleBorder => const CircleBorder();
  StadiumBorder get stadiumBorder => const StadiumBorder();

  RoundedRectangleBorder roundedRectangleBorder({
    BorderSide borderSide = BorderSide.none,
    XBorderRadius borderRadius = XBorderRadius.none,
  }) =>
      XRoundedRectangleBorder(borderSide: borderSide, borderRadius: borderRadius)
          .toRoundedRectangleBorder(_radiiTokens);

  BeveledRectangleBorder beveledRectangleBorder({
    BorderSide borderSide = BorderSide.none,
    XBorderRadius borderRadius = XBorderRadius.none,
  }) =>
      XBeveledRectangleBorder(borderSide: borderSide, borderRadius: borderRadius)
          .toBeveledRectangleBorder(_radiiTokens);

  ContinuousRectangleBorder continuousRectangleBorder({
    BorderSide borderSide = BorderSide.none,
    XBorderRadius borderRadius = XBorderRadius.none,
  }) =>
      XContinuousRectangleBorder(borderSide: borderSide, borderRadius: borderRadius)
          .toContinuousRectangleBorder(_radiiTokens);

  @override
  List<Object?> get props => [
        _radiiTokens.named('_radiiTokens'),
      ];

  @override
  String toString() => '''
    XShapes(
      _radiiTokens: $_radiiTokens,
    )
  ''';
}
