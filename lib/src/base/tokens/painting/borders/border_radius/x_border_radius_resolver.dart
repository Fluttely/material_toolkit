part of '../../../x_design_tokens.dart';

class XBorderRadiusResolver extends Equatable {
  const XBorderRadiusResolver(this._radiiTokens);
  final XRadiiTokens _radiiTokens;

  BorderRadius get none => XBorderRadius.none.toBorderRadius(_radiiTokens);

  BorderRadius all(XRadius radius) =>
      XBorderRadius.all(radius).toBorderRadius(_radiiTokens);

  BorderRadius circular(XRadii radius) =>
      XBorderRadius.circular(radius).toBorderRadius(_radiiTokens);

  BorderRadius vertical(
          {XRadius top = XRadius.none, XRadius bottom = XRadius.none}) =>
      XBorderRadius.vertical(top: top, bottom: bottom)
          .toBorderRadius(_radiiTokens);

  BorderRadius horizontal(
          {XRadius left = XRadius.none, XRadius right = XRadius.none}) =>
      XBorderRadius.horizontal(left: left, right: right)
          .toBorderRadius(_radiiTokens);

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
      ).toBorderRadius(_radiiTokens);

  @override
  List<Object?> get props => [
        _radiiTokens.named('_radiiTokens'),
      ];

  @override
  String toString() => '''
    XBorder(
      _radiiTokens: $_radiiTokens,
    )
  ''';
}
