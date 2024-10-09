// part of '../../../x_metrics_data.dart';

// class XRoundedRectangleBorder extends Equatable {
//   final XBorderRadii _borderRadii;

//   const XRoundedRectangleBorder(this._borderRadii);

//   RoundedRectangleBorder get none => RoundedRectangleBorder(borderRadius: _borderRadii.none);

//   RoundedRectangleBorder all(final XRadii value) => RoundedRectangleBorder(
//     borderRadius: _borderRadii.none
    
//     value.toRadius(_spaces));

//   RoundedRectangleBorder symmetric({
//     final XRadii? vertical,
//     final XRadii? horizontal,
//   }) =>
//       RoundedRectangleBorder.symmetric(
//         horizontal: (horizontal ?? XRadii.none).toRadius(_spaces),
//         vertical: (vertical ?? XRadii.none).toRadius(_spaces),
//       );

//   RoundedRectangleBorder only({
//     final XRadii? left,
//     final XRadii? top,
//     final XRadii? right,
//     final XRadii? bottom,
//   }) =>
//       RoundedRectangleBorder.only(
//         left: (left ?? XRadii.none).toRadius(_spaces),
//         top: (top ?? XRadii.none).toRadius(_spaces),
//         right: (right ?? XRadii.none).toRadius(_spaces),
//         bottom: (bottom ?? XRadii.none).toRadius(_spaces),
//       );

//   // RoundedRectangleBorder get allSuperSmall => RoundedRectangleBorder.all(_spaces.superSmall);
//   // RoundedRectangleBorder get allExtraSmall => RoundedRectangleBorder.all(_spaces.extraSmall);
//   // RoundedRectangleBorder get allSmall => RoundedRectangleBorder.all(_spaces.small);
//   // RoundedRectangleBorder get allSemiSmall => RoundedRectangleBorder.all(_spaces.semiSmall);
//   // RoundedRectangleBorder get allMedium => RoundedRectangleBorder.all(_spaces.medium);
//   // RoundedRectangleBorder get allSemiLarge => RoundedRectangleBorder.all(_spaces.semiLarge);
//   // RoundedRectangleBorder get allLarge => RoundedRectangleBorder.all(_spaces.large);
//   // RoundedRectangleBorder get allExtraLarge => RoundedRectangleBorder.all(_spaces.extraLarge);
//   // RoundedRectangleBorder get allSuperLarge => RoundedRectangleBorder.all(_spaces.superLarge);

//   // RoundedRectangleBorder get verticalSuperSmall =>
//   //     RoundedRectangleBorder.symmetric(vertical: _spaces.superSmall);
//   // RoundedRectangleBorder get verticalExtraSmall =>
//   //     RoundedRectangleBorder.symmetric(vertical: _spaces.extraSmall);
//   // RoundedRectangleBorder get verticalSmall => RoundedRectangleBorder.symmetric(vertical: _spaces.small);
//   // RoundedRectangleBorder get verticalSemiSmall =>
//   //     RoundedRectangleBorder.symmetric(vertical: _spaces.semiSmall);
//   // RoundedRectangleBorder get verticalMedium =>
//   //     RoundedRectangleBorder.symmetric(vertical: _spaces.medium);
//   // RoundedRectangleBorder get verticalSemiLarge =>
//   //     RoundedRectangleBorder.symmetric(vertical: _spaces.semiLarge);
//   // RoundedRectangleBorder get verticalLarge => RoundedRectangleBorder.symmetric(vertical: _spaces.large);
//   // RoundedRectangleBorder get verticalExtraLarge =>
//   //     RoundedRectangleBorder.symmetric(vertical: _spaces.extraLarge);
//   // RoundedRectangleBorder get verticalSuperLarge =>
//   //     RoundedRectangleBorder.symmetric(vertical: _spaces.superLarge);

//   // RoundedRectangleBorder get horizontalSuperSmall =>
//   //     RoundedRectangleBorder.symmetric(horizontal: _spaces.superSmall);
//   // RoundedRectangleBorder get horizontalExtraSmall =>
//   //     RoundedRectangleBorder.symmetric(horizontal: _spaces.extraSmall);
//   // RoundedRectangleBorder get horizontalSmall =>
//   //     RoundedRectangleBorder.symmetric(horizontal: _spaces.small);
//   // RoundedRectangleBorder get horizontalSemiSmall =>
//   //     RoundedRectangleBorder.symmetric(horizontal: _spaces.semiSmall);
//   // RoundedRectangleBorder get horizontalMedium =>
//   //     RoundedRectangleBorder.symmetric(horizontal: _spaces.medium);
//   // RoundedRectangleBorder get horizontalSemiLarge =>
//   //     RoundedRectangleBorder.symmetric(horizontal: _spaces.semiLarge);
//   // RoundedRectangleBorder get horizontalLarge =>
//   //     RoundedRectangleBorder.symmetric(horizontal: _spaces.large);
//   // RoundedRectangleBorder get horizontalExtraLarge =>
//   //     RoundedRectangleBorder.symmetric(horizontal: _spaces.extraLarge);
//   // RoundedRectangleBorder get horizontalSuperLarge =>
//   //     RoundedRectangleBorder.symmetric(horizontal: _spaces.superLarge);

//   @override
//   List<Object?> get props => [
//         _spaces.named('_spaces'),
//       ];

//   @override
//   String toString() => '''
//     XEdgeInsetasdasd(
//       _spaces: $_spaces,
//     )
//   ''';
// }
