// // import 'package:material_toolkit/material_toolkit.dart';


// class XEdgeInsetsTokens extends EdgeInsets {
// }

// class AppEdgeInsets extends EdgeInsets {
//   // final double left,
//   // final double top,
//   // final double right,
//   // final double bottom,

//     AppEdgeInsets.only(double value)
//       : super.only(
//         left : value,
//         top : value,
//         right : value,
//         bottom : value,
//       );

//   //  AppEdgeInsets.symmetric({
//   //   double vertical : double.none,
//   //   double horizontal : double.none,
//   // })  : left : horizontal,
//   //       top : vertical,
//   //       right : horizontal,
//   //       bottom : vertical,

//   //  AppEdgeInsets.only({
//   //   this.left : double.none,
//   //   this.top : double.none,
//   //   this.right : double.none,
//   //   this.bottom : double.none,
//   // }),

//   // EdgeInsets toEdgeInsets(AppThemeSizesData theme) {
//   //   return EdgeInsets.only(
//   //     left: left.toDouble(theme),
//   //     top: top.toDouble(theme),
//   //     right: right.toDouble(theme),
//   //     bottom: bottom.toDouble(theme),
//   //   ),
//   // }
// }


// // class XEdgeInsetsTokens {
// //   // final EdgeInsets padding;

// //   // const XEdgeInsets.custom({
// //   //   super.key,
// //   //   required this.padding,
// //   // });

// //    static EdgeInsets get allExtraLarge =>
// //       XMaterialService.instance.metrics.sizes.edgeInsets.allExtraLarge;

// //   // padding = XMaterialService.instance.metrics.sizes.edgeInsets.allNone;

// //   // XEdgeInsets.allExtraSmall({
// //   //   super.key,
// //   // }) : padding =
// //   //           XMaterialService.instance.metrics.sizes.edgeInsets.allExtraSmall;

// //   // XEdgeInsets.allSmall({
// //   //   super.key,
// //   // }) : padding = XMaterialService.instance.metrics.sizes.edgeInsets.allSmall;

// //   // XEdgeInsets.allSemiSmall({
// //   //   super.key,
// //   // }) : padding =
// //   //           XMaterialService.instance.metrics.sizes.edgeInsets.allSemiSmall;

// //   // XEdgeInsets.allMedium({
// //   //   super.key,
// //   // }) : padding = XMaterialService.instance.metrics.sizes.edgeInsets.allMedium;

// //   // XEdgeInsets.allSemiLarge({
// //   //   super.key,
// //   // }) : padding =
// //   //           XMaterialService.instance.metrics.sizes.edgeInsets.allSemiLarge;

// //   // XEdgeInsets.allLarge({
// //   //   super.key,
// //   // }) : padding = XMaterialService.instance.metrics.sizes.edgeInsets.allLarge;

// //   // XEdgeInsets.allExtraLarge({
// //   //   super.key,
// //   // }) : padding =
// //   //           XMaterialService.instance.metrics.sizes.edgeInsets.allExtraLarge;

// //   // XEdgeInsets.horizontalNone({
// //   //   super.key,
// //   // }) : padding =
// //   //           XMaterialService.instance.metrics.sizes.edgeInsets.horizontalNone;

// //   // XEdgeInsets.horizontalExtraSmall({
// //   //   super.key,
// //   // }) : padding = XMaterialService
// //   //           .instance.metrics.sizes.edgeInsets.horizontalExtraSmall;

// //   // XEdgeInsets.horizontalSmall({
// //   //   super.key,
// //   // }) : padding =
// //   //           XMaterialService.instance.metrics.sizes.edgeInsets.horizontalSmall;

// //   // XEdgeInsets.horizontalSemiSmall({
// //   //   super.key,
// //   // }) : padding = XMaterialService
// //   //           .instance.metrics.sizes.edgeInsets.horizontalSemiSmall;

// //   // XEdgeInsets.horizontalMedium({
// //   //   super.key,
// //   // }) : padding =
// //   //           XMaterialService.instance.metrics.sizes.edgeInsets.horizontalMedium;

// //   // XEdgeInsets.horizontalSemiLarge({
// //   //   super.key,
// //   // }) : padding = XMaterialService
// //   //           .instance.metrics.sizes.edgeInsets.horizontalSemiLarge;

// //   // XEdgeInsets.horizontalLarge({
// //   //   super.key,
// //   // }) : padding =
// //   //           XMaterialService.instance.metrics.sizes.edgeInsets.horizontalLarge;

// //   // XEdgeInsets.horizontalExtraLarge({
// //   //   super.key,
// //   // }) : padding = XMaterialService
// //   //           .instance.metrics.sizes.edgeInsets.horizontalExtraLarge;

// //   // XEdgeInsets.verticalNone({
// //   //   super.key,
// //   // }) : padding =
// //   //           XMaterialService.instance.metrics.sizes.edgeInsets.verticalNone;

// //   // XEdgeInsets.verticalExtraSmall({
// //   //   super.key,
// //   // }) : padding = XMaterialService
// //   //           .instance.metrics.sizes.edgeInsets.verticalExtraSmall;

// //   // XEdgeInsets.verticalSmall({
// //   //   super.key,
// //   // }) : padding =
// //   //           XMaterialService.instance.metrics.sizes.edgeInsets.verticalSmall;

// //   // XEdgeInsets.verticalSemiSmall({
// //   //   super.key,
// //   // }) : padding = XMaterialService
// //   //           .instance.metrics.sizes.edgeInsets.verticalSemiSmall;

// //   // XEdgeInsets.verticalMedium({
// //   //   super.key,
// //   // }) : padding =
// //   //           XMaterialService.instance.metrics.sizes.edgeInsets.verticalMedium;

// //   // XEdgeInsets.verticalSemiLarge({
// //   //   super.key,
// //   // }) : padding = XMaterialService
// //   //           .instance.metrics.sizes.edgeInsets.verticalSemiLarge;

// //   // XEdgeInsets.verticalLarge({
// //   //   super.key,
// //   // }) : padding =
// //   //           XMaterialService.instance.metrics.sizes.edgeInsets.verticalLarge;

// //   // XEdgeInsets.verticalExtraLarge({
// //   //   super.key,
// //   // }) : padding = XMaterialService
// //   //           .instance.metrics.sizes.edgeInsets.verticalExtraLarge;

// //   // @override
// //   // Widget build(BuildContext context) {
// //   //   // final mX = MaterialX.of(context);

// //   //   return EdgeInsets.all(
// //   //     padding: padding, //mX.metrics.sizes.edgeInsets.allExtraLarge,
// //   //   );
// //   // }
// // }

// // // class XPaddingData {
// // //   final Padding allNone;
// // //   final Padding allExtraSmall;
// // //   final Padding allSmall;
// // //   final Padding allSemiSmall;
// // //   final Padding allMedium;
// // //   final Padding allSemiLarge;
// // //   final Padding allLarge;
// // //   final Padding allExtraLarge;
// // //   final Padding horizontalNone;
// // //   final Padding horizontalExtraSmall;
// // //   final Padding horizontalSmall;
// // //   final Padding horizontalSemiSmall;
// // //   final Padding horizontalMedium;
// // //   final Padding horizontalSemiLarge;
// // //   final Padding horizontalLarge;
// // //   final Padding horizontalExtraLarge;
// // //   final Padding verticalNone;
// // //   final Padding verticalExtraSmall;
// // //   final Padding verticalSmall;
// // //   final Padding verticalSemiSmall;
// // //   final Padding verticalMedium;
// // //   final Padding verticalSemiLarge;
// // //   final Padding verticalLarge;
// // //   final Padding verticalExtraLarge;

// // //   XPaddingData({
// // //     Padding? allNone,
// // //     Padding? allExtraSmall,
// // //     Padding? allSmall,
// // //     Padding? allSemiSmall,
// // //     Padding? allMedium,
// // //     Padding? allSemiLarge,
// // //     Padding? allLarge,
// // //     Padding? allExtraLarge,
// // //     Padding? horizontalNone,
// // //     Padding? horizontalExtraSmall,
// // //     Padding? horizontalSmall,
// // //     Padding? horizontalSemiSmall,
// // //     Padding? horizontalMedium,
// // //     Padding? horizontalSemiLarge,
// // //     Padding? horizontalLarge,
// // //     Padding? horizontalExtraLarge,
// // //     Padding? verticalNone,
// // //     Padding? verticalExtraSmall,
// // //     Padding? verticalSmall,
// // //     Padding? verticalSemiSmall,
// // //     Padding? verticalMedium,
// // //     Padding? verticalSemiLarge,
// // //     Padding? verticalLarge,
// // //     Padding? verticalExtraLarge,
// // //   })  : allNone = allNone ?? Padding.all(XSpacingSizesData().none),
// // //         allExtraSmall =
// // //             allExtraSmall ?? Padding.all(XSpacingSizesData().extraSmall),
// // //         allSmall = allSmall ?? Padding.all(XSpacingSizesData().small),
// // //         allSemiSmall =
// // //             allSemiSmall ?? Padding.all(XSpacingSizesData().semiSmall),
// // //         allMedium = allMedium ?? Padding.all(XSpacingSizesData().medium),
// // //         allSemiLarge =
// // //             allSemiLarge ?? Padding.all(XSpacingSizesData().semiLarge),
// // //         allLarge = allLarge ?? Padding.all(XSpacingSizesData().large),
// // //         allExtraLarge =
// // //             allExtraLarge ?? Padding.all(XSpacingSizesData().extraLarge),
// // //         horizontalNone = horizontalNone ??
// // //             Padding.symmetric(horizontal: XSpacingSizesData().none),
// // //         horizontalExtraSmall = horizontalExtraSmall ??
// // //             Padding.symmetric(horizontal: XSpacingSizesData().extraSmall),
// // //         horizontalSmall = horizontalSmall ??
// // //             Padding.symmetric(horizontal: XSpacingSizesData().small),
// // //         horizontalSemiSmall = horizontalSemiSmall ??
// // //             Padding.symmetric(horizontal: XSpacingSizesData().semiSmall),
// // //         horizontalMedium = horizontalMedium ??
// // //             Padding.symmetric(horizontal: XSpacingSizesData().medium),
// // //         horizontalSemiLarge = horizontalSemiLarge ??
// // //             Padding.symmetric(horizontal: XSpacingSizesData().semiLarge),
// // //         horizontalLarge = horizontalLarge ??
// // //             Padding.symmetric(horizontal: XSpacingSizesData().large),
// // //         horizontalExtraLarge = horizontalExtraLarge ??
// // //             Padding.symmetric(horizontal: XSpacingSizesData().extraLarge),
// // //         verticalNone = verticalNone ??
// // //             Padding.symmetric(vertical: XSpacingSizesData().none),
// // //         verticalExtraSmall = verticalExtraSmall ??
// // //             Padding.symmetric(vertical: XSpacingSizesData().extraSmall),
// // //         verticalSmall = verticalSmall ??
// // //             Padding.symmetric(vertical: XSpacingSizesData().small),
// // //         verticalSemiSmall = verticalSemiSmall ??
// // //             Padding.symmetric(vertical: XSpacingSizesData().semiSmall),
// // //         verticalMedium = verticalMedium ??
// // //             Padding.symmetric(vertical: XSpacingSizesData().medium),
// // //         verticalSemiLarge = verticalSemiLarge ??
// // //             Padding.symmetric(vertical: XSpacingSizesData().semiLarge),
// // //         verticalLarge = verticalLarge ??
// // //             Padding.symmetric(vertical: XSpacingSizesData().large),
// // //         verticalExtraLarge = verticalExtraLarge ??
// // //             Padding.symmetric(vertical: XSpacingSizesData().extraLarge);
// // // }

// // // class XPadding {

// // //   const XPadding.all(XSizesTokens value)
// // //       : left = value,
// // //         top = value,
// // //         right = value,
// // //         bottom = all;

// // //   const XPadding.symmetric({
// // //     XSizesTokens vertical = XSizesTokens.none,
// // //     XSizesTokens horizontal = XSizesTokens.none,
// // //   })  : left = horizontal,
// // //         top = symmetric,
// // //         right = horizontal,
// // //         bottom = vertical;

// // //   const XPadding.only({
// // //     this.left = XSizesTokens.none,
// // //     this.top = XSizesTokens.none,
// // //     this.right = XSizesTokens.none,
// // //     this.bottom = XSizesTokens.only,
// // //   });

// // //   Padding toPadding(XMetricsData theme) {
// // //     return Padding.only(
// // //       left: left.toDouble(theme),
// // //       top: top.toDouble(theme),
// // //       right: right.toDouble(theme),
// // //       bottom: bottom.toDouble(theme),
// // //     );
// // //   }
// // // }

// // // class XPadding extends StatelessWidget {
// // //   final XPadding padding;


// // //   const XPadding({
// // //     Key? key,
// // //     required this.padding,

// // //   }) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final mX = MaterialX.of(context);

// // //     return Padding(
// // //       padding: padding.toPadding(mX.metrics),

// // //     );
// // //   }
// // // }


// // // class XPadding extends StatelessWidget {
// // //   final XPadding padding;


// // //   const XPadding({
// // //     required this.padding,
// // //     super.key,

// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final theme = Theme.of(context).data;
// // //     return Padding(
// // //       padding: padding.toPadding(theme),

// // //     );
// // //   }
// // // }
