part of '../../../design_tokens.dart';

class InputBorders extends Equatable {
  final Radii _radiiData;

  const InputBorders(this._radiiData);

  InputBorder get none => InputBorder.none;

  OutlineInputBorder outlineInputBorder({
    BorderSide borderSide = BorderSide.none,
    DesignBorderRadius borderRadius = DesignBorderRadius.none,
  }) =>
      OutlineInputBorderData(borderSide: borderSide, borderRadius: borderRadius)
          .toOutlineInputBorder(_radiiData);

  UnderlineInputBorder underlineInputBorder({
    BorderSide borderSide = BorderSide.none,
    DesignBorderRadius borderRadius = DesignBorderRadius.none,
  }) =>
      UnderlineInputBorderData(borderSide: borderSide, borderRadius: borderRadius)
          .toUnderlineInputBorder(_radiiData);

  @override
  List<Object?> get props => [
        _radiiData.named('_radiiData'),
      ];

  @override
  String toString() => '''
    InputBorders(
      _radiiData: $_radiiData,
    )
  ''';
}
