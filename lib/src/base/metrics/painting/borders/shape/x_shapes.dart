part of '../../../x_metrics_data.dart';

class XShapes extends Equatable {
  final XRadiiData _radiiData;

  const XShapes(this._radiiData);

  BoxShape get rectangle => BoxShape.rectangle;
  BoxShape get circle => BoxShape.circle;

  CircleBorder get circleBorder => const CircleBorder();
  StadiumBorder get stadiumBorder => const StadiumBorder();

  RoundedRectangleBorder roundedRectangle({
    BorderSide borderSide = BorderSide.none,
    XBorderRadius borderRadius = XBorderRadius.none,
  }) =>
      XRoundedRectangleBorder(borderSide: borderSide, borderRadius: borderRadius).toRoundedRectangleBorder(_radiiData);
  // XBeveledRectangleBorders get beveledRectangle => XBeveledRectangleBorders(_radiiData);
  // XContinuousRectangleBorders get continuousRectangle => XContinuousRectangleBorders(_radiiData);

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
