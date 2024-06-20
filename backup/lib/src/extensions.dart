// part of 'package:design_x/design_x.dart';

// extension DoubleExtension on double {
//   Gap toGap() => Gap(this);
// }

// extension RadiusExtension on Radius {
//   BorderRadius toBorderRadius() => BorderRadius.all(this);
// }

// extension ShadowExtension on Shadow {
//   BoxShadow toBoxShadow() => BoxShadow(
//         color: color,
//         offset: offset,
//         blurRadius: blurRadius,
//         spreadRadius: 0.0,
//         blurStyle: BlurStyle.normal,
//       );
// }

// extension BoxShadowExtension on BoxShadow {
//   Shadow toTextShadow() => Shadow(
//         color: color,
//         offset: offset,
//         blurRadius: blurRadius,
//       );
// }

// extension ImageExtension on Image {
//   String? getAssetName() {
//     if (image is AssetImage) {
//       return (image as AssetImage).assetName;
//     } else {
//       return null;
//     }
//   }

//   String? getNetworkUrl() {
//     if (image is NetworkImage) {
//       return (image as NetworkImage).url;
//     } else {
//       return null;
//     }
//   }

//   File? getFile() {
//     if (image is FileImage) {
//       return (image as FileImage).file;
//     } else {
//       return null;
//     }
//   }

//   Uint8List? getBytes() {
//     if (image is MemoryImage) {
//       return (image as MemoryImage).bytes;
//     } else {
//       return null;
//     }
//   }
// }

// extension SvgPictureExtension on SvgPicture {
//   BytesLoader? getBytesLoader() {
//     return bytesLoader;
//   }
// }
