part of '../../../x_design_tokens.dart';

class XInputBorderResolver extends Equatable {
  final XRadiiTokens _radiiTokens;

  const XInputBorderResolver(this._radiiTokens);

  InputBorder get none => InputBorder.none;

  OutlineInputBorder outlineInputBorder({
    BorderSide borderSide = BorderSide.none,
    XBorderRadius borderRadius = XBorderRadius.none,
  }) =>
      XOutlineInputBorder(borderSide: borderSide, borderRadius: borderRadius).toOutlineInputBorder(_radiiTokens);

  UnderlineInputBorder underlineInputBorder({
    BorderSide borderSide = BorderSide.none,
    XBorderRadius borderRadius = XBorderRadius.none,
  }) =>
      XUnderlineInputBorder(borderSide: borderSide, borderRadius: borderRadius).toUnderlineInputBorder(_radiiTokens);

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
