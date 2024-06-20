// library x_assets_data;

// import 'dart:io';
// import 'dart:typed_data';

// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';

// part 'x_images_data.dart';

// class XAssetsData extends ThemeExtension<XAssetsData> {
//   final XIconsData icons;
//   final XImagesData images;

//   XAssetsData({
//     final XIconsData? icons,
//     final XImagesData? images,
//   })  : icons = icons ?? XIconsData(),
//         images = images ?? XImagesData();

//   @override
//   ThemeExtension<XAssetsData> lerp(ThemeExtension<XAssetsData>? other, double t) {
//     if (other is! XAssetsData) {
//       return this;
//     } else {
//       return XAssetsData(
//         icons: icons,
//         images: images,
//       );
//     }
//   }

//   @override
//   XAssetsData copyWith({
//     XIconsData? icons,
//     XImagesData? images,
//   }) {
//     return XAssetsData(
//       icons: icons ?? this.icons,
//       images: images ?? this.images,
//     );
//   }

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is XAssetsData && icons == other.icons && images == other.images && runtimeType == other.runtimeType;

//   @override
//   int get hashCode => icons.hashCode ^ images.hashCode;

//   @override
//   String toString() => '''
//     XAssetsData(
//       icons: $icons,
//       images: $images,
//     )
//   ''';
// }
