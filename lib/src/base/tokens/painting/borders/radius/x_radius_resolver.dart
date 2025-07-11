part of '../../../x_design_tokens.dart';

class XRadiusResolver extends Equatable {
  const XRadiusResolver(this._radiiTokens);
  final XRadiiTokens _radiiTokens;

  Radius get none => XRadius.none.toRadius(_radiiTokens);

  Radius circular(XRadii radius) =>
      XRadius.circular(radius).toRadius(_radiiTokens);
  Radius elliptical(XRadii x, XRadii y) =>
      XRadius.elliptical(x, y).toRadius(_radiiTokens);

  @override
  List<Object?> get props => [
        _radiiTokens.named('_radiiTokens'),
      ];

  @override
  String toString() => '''
    XRadiusController(
      _radiiTokens: $_radiiTokens,
    )
  ''';
}
