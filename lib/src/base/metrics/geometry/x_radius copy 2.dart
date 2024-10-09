// part of '../x_metrics_data.dart';

// class XRadius extends Radius {
//   final XRadiiData _radiiData;

//   const XRadius(this._radiiData);
//   // final XRadiiData _radiiData; // Singleton ou valor padrão

//   // TODO(chatGPT): preciso injetar o _radiiData de maneira invisivel
//   XRadius.circular(
//     final XRadii radii,
//   )   : _radiiData = const XRadiiData(),
//         super.circular(radii.toData(_radiiData));

//   XRadius.elliptical(
//     final XRadii? x,
//     final XRadii? y,
//   ) : super.elliptical(
//           (x ?? XRadii.none).toData(_radiiData),
//           (y ?? XRadii.none).toData(_radiiData),
//         );

//   // XRadius get none => XRadius.zero;

//   // XRadius.circular(final XRadii value) => XRadius.circular(value.toData(_radiiData));

//   // XRadius elliptical({
//   //   final XRadii? x,
//   //   final XRadii? y,
//   // }) =>
//   //     XRadius.elliptical(
//   //       (x ?? XRadii.none).toData(_radiiData),
//   //       (y ?? XRadii.none).toData(_radiiData),
//   //     );

//   // @override
//   // List<Object?> get props => [
//   //       _radiiData.named('_radiiData'),
//   //     ];

//   // @override
//   // String toString() => '''
//   //   XRadius(
//   //     _radiiData: $_radiiData,
//   //   )
//   // ''';
// }
