part of '../../x_metrics_data.dart';

class XRadiusController extends Equatable {
  final XRadiiData _radiiData;

  const XRadiusController(this._radiiData);

  Radius get none => XRadius.none.toRadius(_radiiData);

  Radius circular(XRadii radius) =>
      XRadius.circular(radius).toRadius(_radiiData);
  Radius elliptical(XRadii x, XRadii y) =>
      XRadius.elliptical(x, y).toRadius(_radiiData);

  @override
  List<Object?> get props => [
        _radiiData.named('_radiiData'),
      ];

  @override
  String toString() => '''
    XRadiusController(
      _radiiData: $_radiiData,
    )
  ''';
}
