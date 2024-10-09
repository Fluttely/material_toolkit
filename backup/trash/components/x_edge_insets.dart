// part of '../x_metrics_data.dart';

// class XEdgeInsets extends Equatable {
//   final XSpaces left;
//   final XSpaces top;
//   final XSpaces right;
//   final XSpaces bottom;

//   const XEdgeInsets.all(XSpaces value)
//       : left = value,
//         top = value,
//         right = value,
//         bottom = value;

//   const XEdgeInsets.symmetric({
//     XSpaces vertical = XSpaces.none,
//     XSpaces horizontal = XSpaces.none,
//   })  : left = horizontal,
//         top = vertical,
//         right = horizontal,
//         bottom = vertical;

//   const XEdgeInsets.only({
//     this.left = XSpaces.none,
//     this.top = XSpaces.none,
//     this.right = XSpaces.none,
//     this.bottom = XSpaces.none,
//   });

//   const XEdgeInsets.none()
//       : left = XSpaces.none,
//         top = XSpaces.none,
//         right = XSpaces.none,
//         bottom = XSpaces.none;

//   const XEdgeInsets.allSuperSmall()
//       : left = XSpaces.superSmall,
//         top = XSpaces.superSmall,
//         right = XSpaces.superSmall,
//         bottom = XSpaces.superSmall;

//   const XEdgeInsets.allExtraSmall()
//       : left = XSpaces.extraSmall,
//         top = XSpaces.extraSmall,
//         right = XSpaces.extraSmall,
//         bottom = XSpaces.extraSmall;

//   const XEdgeInsets.allSmall()
//       : left = XSpaces.small,
//         top = XSpaces.small,
//         right = XSpaces.small,
//         bottom = XSpaces.small;

//   const XEdgeInsets.allSemiSmall()
//       : left = XSpaces.semiSmall,
//         top = XSpaces.semiSmall,
//         right = XSpaces.semiSmall,
//         bottom = XSpaces.semiSmall;

//   const XEdgeInsets.allMedium()
//       : left = XSpaces.medium,
//         top = XSpaces.medium,
//         right = XSpaces.medium,
//         bottom = XSpaces.medium;

//   const XEdgeInsets.allSemiLarge()
//       : left = XSpaces.semiLarge,
//         top = XSpaces.semiLarge,
//         right = XSpaces.semiLarge,
//         bottom = XSpaces.semiLarge;

//   const XEdgeInsets.allLarge()
//       : left = XSpaces.large,
//         top = XSpaces.large,
//         right = XSpaces.large,
//         bottom = XSpaces.large;

//   const XEdgeInsets.allExtraLarge()
//       : left = XSpaces.extraLarge,
//         top = XSpaces.extraLarge,
//         right = XSpaces.extraLarge,
//         bottom = XSpaces.extraLarge;

//   const XEdgeInsets.allSuperLarge()
//       : left = XSpaces.superLarge,
//         top = XSpaces.superLarge,
//         right = XSpaces.superLarge,
//         bottom = XSpaces.superLarge;

//   const XEdgeInsets.verticalSuperSmall()
//       : left = XSpaces.none,
//         top = XSpaces.superSmall,
//         right = XSpaces.none,
//         bottom = XSpaces.superSmall;

//   const XEdgeInsets.verticalExtraSmall()
//       : left = XSpaces.none,
//         top = XSpaces.extraSmall,
//         right = XSpaces.none,
//         bottom = XSpaces.extraSmall;

//   const XEdgeInsets.verticalSmall()
//       : left = XSpaces.none,
//         top = XSpaces.small,
//         right = XSpaces.none,
//         bottom = XSpaces.small;

//   const XEdgeInsets.verticalSemiSmall()
//       : left = XSpaces.none,
//         top = XSpaces.semiSmall,
//         right = XSpaces.none,
//         bottom = XSpaces.semiSmall;

//   const XEdgeInsets.verticalMedium()
//       : left = XSpaces.none,
//         top = XSpaces.medium,
//         right = XSpaces.none,
//         bottom = XSpaces.medium;

//   const XEdgeInsets.verticalSemiLarge()
//       : left = XSpaces.none,
//         top = XSpaces.semiLarge,
//         right = XSpaces.none,
//         bottom = XSpaces.semiLarge;

//   const XEdgeInsets.verticalLarge()
//       : left = XSpaces.none,
//         top = XSpaces.large,
//         right = XSpaces.none,
//         bottom = XSpaces.large;

//   const XEdgeInsets.verticalExtraLarge()
//       : left = XSpaces.none,
//         top = XSpaces.extraLarge,
//         right = XSpaces.none,
//         bottom = XSpaces.extraLarge;

//   const XEdgeInsets.verticalSuperLarge()
//       : left = XSpaces.none,
//         top = XSpaces.superLarge,
//         right = XSpaces.none,
//         bottom = XSpaces.superLarge;

//   const XEdgeInsets.horizontalSuperSmall()
//       : left = XSpaces.superSmall,
//         top = XSpaces.none,
//         right = XSpaces.superSmall,
//         bottom = XSpaces.none;

//   const XEdgeInsets.horizontalExtraSmall()
//       : left = XSpaces.extraSmall,
//         top = XSpaces.none,
//         right = XSpaces.extraSmall,
//         bottom = XSpaces.none;

//   const XEdgeInsets.horizontalSmall()
//       : left = XSpaces.small,
//         top = XSpaces.none,
//         right = XSpaces.small,
//         bottom = XSpaces.none;

//   const XEdgeInsets.horizontalSemiSmall()
//       : left = XSpaces.semiSmall,
//         top = XSpaces.none,
//         right = XSpaces.semiSmall,
//         bottom = XSpaces.none;

//   const XEdgeInsets.horizontalMedium()
//       : left = XSpaces.medium,
//         top = XSpaces.none,
//         right = XSpaces.medium,
//         bottom = XSpaces.none;

//   const XEdgeInsets.horizontalSemiLarge()
//       : left = XSpaces.semiLarge,
//         top = XSpaces.none,
//         right = XSpaces.semiLarge,
//         bottom = XSpaces.none;

//   const XEdgeInsets.horizontalLarge()
//       : left = XSpaces.large,
//         top = XSpaces.none,
//         right = XSpaces.large,
//         bottom = XSpaces.none;

//   const XEdgeInsets.horizontalExtraLarge()
//       : left = XSpaces.extraLarge,
//         top = XSpaces.none,
//         right = XSpaces.extraLarge,
//         bottom = XSpaces.none;

//   const XEdgeInsets.horizontalSuperLarge()
//       : left = XSpaces.superLarge,
//         top = XSpaces.none,
//         right = XSpaces.superLarge,
//         bottom = XSpaces.none;

//   EdgeInsets toEdgeInsets(XSpacesData spacings) {
//     return EdgeInsets.only(
//       left: left.toData(spacings),
//       top: top.toData(spacings),
//       right: right.toData(spacings),
//       bottom: bottom.toData(spacings),
//     );
//   }

//   @override
//   List<Object?> get props => [
//         left,
//         top,
//         right,
//         bottom,
//       ];
// }
