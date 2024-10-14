part of '../../x_metrics_data.dart';

class XBorderRadii extends Equatable {
  final XRadiiData _radiiData;

  const XBorderRadii(this._radiiData);

  BorderRadius get none => XBorderRadius.none.toBorderRadius(_radiiData);

  BorderRadius all(XRadius radius) => XBorderRadius.all(radius).toBorderRadius(_radiiData);

  BorderRadius circular(XRadii radius) => XBorderRadius.circular(radius).toBorderRadius(_radiiData);

  BorderRadius vertical({XRadius top = XRadius.none, XRadius bottom = XRadius.none}) =>
      XBorderRadius.vertical(top: top, bottom: bottom).toBorderRadius(_radiiData);

  BorderRadius horizontal({XRadius left = XRadius.none, XRadius right = XRadius.none}) =>
      XBorderRadius.horizontal(left: left, right: right).toBorderRadius(_radiiData);

  BorderRadius only({
    XRadius topLeft = XRadius.none,
    XRadius topRight = XRadius.none,
    XRadius bottomLeft = XRadius.none,
    XRadius bottomRight = XRadius.none,
  }) =>
      XBorderRadius.only(
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
    XBorder(
      _radiiData: $_radiiData,
    )
  ''';
}
