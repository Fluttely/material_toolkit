part of x_metrics_data;

class XEdgeInsetsSizesData {
  final EdgeInsets allNone;
  final EdgeInsets allExtraSmall;
  final EdgeInsets allSmall;
  final EdgeInsets allSemiSmall;
  final EdgeInsets allMedium;
  final EdgeInsets allSemiLarge;
  final EdgeInsets allLarge;
  final EdgeInsets allExtraLarge;
  final EdgeInsets horizontalNone;
  final EdgeInsets horizontalExtraSmall;
  final EdgeInsets horizontalSmall;
  final EdgeInsets horizontalSemiSmall;
  final EdgeInsets horizontalMedium;
  final EdgeInsets horizontalSemiLarge;
  final EdgeInsets horizontalLarge;
  final EdgeInsets horizontalExtraLarge;
  final EdgeInsets verticalNone;
  final EdgeInsets verticalExtraSmall;
  final EdgeInsets verticalSmall;
  final EdgeInsets verticalSemiSmall;
  final EdgeInsets verticalMedium;
  final EdgeInsets verticalSemiLarge;
  final EdgeInsets verticalLarge;
  final EdgeInsets verticalExtraLarge;

  XEdgeInsetsSizesData({
    EdgeInsets? allNone,
    EdgeInsets? allExtraSmall,
    EdgeInsets? allSmall,
    EdgeInsets? allSemiSmall,
    EdgeInsets? allMedium,
    EdgeInsets? allSemiLarge,
    EdgeInsets? allLarge,
    EdgeInsets? allExtraLarge,
    EdgeInsets? horizontalNone,
    EdgeInsets? horizontalExtraSmall,
    EdgeInsets? horizontalSmall,
    EdgeInsets? horizontalSemiSmall,
    EdgeInsets? horizontalMedium,
    EdgeInsets? horizontalSemiLarge,
    EdgeInsets? horizontalLarge,
    EdgeInsets? horizontalExtraLarge,
    EdgeInsets? verticalNone,
    EdgeInsets? verticalExtraSmall,
    EdgeInsets? verticalSmall,
    EdgeInsets? verticalSemiSmall,
    EdgeInsets? verticalMedium,
    EdgeInsets? verticalSemiLarge,
    EdgeInsets? verticalLarge,
    EdgeInsets? verticalExtraLarge,
  })  : allNone = allNone ?? EdgeInsets.all(XSpacingSizesData().none),
        allExtraSmall =
            allExtraSmall ?? EdgeInsets.all(XSpacingSizesData().extraSmall),
        allSmall = allSmall ?? EdgeInsets.all(XSpacingSizesData().small),
        allSemiSmall =
            allSemiSmall ?? EdgeInsets.all(XSpacingSizesData().semiSmall),
        allMedium = allMedium ?? EdgeInsets.all(XSpacingSizesData().medium),
        allSemiLarge =
            allSemiLarge ?? EdgeInsets.all(XSpacingSizesData().semiLarge),
        allLarge = allLarge ?? EdgeInsets.all(XSpacingSizesData().large),
        allExtraLarge =
            allExtraLarge ?? EdgeInsets.all(XSpacingSizesData().extraLarge),
        horizontalNone = horizontalNone ??
            EdgeInsets.symmetric(horizontal: XSpacingSizesData().none),
        horizontalExtraSmall = horizontalExtraSmall ??
            EdgeInsets.symmetric(horizontal: XSpacingSizesData().extraSmall),
        horizontalSmall = horizontalSmall ??
            EdgeInsets.symmetric(horizontal: XSpacingSizesData().small),
        horizontalSemiSmall = horizontalSemiSmall ??
            EdgeInsets.symmetric(horizontal: XSpacingSizesData().semiSmall),
        horizontalMedium = horizontalMedium ??
            EdgeInsets.symmetric(horizontal: XSpacingSizesData().medium),
        horizontalSemiLarge = horizontalSemiLarge ??
            EdgeInsets.symmetric(horizontal: XSpacingSizesData().semiLarge),
        horizontalLarge = horizontalLarge ??
            EdgeInsets.symmetric(horizontal: XSpacingSizesData().large),
        horizontalExtraLarge = horizontalExtraLarge ??
            EdgeInsets.symmetric(horizontal: XSpacingSizesData().extraLarge),
        verticalNone = verticalNone ??
            EdgeInsets.symmetric(vertical: XSpacingSizesData().none),
        verticalExtraSmall = verticalExtraSmall ??
            EdgeInsets.symmetric(vertical: XSpacingSizesData().extraSmall),
        verticalSmall = verticalSmall ??
            EdgeInsets.symmetric(vertical: XSpacingSizesData().small),
        verticalSemiSmall = verticalSemiSmall ??
            EdgeInsets.symmetric(vertical: XSpacingSizesData().semiSmall),
        verticalMedium = verticalMedium ??
            EdgeInsets.symmetric(vertical: XSpacingSizesData().medium),
        verticalSemiLarge = verticalSemiLarge ??
            EdgeInsets.symmetric(vertical: XSpacingSizesData().semiLarge),
        verticalLarge = verticalLarge ??
            EdgeInsets.symmetric(vertical: XSpacingSizesData().large),
        verticalExtraLarge = verticalExtraLarge ??
            EdgeInsets.symmetric(vertical: XSpacingSizesData().extraLarge);
}

// class XEdgeInsets {
//   final XSizesTokens left;
//   final XSizesTokens top;
//   final XSizesTokens right;
//   final XSizesTokens bottom;

//   const XEdgeInsets.all(XSizesTokens value)
//       : left = value,
//         top = value,
//         right = value,
//         bottom = value;

//   const XEdgeInsets.symmetric({
//     XSizesTokens vertical = XSizesTokens.none,
//     XSizesTokens horizontal = XSizesTokens.none,
//   })  : left = horizontal,
//         top = vertical,
//         right = horizontal,
//         bottom = vertical;

//   const XEdgeInsets.only({
//     this.left = XSizesTokens.none,
//     this.top = XSizesTokens.none,
//     this.right = XSizesTokens.none,
//     this.bottom = XSizesTokens.none,
//   });

//   EdgeInsets toEdgeInsets(XMetricsData theme) {
//     return EdgeInsets.only(
//       left: left.toDouble(theme),
//       top: top.toDouble(theme),
//       right: right.toDouble(theme),
//       bottom: bottom.toDouble(theme),
//     );
//   }
// }

// class XPadding extends StatelessWidget {
//   final XEdgeInsets padding;
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
//       padding: padding.toEdgeInsets(mX.metrics),
//       child: child,
//     );
//   }
// }


// // class XPadding extends StatelessWidget {
// //   final XEdgeInsets padding;
// //   final Widget? child;

// //   const XPadding({
// //     required this.padding,
// //     super.key,
// //     this.child,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     final theme = Theme.of(context).data;
// //     return Padding(
// //       padding: padding.toEdgeInsets(theme),
// //       child: child,
// //     );
// //   }
// // }
