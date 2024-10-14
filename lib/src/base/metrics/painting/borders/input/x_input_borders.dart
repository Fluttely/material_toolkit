part of '../../../x_metrics_data.dart';

class XInputBorders extends Equatable {
  final XRadiiData _radiiData;

  const XInputBorders(this._radiiData);

  InputBorder get none => InputBorder.none;

  OutlineInputBorder outlineInputBorder({
    BorderSide borderSide = BorderSide.none,
    XBorderRadius borderRadius = XBorderRadius.none,
  }) =>
      XOutlineInputBorder(borderSide: borderSide, borderRadius: borderRadius).toOutlineInputBorder(_radiiData);

  UnderlineInputBorder underlineInputBorder({
    BorderSide borderSide = BorderSide.none,
    XBorderRadius borderRadius = XBorderRadius.none,
  }) =>
      XUnderlineInputBorder(borderSide: borderSide, borderRadius: borderRadius).toUnderlineInputBorder(_radiiData);

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
