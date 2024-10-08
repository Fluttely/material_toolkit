part of '../x_metrics_data.dart';

class XRadius {
  final XRadiiData _radiiData;

  XRadius(this._radiiData);

  double? _radius;
  double? _x;
  double? _y;
  bool isNone = true;
  bool isCircular = false;
  bool isElliptical = false;

  static Radius get none => Radius.zero;
  //   isNone = true;
  //   isCircular = false;
  //   isElliptical = false;
  // }

  void circular(final XRadii radii) {
    _radius = radii.toData(_radiiData);
    isNone = false;
    isCircular = true;
    isElliptical = false;
  }

  void elliptical(
    final XRadii? x,
    final XRadii? y,
  ) {
    _x = x?.toData(_radiiData);
    _y = y?.toData(_radiiData);
    isNone = false;
    isCircular = false;
    isElliptical = true;
  }

  Radius toRadius() {
    if (isNone) {
      return Radius.zero;
    } else if (isCircular) {
      return Radius.circular(_radius!);
    } else if (isElliptical) {
      return Radius.elliptical(_x!, _y!);
    } else {
      return Radius.zero;
    }
  }
}
