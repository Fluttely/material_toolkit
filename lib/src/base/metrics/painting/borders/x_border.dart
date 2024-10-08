// part of '../../x_metrics_data.dart';

// class XBorder extends Equatable {
//   final XSpacesData _spaces;

//   const XBorder(this._spaces);

//   Border get none => Border.all(_spaces.none);

//   Border all(final XSpaces value) => Border.all(value.toDouble(_spaces));

//   Border symmetric({
//     final XSpaces? vertical,
//     final XSpaces? horizontal,
//   }) =>
//       Border.symmetric(
//         horizontal: (horizontal ?? XSpaces.none).toDouble(_spaces),
//         vertical: (vertical ?? XSpaces.none).toDouble(_spaces),
//       );

//   Border only({
//     final XSpaces? left,
//     final XSpaces? top,
//     final XSpaces? right,
//     final XSpaces? bottom,
//   }) =>
//       Border.only(
//         left: (left ?? XSpaces.none).toDouble(_spaces),
//         top: (top ?? XSpaces.none).toDouble(_spaces),
//         right: (right ?? XSpaces.none).toDouble(_spaces),
//         bottom: (bottom ?? XSpaces.none).toDouble(_spaces),
//       );

//   // Border get allSuperSmall => Border.all(_spaces.superSmall);
//   // Border get allExtraSmall => Border.all(_spaces.extraSmall);
//   // Border get allSmall => Border.all(_spaces.small);
//   // Border get allSemiSmall => Border.all(_spaces.semiSmall);
//   // Border get allMedium => Border.all(_spaces.medium);
//   // Border get allSemiLarge => Border.all(_spaces.semiLarge);
//   // Border get allLarge => Border.all(_spaces.large);
//   // Border get allExtraLarge => Border.all(_spaces.extraLarge);
//   // Border get allSuperLarge => Border.all(_spaces.superLarge);

//   // Border get verticalSuperSmall =>
//   //     Border.symmetric(vertical: _spaces.superSmall);
//   // Border get verticalExtraSmall =>
//   //     Border.symmetric(vertical: _spaces.extraSmall);
//   // Border get verticalSmall => Border.symmetric(vertical: _spaces.small);
//   // Border get verticalSemiSmall =>
//   //     Border.symmetric(vertical: _spaces.semiSmall);
//   // Border get verticalMedium =>
//   //     Border.symmetric(vertical: _spaces.medium);
//   // Border get verticalSemiLarge =>
//   //     Border.symmetric(vertical: _spaces.semiLarge);
//   // Border get verticalLarge => Border.symmetric(vertical: _spaces.large);
//   // Border get verticalExtraLarge =>
//   //     Border.symmetric(vertical: _spaces.extraLarge);
//   // Border get verticalSuperLarge =>
//   //     Border.symmetric(vertical: _spaces.superLarge);

//   // Border get horizontalSuperSmall =>
//   //     Border.symmetric(horizontal: _spaces.superSmall);
//   // Border get horizontalExtraSmall =>
//   //     Border.symmetric(horizontal: _spaces.extraSmall);
//   // Border get horizontalSmall =>
//   //     Border.symmetric(horizontal: _spaces.small);
//   // Border get horizontalSemiSmall =>
//   //     Border.symmetric(horizontal: _spaces.semiSmall);
//   // Border get horizontalMedium =>
//   //     Border.symmetric(horizontal: _spaces.medium);
//   // Border get horizontalSemiLarge =>
//   //     Border.symmetric(horizontal: _spaces.semiLarge);
//   // Border get horizontalLarge =>
//   //     Border.symmetric(horizontal: _spaces.large);
//   // Border get horizontalExtraLarge =>
//   //     Border.symmetric(horizontal: _spaces.extraLarge);
//   // Border get horizontalSuperLarge =>
//   //     Border.symmetric(horizontal: _spaces.superLarge);

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
