part of '../../design_tokens.dart';

class BorderRadii extends Equatable {
  final Radii _radiiData;

  const BorderRadii(this._radiiData);

  BorderRadius get none => DesignBorderRadius.none.toBorderRadius(_radiiData);

  BorderRadius all(CornerRadius radius) =>
      DesignBorderRadius.all(radius).toBorderRadius(_radiiData);

  BorderRadius circular(RadiusLevel radius) =>
      DesignBorderRadius.circular(radius).toBorderRadius(_radiiData);

  BorderRadius vertical(
          {CornerRadius top = CornerRadius.none, CornerRadius bottom = CornerRadius.none}) =>
      DesignBorderRadius.vertical(top: top, bottom: bottom)
          .toBorderRadius(_radiiData);

  BorderRadius horizontal(
          {CornerRadius left = CornerRadius.none, CornerRadius right = CornerRadius.none}) =>
      DesignBorderRadius.horizontal(left: left, right: right)
          .toBorderRadius(_radiiData);

  BorderRadius only({
    CornerRadius topLeft = CornerRadius.none,
    CornerRadius topRight = CornerRadius.none,
    CornerRadius bottomLeft = CornerRadius.none,
    CornerRadius bottomRight = CornerRadius.none,
  }) =>
      DesignBorderRadius.only(
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight,
      ).toBorderRadius(_radiiData);

  @override
  List<Object?> get props => [
        _radiiData.named('_radiiData'),
      ];

  @override
  String toString() => '''
    BorderRadii(
      _radiiData: $_radiiData,
    )
  ''';
}
