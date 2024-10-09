part of '../../x_metrics_data.dart';

class XBorderRadius extends Equatable {
  final XRadiiData _radiiData;

  const XBorderRadius(this._radiiData);

  BorderRadius get none => BorderRadius.zero;

  BorderRadius all(final XRadius value) => BorderRadius.all(value.toRadius(_radiiData));

  BorderRadius circular(final XRadii value) => BorderRadius.circular(value.toData(_radiiData));

  BorderRadius vertical({
    final XRadius? top,
    final XRadius? bottom,
  }) =>
      BorderRadius.vertical(
        top: top?.toRadius(_radiiData) ?? XRadius.none.toRadius(_radiiData),
        bottom: bottom?.toRadius(_radiiData) ?? XRadius.none.toRadius(_radiiData),
      );

  BorderRadius horizontal({
    final XRadius? left,
    final XRadius? right,
  }) =>
      BorderRadius.horizontal(
        left: left?.toRadius(_radiiData) ?? XRadius.none.toRadius(_radiiData),
        right: right?.toRadius(_radiiData) ?? XRadius.none.toRadius(_radiiData),
      );

  BorderRadius only({
    final XRadius? topLeft,
    final XRadius? topRight,
    final XRadius? bottomLeft,
    final XRadius? bottomRight,
  }) =>
      BorderRadius.only(
        topLeft: topLeft?.toRadius(_radiiData) ?? XRadius.none.toRadius(_radiiData),
        topRight: topRight?.toRadius(_radiiData) ?? XRadius.none.toRadius(_radiiData),
        bottomLeft: bottomLeft?.toRadius(_radiiData) ?? XRadius.none.toRadius(_radiiData),
        bottomRight: bottomRight?.toRadius(_radiiData) ?? XRadius.none.toRadius(_radiiData),
      );

  BorderRadius copyWith({
    final XRadius? topLeft,
    final XRadius? topRight,
    final XRadius? bottomLeft,
    final XRadius? bottomRight,
  }) {
    return BorderRadius.only(
      topLeft: topLeft?.toRadius(_radiiData) ?? XRadius.none.toRadius(_radiiData),
      topRight: topRight?.toRadius(_radiiData) ?? XRadius.none.toRadius(_radiiData),
      bottomLeft: bottomLeft?.toRadius(_radiiData) ?? XRadius.none.toRadius(_radiiData),
      bottomRight: bottomRight?.toRadius(_radiiData) ?? XRadius.none.toRadius(_radiiData),
    );
  }

  @override
  List<Object?> get props => [
        _radiiData.named('_radii'),
      ];

  @override
  String toString() => '''
    XBorderRadius(
      _radii: $_radiiData,
    )
  ''';
}
