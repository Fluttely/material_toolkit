// part of x_metrics_data;

// class XPadding extends StatelessWidget {
//   final XEdgeInsets padding;
//   final Widget? child;

//   const XPadding({
//     required this.padding,
//     super.key,
//     this.child,
//   });

//   XPadding.all(
//     XSpaces value, {
//     super.key,
//     this.child,
//   }) : padding = XEdgeInsets.all(value);

//   XPadding.symmetric({
//     XSpaces vertical = XSpaces.none,
//     XSpaces horizontal = XSpaces.none,
//     super.key,
//     this.child,
//   }) : padding = XEdgeInsets.symmetric(
//           horizontal: horizontal,
//           vertical: vertical,
//         );

//   XPadding.only({
//     XSpaces left = XSpaces.none,
//     XSpaces top = XSpaces.none,
//     XSpaces right = XSpaces.none,
//     XSpaces bottom = XSpaces.none,
//     super.key,
//     this.child,
//   }) : padding = XEdgeInsets.only(
//           left: left,
//           top: top,
//           right: right,
//           bottom: bottom,
//         );

//   const XPadding.allSuperSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.allSuperSmall();

//   const XPadding.allExtraSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.allExtraSmall();

//   const XPadding.allSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.allSmall();

//   const XPadding.allSemiSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.allSemiSmall();

//   const XPadding.allMedium({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.allMedium();

//   const XPadding.allSemiLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.allSemiLarge();

//   const XPadding.allLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.allLarge();

//   const XPadding.allExtraLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.allExtraLarge();

//   const XPadding.allSuperLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.allSuperLarge();

//   const XPadding.verticalSuperSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.verticalSuperSmall();

//   const XPadding.verticalExtraSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.verticalExtraSmall();

//   const XPadding.verticalSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.verticalSmall();

//   const XPadding.verticalSemiSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.verticalSemiSmall();

//   const XPadding.verticalMedium({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.verticalMedium();

//   const XPadding.verticalSemiLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.verticalSemiLarge();

//   const XPadding.verticalLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.verticalLarge();

//   const XPadding.verticalExtraLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.verticalExtraLarge();

//   const XPadding.verticalSuperLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.verticalSuperLarge();

//   const XPadding.horizontalSuperSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.horizontalSuperSmall();

//   const XPadding.horizontalExtraSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.horizontalExtraSmall();

//   const XPadding.horizontalSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.horizontalSmall();

//   const XPadding.horizontalSemiSmall({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.horizontalSemiSmall();

//   const XPadding.horizontalMedium({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.horizontalMedium();

//   const XPadding.horizontalSemiLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.horizontalSemiLarge();

//   const XPadding.horizontalLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.horizontalLarge();

//   const XPadding.horizontalExtraLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.horizontalExtraLarge();

//   const XPadding.horizontalSuperLarge({
//     super.key,
//     this.child,
//   }) : padding = const XEdgeInsets.horizontalSuperLarge();

//   @override
//   Widget build(BuildContext context) {
//     final metrics = Theme.of(context).extension<XMetricsData>()!;

//     return Padding(
//       padding: padding.toEdgeInsets(metrics.spaces),
//       child: child,
//     );
//   }
// }
