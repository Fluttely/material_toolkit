part of '../../x_metrics_data.dart';

class XBorderRadius extends Equatable {
  final XRadiiData _radii;

  const XBorderRadius(
    this._radii,
  );

  BorderRadius get none => BorderRadius.zero;

  BorderRadius all(final XRadius value) => BorderRadius.all(value.toRadius());

  BorderRadius circular(final XRadii value) => BorderRadius.circular(value.toData(_radii));

  BorderRadius vertical({
    final XRadius? top,
    final XRadius? bottom,
  }) =>
      BorderRadius.vertical(
        top: top?.toRadius() ?? XRadius.none,
        bottom: bottom?.toRadius() ?? XRadius.none,
      );

  BorderRadius horizontal({
    final XRadius? left,
    final XRadius? right,
  }) =>
      BorderRadius.horizontal(
        left: left?.toRadius() ?? XRadius.none,
        right: right?.toRadius() ?? XRadius.none,
      );

  BorderRadius only({
    final XRadius? topLeft,
    final XRadius? topRight,
    final XRadius? bottomLeft,
    final XRadius? bottomRight,
  }) =>
      BorderRadius.only(
        topLeft: topLeft?.toRadius() ?? XRadius.none,
        topRight: topRight?.toRadius() ?? XRadius.none,
        bottomLeft: bottomLeft?.toRadius() ?? XRadius.none,
        bottomRight: bottomRight?.toRadius() ?? XRadius.none,
      );

  BorderRadius copyWith({
    final XRadius? topLeft,
    final XRadius? topRight,
    final XRadius? bottomLeft,
    final XRadius? bottomRight,
  }) {
    return BorderRadius.only(
      topLeft: topLeft?.toRadius() ?? XRadius.none,
      topRight: topRight?.toRadius() ?? XRadius.none,
      bottomLeft: bottomLeft?.toRadius() ?? XRadius.none,
      bottomRight: bottomRight?.toRadius() ?? XRadius.none,
    );
  }

  @override
  List<Object?> get props => [
        _radii.named('_radii'),
      ];

  @override
  String toString() => '''
    XBorderRadius(
      _radii: $_radii,
    )
  ''';
}
