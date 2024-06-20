// import 'package:flutter/material.dart';
// import 'package:remo_design_system/remo_design_system.dart';

// class XAssetsData extends ThemeExtension<XAssetsData> {
//   final ApodIconsData icons;
//   final ApodImagesData images;

//   XAssetsData({
//     final ApodIconsData? icons,
//     final ApodImagesData? images,
//   })  : icons = ApodIconsData(),
//         images = const ApodImagesData();

//   @override
//   XAssetsData copyWith({
//     ApodIconsData? icons,
//     ApodImagesData? images,
//   }) {
//     return XAssetsData(
//       icons: icons ?? this.icons,
//       images: images ?? this.images,
//     );
//   }

//   @override
//   XAssetsData lerp(ThemeExtension<XAssetsData>? other, double t) {
//     if (other is! XAssetsData) {
//       return this;
//     }

//     return XAssetsData();
//   }

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is XAssetsData &&
//           icons == other.icons &&
//           images == other.images &&
//           runtimeType == other.runtimeType;

//   @override
//   int get hashCode => icons.hashCode ^ images.hashCode;
// }
