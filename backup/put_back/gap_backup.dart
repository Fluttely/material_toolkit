// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:remo_design_system/remo_design_system.dart';

// class ApodGap extends StatelessWidget {
//   final Xspace space;

//   const ApodGap(
//     this.space, {
//     super.key,
//   });

//   const ApodGap.none({
//     super.key,
//   }) : space = Xspace.none;

//   const ApodGap.extraSmall({
//     super.key,
//   }) : space = Xspace.extraSmall;

//   const ApodGap.small({
//     super.key,
//   }) : space = Xspace.small;

//   const ApodGap.semiSmall({
//     super.key,
//   }) : space = Xspace.semiSmall;

//   ApodGap.large({
//     super.key,
//   }) : space = metrics.xspaces.large;

//   const ApodGap.extraLarge({
//     super.key,
//   }) : space = Xspace.extraLarge;

//   const ApodGap.superLarge({
//     super.key,
//   }) : space = Xspace.superLarge;

//   @override
//   Widget build(BuildContext context) {
//     final metrics = Theme.of(context).extension<ApodThemeData>()!;

//     return Gap(space.toData(metrics));
//   }
// }
