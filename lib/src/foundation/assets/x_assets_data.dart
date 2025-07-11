// library x_assets_data;

// import 'dart:io';
// import 'dart:typed_data';

// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';

// part 'x_images_data.dart';

// class XAssetsTokens extends ThemeExtension<XAssetsTokens> {
//   final XIconsTokens icons;
//   final XImagesTokens images;

//   XAssetsTokens({
//     final XIconsTokens? icons,
//     final XImagesTokens? images,
//   })  : icons = icons ?? XIconsTokens(),
//         images = images ?? XImagesTokens();

//   @override
//   ThemeExtension<XAssetsTokens> lerp(ThemeExtension<XAssetsTokens>? other, double t) {
//     if (other is! XAssetsTokens) {
//       return this;
//     } else {
//       return XAssetsTokens(
//         icons: icons,
//         images: images,
//       );
//     }
//   }

//   @override
//   XAssetsTokens copyWith({
//     XIconsTokens? icons,
//     XImagesTokens? images,
//   }) {
//     return XAssetsTokens(
//       icons: icons ?? this.icons,
//       images: images ?? this.images,
//     );
//   }

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is XAssetsTokens && icons == other.icons && images == other.images && runtimeType == other.runtimeType;

//   @override
//   int get hashCode => icons.hashCode ^ images.hashCode;

//   @override
//   String toString() => '''
//     XAssetsTokens(
//       icons: $icons,
//       images: $images,
//     )
//   ''';
// }
