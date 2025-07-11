part of '../../design_tokens.dart';

class CornerRadiusController extends Equatable {
  final Radii _radiiData;

  const CornerRadiusController(this._radiiData);

  Radius get none => CornerRadius.none.toRadius(_radiiData);

  Radius circular(RadiusLevel radius) =>
      CornerRadius.circular(radius).toRadius(_radiiData);
  Radius elliptical(RadiusLevel x, RadiusLevel y) =>
      CornerRadius.elliptical(x, y).toRadius(_radiiData);

  @override
  List<Object?> get props => [
        _radiiData.named('_radiiData'),
      ];

  @override
  String toString() => '''
    CornerRadiusController(
      _radiiData: $_radiiData,
    )
  ''';
}
