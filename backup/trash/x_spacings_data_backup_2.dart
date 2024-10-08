// part of '../x_metrics_data.dart';

// class XspacesData extends Equatable {
//   final double none;
//   final double superSmall;
//   final double extraSmall;
//   final double small;
//   final double semiSmall;
//   final double medium;
//   final double semiLarge;
//   final double large;
//   final double extraLarge;
//   final double superLarge;

//   const XspacesData({
//     final double? none,
//     final double? superSmall,
//     final double? extraSmall,
//     final double? small,
//     final double? semiSmall,
//     final double? medium,
//     final double? semiLarge,
//     final double? large,
//     final double? extraLarge,
//     final double? superLarge,
//   })  : none = none ?? XStandardSizes.zero,
//         superSmall = superSmall ?? XAuxiliarySizes.x2,
//         extraSmall = extraSmall ?? XStandardSizes.x4,
//         small = small ?? XStandardSizes.x8,
//         semiSmall = semiSmall ?? XStandardSizes.x12,
//         medium = medium ?? XStandardSizes.x16,
//         semiLarge = semiLarge ?? XStandardSizes.x20,
//         large = large ?? XStandardSizes.x24,
//         extraLarge = extraLarge ?? XStandardSizes.x32,
//         superLarge = superLarge ?? XStandardSizes.x48;

//   XGapsData get gaps => XGapsData(this);

//   XEdgeInsetsData get edgeInsets => XEdgeInsetsData(this);

//   @override
//   List<Object?> get props => [
//         none.named('none'),
//         superSmall.named('superSmall'),
//         extraSmall.named('extraSmall'),
//         small.named('small'),
//         semiSmall.named('semiSmall'),
//         medium.named('medium'),
//         semiLarge.named('semiLarge'),
//         large.named('large'),
//         extraLarge.named('extraLarge'),
//         superLarge.named('superLarge'),
//       ];
// }

// class XGapsData extends Equatable {
//   final XspacesData _spaces;

//   const XGapsData(this._spaces);

//   Gap get none => Gap(_spaces.none);
//   Gap get superSmall => Gap(_spaces.superSmall);
//   Gap get extraSmall => Gap(_spaces.extraSmall);
//   Gap get small => Gap(_spaces.small);
//   Gap get semiSmall => Gap(_spaces.semiSmall);
//   Gap get medium => Gap(_spaces.medium);
//   Gap get semiLarge => Gap(_spaces.semiLarge);
//   Gap get large => Gap(_spaces.large);
//   Gap get extraLarge => Gap(_spaces.extraLarge);
//   Gap get superLarge => Gap(_spaces.superLarge);

//   @override
//   List<Object?> get props => [
//         _spaces,
//       ];
// }

// class XEdgeInsetsData extends Equatable {
//   final XspacesData _spaces;

//   const XEdgeInsetsData(this._spaces);

//   EdgeInsets get allNone => EdgeInsets.all(_spaces.none);
//   EdgeInsets get allSuperSmall => EdgeInsets.all(_spaces.superSmall);
//   EdgeInsets get allExtraSmall => EdgeInsets.all(_spaces.extraSmall);
//   EdgeInsets get allSmall => EdgeInsets.all(_spaces.small);
//   EdgeInsets get allSemiSmall => EdgeInsets.all(_spaces.semiSmall);
//   EdgeInsets get allMedium => EdgeInsets.all(_spaces.medium);
//   EdgeInsets get allSemiLarge => EdgeInsets.all(_spaces.semiLarge);
//   EdgeInsets get allLarge => EdgeInsets.all(_spaces.large);
//   EdgeInsets get allExtraLarge => EdgeInsets.all(_spaces.extraLarge);
//   EdgeInsets get allSuperLarge => EdgeInsets.all(_spaces.superLarge);

//   EdgeInsets get verticalNone => EdgeInsets.symmetric(vertical: _spaces.none);
//   EdgeInsets get verticalSuperSmall =>
//       EdgeInsets.symmetric(vertical: _spaces.superSmall);
//   EdgeInsets get verticalExtraSmall =>
//       EdgeInsets.symmetric(vertical: _spaces.extraSmall);
//   EdgeInsets get verticalSmall =>
//       EdgeInsets.symmetric(vertical: _spaces.small);
//   EdgeInsets get verticalSemiSmall =>
//       EdgeInsets.symmetric(vertical: _spaces.semiSmall);
//   EdgeInsets get verticalMedium =>
//       EdgeInsets.symmetric(vertical: _spaces.medium);
//   EdgeInsets get verticalSemiLarge =>
//       EdgeInsets.symmetric(vertical: _spaces.semiLarge);
//   EdgeInsets get verticalLarge =>
//       EdgeInsets.symmetric(vertical: _spaces.large);
//   EdgeInsets get verticalExtraLarge =>
//       EdgeInsets.symmetric(vertical: _spaces.extraLarge);
//   EdgeInsets get verticalSuperLarge =>
//       EdgeInsets.symmetric(vertical: _spaces.superLarge);

//   EdgeInsets get horizontalNone =>
//       EdgeInsets.symmetric(horizontal: _spaces.none);
//   EdgeInsets get horizontalSuperSmall =>
//       EdgeInsets.symmetric(horizontal: _spaces.superSmall);
//   EdgeInsets get horizontalExtraSmall =>
//       EdgeInsets.symmetric(horizontal: _spaces.extraSmall);
//   EdgeInsets get horizontalSmall =>
//       EdgeInsets.symmetric(horizontal: _spaces.small);
//   EdgeInsets get horizontalSemiSmall =>
//       EdgeInsets.symmetric(horizontal: _spaces.semiSmall);
//   EdgeInsets get horizontalMedium =>
//       EdgeInsets.symmetric(horizontal: _spaces.medium);
//   EdgeInsets get horizontalSemiLarge =>
//       EdgeInsets.symmetric(horizontal: _spaces.semiLarge);
//   EdgeInsets get horizontalLarge =>
//       EdgeInsets.symmetric(horizontal: _spaces.large);
//   EdgeInsets get horizontalExtraLarge =>
//       EdgeInsets.symmetric(horizontal: _spaces.extraLarge);
//   EdgeInsets get horizontalSuperLarge =>
//       EdgeInsets.symmetric(horizontal: _spaces.superLarge);

//   EdgeInsets only({
//     final Xspace? left,
//     final Xspace? top,
//     final Xspace? right,
//     final Xspace? bottom,
//   }) =>
//       EdgeInsets.only(
//         left:
//             (left ?? Xspace.none).toData(_spaces) ?? XStandardSizes.zero,
//         top: (top ?? Xspace.none).toData(_spaces) ?? XStandardSizes.zero,
//         right:
//             (right ?? Xspace.none).toData(_spaces) ?? XStandardSizes.zero,
//         bottom: (bottom ?? Xspace.none).toData(_spaces) ??
//             XStandardSizes.zero,
//       );

//   XPaddingsData get paddings => XPaddingsData(this);

//   @override
//   List<Object?> get props => [
//         _spaces,
//       ];
// }

// class XPaddingsData extends Equatable {
//   final XEdgeInsetsData _edgeInsets;
//   // final Widget? child;

//   const XPaddingsData(
//     this._edgeInsets,
//     // this.child,
//   );

//   Padding allNone({Widget? child}) => Padding(padding: _edgeInsets.allNone);
//   Padding allSuperSmall({Widget? child}) =>
//       Padding(padding: _edgeInsets.allSuperSmall, child: child);
//   Padding allExtraSmall({Widget? child}) =>
//       Padding(padding: _edgeInsets.allExtraSmall, child: child);
//   Padding allSmall({Widget? child}) =>
//       Padding(padding: _edgeInsets.allSmall, child: child);
//   Padding allSemiSmall({Widget? child}) =>
//       Padding(padding: _edgeInsets.allSemiSmall, child: child);
//   Padding allMedium({Widget? child}) =>
//       Padding(padding: _edgeInsets.allMedium, child: child);
//   Padding allSemiLarge({Widget? child}) =>
//       Padding(padding: _edgeInsets.allSemiLarge, child: child);
//   Padding allLarge({Widget? child}) =>
//       Padding(padding: _edgeInsets.allLarge, child: child);
//   Padding allExtraLarge({Widget? child}) =>
//       Padding(padding: _edgeInsets.allExtraLarge, child: child);
//   Padding allSuperLarge({Widget? child}) =>
//       Padding(padding: _edgeInsets.allSuperLarge, child: child);

//   Padding verticalNone({Widget? child}) =>
//       Padding(padding: _edgeInsets.verticalNone, child: child);
//   Padding verticalSuperSmall({Widget? child}) =>
//       Padding(padding: _edgeInsets.verticalSuperSmall, child: child);
//   Padding verticalExtraSmall({Widget? child}) =>
//       Padding(padding: _edgeInsets.verticalExtraSmall, child: child);
//   Padding verticalSmall({Widget? child}) =>
//       Padding(padding: _edgeInsets.verticalSmall, child: child);
//   Padding verticalSemiSmall({Widget? child}) =>
//       Padding(padding: _edgeInsets.verticalSemiSmall, child: child);
//   Padding verticalMedium({Widget? child}) =>
//       Padding(padding: _edgeInsets.verticalMedium, child: child);
//   Padding verticalSemiLarge({Widget? child}) =>
//       Padding(padding: _edgeInsets.verticalSemiLarge, child: child);
//   Padding verticalLarge({Widget? child}) =>
//       Padding(padding: _edgeInsets.verticalLarge, child: child);
//   Padding verticalExtraLarge({Widget? child}) =>
//       Padding(padding: _edgeInsets.verticalExtraLarge, child: child);
//   Padding verticalSuperLarge({Widget? child}) =>
//       Padding(padding: _edgeInsets.verticalSuperLarge, child: child);

//   Padding horizontalNone({Widget? child}) =>
//       Padding(padding: _edgeInsets.horizontalNone, child: child);
//   Padding horizontalSuperSmall({Widget? child}) =>
//       Padding(padding: _edgeInsets.horizontalSuperSmall, child: child);
//   Padding horizontalExtraSmall({Widget? child}) =>
//       Padding(padding: _edgeInsets.horizontalExtraSmall, child: child);
//   Padding horizontalSmall({Widget? child}) =>
//       Padding(padding: _edgeInsets.horizontalSmall, child: child);
//   Padding horizontalSemiSmall({Widget? child}) =>
//       Padding(padding: _edgeInsets.horizontalSemiSmall, child: child);
//   Padding horizontalMedium({Widget? child}) =>
//       Padding(padding: _edgeInsets.horizontalMedium, child: child);
//   Padding horizontalSemiLarge({Widget? child}) =>
//       Padding(padding: _edgeInsets.horizontalSemiLarge, child: child);
//   Padding horizontalLarge({Widget? child}) =>
//       Padding(padding: _edgeInsets.horizontalLarge, child: child);
//   Padding horizontalExtraLarge({Widget? child}) =>
//       Padding(padding: _edgeInsets.horizontalExtraLarge, child: child);
//   Padding horizontalSuperLarge({Widget? child}) =>
//       Padding(padding: _edgeInsets.horizontalSuperLarge, child: child);

//   @override
//   List<Object?> get props => [
//         _edgeInsets,
//       ];
// }

// enum Xspace {
//   none,
//   superSmall,
//   extraSmall,
//   small,
//   semiSmall,
//   medium,
//   semiLarge,
//   large,
//   extraLarge,
//   superLarge,
// }

// extension XspaceExtension on Xspace {
//   double? toData(XspacesData? spaces) {
//     return switch (this) {
//       Xspace.none => spaces?.none,
//       Xspace.superSmall => spaces?.superSmall,
//       Xspace.extraSmall => spaces?.extraSmall,
//       Xspace.small => spaces?.small,
//       Xspace.semiSmall => spaces?.semiSmall,
//       Xspace.medium => spaces?.medium,
//       Xspace.semiLarge => spaces?.semiLarge,
//       Xspace.large => spaces?.large,
//       Xspace.extraLarge => spaces?.extraLarge,
//       Xspace.superLarge => spaces?.superLarge,
//     };
//   }
// }
