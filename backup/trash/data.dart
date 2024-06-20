// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:remo_design_system/remo_design_system.dart';

// class ApodThemeData extends ThemeExtension<ApodThemeData> {
//   final ApodIconsData icons;
//   // final ApodTypographyData typography;
//   final ApodRadiusData radius;
//   final ApodspacesData spaces;
//   final ApodBoxShadowsData boxShadows;
//   final ApodDurationsData durations;
//   final ApodImagesData images;
//   final ApodAppFormFactor formFactor;
//   final TargetPlatform? _platform;
//   TargetPlatform get platform => _platform ?? defaultTargetPlatform;

//   ApodThemeData({
//     final ApodIconsData? icons,
//     // final ApodTypographyData? typography,
//     final ApodRadiusData? radius,
//     final ApodspacesData? spaces,
//     final ApodBoxShadowsData? boxShadows,
//     final ApodDurationsData? durations,
//     final ApodImagesData? images,
//     final ApodAppFormFactor? formFactor,
//     final TargetPlatform? platform,
//   })  : _platform = platform,
//         formFactor = ApodAppFormFactor.medium,
//         icons = ApodIconsData(),
//         // typography = ApodTypographyData.regular(),
//         radius = const ApodRadiusData(),
//         spaces = const ApodspacesData(),
//         boxShadows = const ApodBoxShadowsData(),
//         durations = const ApodDurationsData(),
//         images = const ApodImagesData();

//   @override
//   ApodThemeData copyWith({
//     ApodIconsData? icons,
//     // ApodTypographyData? typography,
//     ApodRadiusData? radius,
//     ApodspacesData? spaces,
//     ApodBoxShadowsData? boxShadows,
//     ApodDurationsData? durations,
//     ApodImagesData? images,
//     ApodAppFormFactor? formFactor,
//     TargetPlatform? platform,
//   }) {
//     return ApodThemeData(
//       icons: icons ?? this.icons,
//       // typography: typography ?? this.typography,
//       radius: radius ?? this.radius,
//       spaces: spaces ?? this.spaces,
//       boxShadows: boxShadows ?? this.boxShadows,
//       durations: durations ?? this.durations,
//       images: images ?? this.images,
//       formFactor: formFactor ?? this.formFactor,
//       platform: platform ?? this.platform,
//     );
//   }

//   @override
//   ApodThemeData lerp(ThemeExtension<ApodThemeData>? other, double t) {
//     if (other is! ApodThemeData) {
//       return this;
//     }

//     return ApodThemeData(
//       formFactor: t < 0.5 ? formFactor : other.formFactor,
//       platform: platform,
//     );
//   }

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is ApodThemeData &&
//           runtimeType == other.runtimeType &&
//           platform == other.platform &&
//           icons == other.icons &&
//           // typography == other.typography &&
//           radius == other.radius &&
//           spaces == other.spaces &&
//           boxShadows == other.boxShadows &&
//           durations == other.durations &&
//           formFactor == other.formFactor &&
//           images == other.images;

//   @override
//   int get hashCode =>
//       platform.hashCode ^
//       icons.hashCode ^
//       // typography.hashCode ^
//       radius.hashCode ^
//       spaces.hashCode ^
//       boxShadows.hashCode ^
//       durations.hashCode ^
//       formFactor.hashCode ^
//       images.hashCode;

//   ApodThemeData withFormFactor(ApodAppFormFactor formFactor) {
//     return ApodThemeData(
//       formFactor: formFactor,
//     );
//   }

//   ApodThemeData withTypography(ApodTypographyData typography) {
//     return ApodThemeData(
//       platform: platform,
//       formFactor: formFactor,
//       durations: durations,
//       icons: icons,
//       images: images,
//       radius: radius,
//       boxShadows: boxShadows,
//       spaces: spaces,
//       // typography: typography,
//     );
//   }
// }
