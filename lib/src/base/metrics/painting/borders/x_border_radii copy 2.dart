// part of 'x_border_radii copy 2.dart';

// class XBorderRadii extends Equatable {
//   final XRadiiData _radii;

//   const XBorderRadii(this._radii);

//   BorderRadius get none => BorderRadius.all(_radii.none);

//   BorderRadius all(final XRadii value) => BorderRadius.all(value.toRadius(_radii));

//   BorderRadius circular(final XRadii value) => BorderRadius.circular(
//         value.toRadius(_radii).x,
//       );

//   BorderRadius vertical({
//     final XRadii? top,
//     final XRadii? bottom,
//   }) =>
//       BorderRadius.vertical(
//         top: (top ?? XRadii.none).toRadius(_radii),
//         bottom: (bottom ?? XRadii.none).toRadius(_radii),
//       );

//   BorderRadius horizontal({
//     final XRadii? left,
//     final XRadii? right,
//   }) =>
//       BorderRadius.horizontal(
//         left: (left ?? XRadii.none).toRadius(_radii),
//         right: (right ?? XRadii.none).toRadius(_radii),
//       );

//   BorderRadius only({
//     final XRadii? topLeft,
//     final XRadii? topRight,
//     final XRadii? bottomLeft,
//     final XRadii? bottomRight,
//   }) =>
//       BorderRadius.only(
//         topLeft: (topLeft ?? XRadii.none).toRadius(_radii),
//         topRight: (topRight ?? XRadii.none).toRadius(_radii),
//         bottomLeft: (bottomLeft ?? XRadii.none).toRadius(_radii),
//         bottomRight: (bottomRight ?? XRadii.none).toRadius(_radii),
//       );

//   BorderRadius copyWith({
//     final XRadii? topLeft,
//     final XRadii? topRight,
//     final XRadii? bottomLeft,
//     final XRadii? bottomRight,
//   }) {
//     return BorderRadius.only(
//       topLeft: (topLeft ?? XRadii.none).toRadius(_radii),
//       topRight: (topRight ?? XRadii.none).toRadius(_radii),
//       bottomLeft: (bottomLeft ?? XRadii.none).toRadius(_radii),
//       bottomRight: (bottomRight ?? XRadii.none).toRadius(_radii),
//     );
//   }

//   @override
//   List<Object?> get props => [
//         _radii.named('_radii'),
//       ];

//   @override
//   String toString() => '''
//     XBorderRadius(
//       _radii: $_radii,
//     )
//   ''';
// }
