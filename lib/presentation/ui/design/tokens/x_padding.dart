import 'package:material_toolkit/material_toolkit.dart';

class XPaddingTokens extends Padding {
  const XPaddingTokens.custom({
    super.key,
    required EdgeInsets padding,
    required Widget child,
  }) : super(
          padding: padding,
          child: child,
        );

  XPaddingTokens.none({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService.instance.metrics.sizes.edgeInsets.none,
          child: child,
        );

  XPaddingTokens.allExtraSmall({
    super.key,
    required Widget child,
  }) : super(
          padding:
              XMaterialService.instance.metrics.sizes.edgeInsets.allExtraSmall,
          child: child,
        );

  XPaddingTokens.allSmall({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService.instance.metrics.sizes.edgeInsets.allSmall,
          child: child,
        );

  XPaddingTokens.allSemiSmall({
    super.key,
    required Widget child,
  }) : super(
          padding:
              XMaterialService.instance.metrics.sizes.edgeInsets.allSemiSmall,
          child: child,
        );

  XPaddingTokens.allMedium({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService.instance.metrics.sizes.edgeInsets.allMedium,
          child: child,
        );

  XPaddingTokens.allSemiLarge({
    super.key,
    required Widget child,
  }) : super(
          padding:
              XMaterialService.instance.metrics.sizes.edgeInsets.allSemiLarge,
          child: child,
        );

  XPaddingTokens.allLarge({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService.instance.metrics.sizes.edgeInsets.allLarge,
          child: child,
        );

  XPaddingTokens.allExtraLarge({
    super.key,
    required Widget child,
  }) : super(
          padding:
              XMaterialService.instance.metrics.sizes.edgeInsets.allExtraLarge,
          child: child,
        );

  XPaddingTokens.horizontalExtraSmall({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService
              .instance.metrics.sizes.edgeInsets.horizontalExtraSmall,
          child: child,
        );

  XPaddingTokens.horizontalSmall({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService
              .instance.metrics.sizes.edgeInsets.horizontalSmall,
          child: child,
        );

  XPaddingTokens.horizontalSemiSmall({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService
              .instance.metrics.sizes.edgeInsets.horizontalSemiSmall,
          child: child,
        );

  XPaddingTokens.horizontalMedium({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService
              .instance.metrics.sizes.edgeInsets.horizontalMedium,
          child: child,
        );

  XPaddingTokens.horizontalSemiLarge({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService
              .instance.metrics.sizes.edgeInsets.horizontalSemiLarge,
          child: child,
        );

  XPaddingTokens.horizontalLarge({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService
              .instance.metrics.sizes.edgeInsets.horizontalLarge,
          child: child,
        );

  XPaddingTokens.horizontalExtraLarge({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService
              .instance.metrics.sizes.edgeInsets.horizontalExtraLarge,
          child: child,
        );

  XPaddingTokens.verticalExtraSmall({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService
              .instance.metrics.sizes.edgeInsets.verticalExtraSmall,
          child: child,
        );

  XPaddingTokens.verticalSmall({
    super.key,
    required Widget child,
  }) : super(
          padding:
              XMaterialService.instance.metrics.sizes.edgeInsets.verticalSmall,
          child: child,
        );

  XPaddingTokens.verticalSemiSmall({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService
              .instance.metrics.sizes.edgeInsets.verticalSemiSmall,
          child: child,
        );

  XPaddingTokens.verticalMedium({
    super.key,
    required Widget child,
  }) : super(
          padding:
              XMaterialService.instance.metrics.sizes.edgeInsets.verticalMedium,
          child: child,
        );

  XPaddingTokens.verticalSemiLarge({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService
              .instance.metrics.sizes.edgeInsets.verticalSemiLarge,
          child: child,
        );

  XPaddingTokens.verticalLarge({
    super.key,
    required Widget child,
  }) : super(
          padding:
              XMaterialService.instance.metrics.sizes.edgeInsets.verticalLarge,
          child: child,
        );

  XPaddingTokens.verticalExtraLarge({
    super.key,
    required Widget child,
  }) : super(
          padding: XMaterialService
              .instance.metrics.sizes.edgeInsets.verticalExtraLarge,
          child: child,
        );
}

// class XPaddingData {
//   final Padding allNone;
//   final Padding allExtraSmall;
//   final Padding allSmall;
//   final Padding allSemiSmall;
//   final Padding allMedium;
//   final Padding allSemiLarge;
//   final Padding allLarge;
//   final Padding allExtraLarge;
//   final Padding horizontalNone;
//   final Padding horizontalExtraSmall;
//   final Padding horizontalSmall;
//   final Padding horizontalSemiSmall;
//   final Padding horizontalMedium;
//   final Padding horizontalSemiLarge;
//   final Padding horizontalLarge;
//   final Padding horizontalExtraLarge;
//   final Padding verticalNone;
//   final Padding verticalExtraSmall;
//   final Padding verticalSmall;
//   final Padding verticalSemiSmall;
//   final Padding verticalMedium;
//   final Padding verticalSemiLarge;
//   final Padding verticalLarge;
//   final Padding verticalExtraLarge;

//   XPaddingData({
//     Padding? allNone,
//     Padding? allExtraSmall,
//     Padding? allSmall,
//     Padding? allSemiSmall,
//     Padding? allMedium,
//     Padding? allSemiLarge,
//     Padding? allLarge,
//     Padding? allExtraLarge,
//     Padding? horizontalNone,
//     Padding? horizontalExtraSmall,
//     Padding? horizontalSmall,
//     Padding? horizontalSemiSmall,
//     Padding? horizontalMedium,
//     Padding? horizontalSemiLarge,
//     Padding? horizontalLarge,
//     Padding? horizontalExtraLarge,
//     Padding? verticalNone,
//     Padding? verticalExtraSmall,
//     Padding? verticalSmall,
//     Padding? verticalSemiSmall,
//     Padding? verticalMedium,
//     Padding? verticalSemiLarge,
//     Padding? verticalLarge,
//     Padding? verticalExtraLarge,
//   })  : allNone = allNone ?? Padding.all(XSpacingSizesData().none),
//         allExtraSmall =
//             allExtraSmall ?? Padding.all(XSpacingSizesData().extraSmall),
//         allSmall = allSmall ?? Padding.all(XSpacingSizesData().small),
//         allSemiSmall =
//             allSemiSmall ?? Padding.all(XSpacingSizesData().semiSmall),
//         allMedium = allMedium ?? Padding.all(XSpacingSizesData().medium),
//         allSemiLarge =
//             allSemiLarge ?? Padding.all(XSpacingSizesData().semiLarge),
//         allLarge = allLarge ?? Padding.all(XSpacingSizesData().large),
//         allExtraLarge =
//             allExtraLarge ?? Padding.all(XSpacingSizesData().extraLarge),
//         horizontalNone = horizontalNone ??
//             Padding.symmetric(horizontal: XSpacingSizesData().none),
//         horizontalExtraSmall = horizontalExtraSmall ??
//             Padding.symmetric(horizontal: XSpacingSizesData().extraSmall),
//         horizontalSmall = horizontalSmall ??
//             Padding.symmetric(horizontal: XSpacingSizesData().small),
//         horizontalSemiSmall = horizontalSemiSmall ??
//             Padding.symmetric(horizontal: XSpacingSizesData().semiSmall),
//         horizontalMedium = horizontalMedium ??
//             Padding.symmetric(horizontal: XSpacingSizesData().medium),
//         horizontalSemiLarge = horizontalSemiLarge ??
//             Padding.symmetric(horizontal: XSpacingSizesData().semiLarge),
//         horizontalLarge = horizontalLarge ??
//             Padding.symmetric(horizontal: XSpacingSizesData().large),
//         horizontalExtraLarge = horizontalExtraLarge ??
//             Padding.symmetric(horizontal: XSpacingSizesData().extraLarge),
//         verticalNone = verticalNone ??
//             Padding.symmetric(vertical: XSpacingSizesData().none),
//         verticalExtraSmall = verticalExtraSmall ??
//             Padding.symmetric(vertical: XSpacingSizesData().extraSmall),
//         verticalSmall = verticalSmall ??
//             Padding.symmetric(vertical: XSpacingSizesData().small),
//         verticalSemiSmall = verticalSemiSmall ??
//             Padding.symmetric(vertical: XSpacingSizesData().semiSmall),
//         verticalMedium = verticalMedium ??
//             Padding.symmetric(vertical: XSpacingSizesData().medium),
//         verticalSemiLarge = verticalSemiLarge ??
//             Padding.symmetric(vertical: XSpacingSizesData().semiLarge),
//         verticalLarge = verticalLarge ??
//             Padding.symmetric(vertical: XSpacingSizesData().large),
//         verticalExtraLarge = verticalExtraLarge ??
//             Padding.symmetric(vertical: XSpacingSizesData().extraLarge);
// }

// class XPadding {

//   const XPadding.all(XSizesTokens value)
//       : left = value,
//         top = value,
//         right = value,
//         bottom = all;

//   const XPadding.symmetric({
//     XSizesTokens vertical = XSizesTokens.none,
//     XSizesTokens horizontal = XSizesTokens.none,
//   })  : left = horizontal,
//         top = symmetric,
//         right = horizontal,
//         bottom = vertical;

//   const XPadding.only({
//     this.left = XSizesTokens.none,
//     this.top = XSizesTokens.none,
//     this.right = XSizesTokens.none,
//     this.bottom = XSizesTokens.only,
//   });

//   Padding toPadding(XMetricsData theme) {
//     return Padding.only(
//       left: left.toDouble(theme),
//       top: top.toDouble(theme),
//       right: right.toDouble(theme),
//       bottom: bottom.toDouble(theme),
//     );
//   }
// }

// class XPadding extends StatelessWidget {
//   final XPadding padding;
//   final Widget? child;

//   const XPadding({
//     Key? key,
//     required this.padding,
//     this.child,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final mX = MaterialX.of(context);

//     return Padding(
//padding: padding.toPadding(mX.metrics),
//child: child,
//       child: chil,d,
//     );
//   }
// }

// class XPadding extends StatelessWidget {
//   final XPadding padding;
//   final Widget? child;

//   const XPadding({
//     required this.padding,
//     super.key,
//     this.child,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context).data;
//     return Padding(
//padding: padding.toPadding(theme),
//child: child,
//       child: chil,d,
//     );
//   }
// }
