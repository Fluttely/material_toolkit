// part of '../x_metrics_data.dart';

// class XRadius extends Equatable {
//   final XRadiiData _radii;

//   const XRadius(this._radii);

//   Radius get none => Radius.zero;

//   Radius circular(final XRadii value) => Radius.circular(value.toData(_radii));

//   Radius elliptical({
//     final XRadii? x,
//     final XRadii? y,
//   }) =>
//       Radius.elliptical(
//         (x ?? XRadii.none).toData(_radii),
//         (y ?? XRadii.none).toData(_radii),
//       );

//   @override
//   List<Object?> get props => [
//         _radii.named('_radii'),
//       ];

//   @override
//   String toString() => '''
//     XRadius(
//       _radii: $_radii,
//     )
//   ''';
// }
