// import 'package:material_toolkit/material_toolkit.dart';

// enum XSpacings {
//   none,
//   allExtraSmall,
//   allSmall,
//   allSemiSmall,
//   allMedium,
//   allSemiLarge,
//   allLarge,
//   allExtraLarge,
//   allSuperLarge,

//   horizontalExtraSmall,
//   horizontalSmall,
//   horizontalSemiSmall,
//   horizontalMedium,
//   horizontalSemiLarge,
//   horizontalLarge,
//   horizontalExtraLarge,
//   horizontalSuperLarge,

//   verticalExtraSmall,
//   verticalSmall,
//   verticalSemiSmall,
//   verticalMedium,
//   verticalSemiLarge,
//   verticalLarge,
//   verticalExtraLarge,
//   verticalSuperLarge,
// }

// class XEdgeInsets extends StatelessWidget {
//   const XEdgeInsets.all(double value, {super.key}) : super.all(value);

//   const XEdgeInsets.only({
//     super.key,
//     double? left,
//     double? top,
//     double? right,
//     double? bottom,
//   }) : super.only(
//           left: left ?? 0,
//           top: top ?? 0,
//           right: right ?? 0,
//           bottom: bottom ?? 0,
//         );

//   const XEdgeInsets.symmetric({
//     super.key,
//     double? horizontal,
//     double? vertical,
//   }) : super.symmetric(
//           horizontal: horizontal ?? 0,
//           vertical: vertical ?? 0,
//         );

//   XEdgeInsets.none({super.key})
//       : super.all(MaterialX.of(MaterialX.context).metrics.spacing.none);

//   XEdgeInsets.allExtraSmall({super.key})
//       : super.all(MaterialX.of(MaterialX.context).metrics.spacing.extraSmall);

//   XEdgeInsets.allSmall({super.key})
//       : super.all(MaterialX.of(MaterialX.context).metrics.spacing.small);

//   XEdgeInsets.allSemiSmall({super.key})
//       : super.all(MaterialX.of(MaterialX.context).metrics.spacing.semiSmall);

//   XEdgeInsets.allMedium({super.key})
//       : super.all(MaterialX.of(MaterialX.context).metrics.spacing.medium);

//   XEdgeInsets.allSemiLarge({super.key})
//       : super.all(MaterialX.of(MaterialX.context).metrics.spacing.semiLarge);

//   XEdgeInsets.allLarge({super.key})
//       : super.all(MaterialX.of(MaterialX.context).metrics.spacing.large);

//   XEdgeInsets.allExtraLarge({super.key})
//       : super.all(MaterialX.of(MaterialX.context).metrics.spacing.extraLarge);

//   XEdgeInsets.allSuperLarge({super.key})
//       : super.all(MaterialX.of(MaterialX.context).metrics.spacing.superLarge);

//   XEdgeInsets.horizontalExtraSmall({super.key})
//       : super.symmetric(
//             horizontal:
//                 MaterialX.of(MaterialX.context).metrics.spacing.extraSmall);

//   XEdgeInsets.horizontalSmall({super.key})
//       : super.symmetric(
//             horizontal: MaterialX.of(MaterialX.context).metrics.spacing.small);

//   XEdgeInsets.horizontalSemiSmall({super.key})
//       : super.symmetric(
//             horizontal:
//                 MaterialX.of(MaterialX.context).metrics.spacing.semiSmall);

//   XEdgeInsets.horizontalMedium({super.key})
//       : super.symmetric(
//             horizontal: MaterialX.of(MaterialX.context).metrics.spacing.medium);

//   XEdgeInsets.horizontalSemiLarge({super.key})
//       : super.symmetric(
//             horizontal:
//                 MaterialX.of(MaterialX.context).metrics.spacing.semiLarge);

//   XEdgeInsets.horizontalLarge({super.key})
//       : super.symmetric(
//             horizontal: MaterialX.of(MaterialX.context).metrics.spacing.large);

//   XEdgeInsets.horizontalExtraLarge({super.key})
//       : super.symmetric(
//             horizontal:
//                 MaterialX.of(MaterialX.context).metrics.spacing.extraLarge);

//   XEdgeInsets.horizontalSuperLarge({super.key})
//       : super.symmetric(
//             horizontal:
//                 MaterialX.of(MaterialX.context).metrics.spacing.superLarge);

//   XEdgeInsets.verticalExtraSmall({super.key})
//       : super.symmetric(
//             vertical:
//                 MaterialX.of(MaterialX.context).metrics.spacing.extraSmall);

//   XEdgeInsets.verticalSmall({super.key})
//       : super.symmetric(
//             vertical: MaterialX.of(MaterialX.context).metrics.spacing.small);

//   XEdgeInsets.verticalSemiSmall({super.key})
//       : super.symmetric(
//             vertical:
//                 MaterialX.of(MaterialX.context).metrics.spacing.semiSmall);

//   XEdgeInsets.verticalMedium({super.key})
//       : super.symmetric(
//             vertical: MaterialX.of(MaterialX.context).metrics.spacing.medium);

//   XEdgeInsets.verticalSemiLarge({super.key})
//       : super.symmetric(
//             vertical:
//                 MaterialX.of(MaterialX.context).metrics.spacing.semiLarge);

//   XEdgeInsets.verticalLarge({super.key})
//       : super.symmetric(
//             vertical: MaterialX.of(MaterialX.context).metrics.spacing.large);

//   XEdgeInsets.verticalExtraLarge({super.key})
//       : super.symmetric(
//             vertical:
//                 MaterialX.of(MaterialX.context).metrics.spacing.extraLarge);

//   XEdgeInsets.verticalSuperLarge({super.key})
//       : super.symmetric(
//             vertical:
//                 MaterialX.of(MaterialX.context).metrics.spacing.superLarge);

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw EdgeInsets.all();
//   }
// }
