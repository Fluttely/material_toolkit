// part of '../../design_tokens.dart';

// /// Elevation values used for Material surfaces following Material Design 3 specification.
// ///
// /// Elevation is the relative distance between two surfaces along the z-axis.
// /// The Material Design 3 elevation system uses 6 levels (0-5) with specific dp values.
// ///
// /// Reference: https://m3.material.io/styles/elevation/tokens

// /// Semantic elevation levels for Material Design 3.
// abstract final class MaterialElevation {
//   /// No elevation (0dp) - Used for surfaces at the base level
//   static const double level0 = 0;

//   /// Level 1 elevation (1dp) - Used for raised components like filled buttons
//   static const double level1 = 1;

//   /// Level 2 elevation (3dp) - Used for elevated components like cards
//   static const double level2 = 3;

//   /// Level 3 elevation (6dp) - Used for floating components like FABs
//   static const double level3 = 6;

//   /// Level 4 elevation (8dp) - Used for navigation drawers
//   static const double level4 = 8;

//   /// Level 5 elevation (12dp) - Used for modal components like dialogs
//   static const double level5 = 12;

//   /// Returns the corresponding list of [BoxShadow]s for the elevation level,
//   /// following the official Material Design 3 specification.
//   ///
//   /// This is the most robust and recommended way to apply elevation, as it gives
//   /// precise control over the shadows. The `shadowColor` should typically be
//   /// provided from your theme's `ColorScheme`.
//   List<BoxShadow> getShadows({Color shadowColor = Colors.black}) {
//     switch (this) {
//       case MaterialElevation.level0:
//         return [];
//       case MaterialElevation.level1:
//         return [
//           BoxShadow(
//             color: shadowColor.withOpacity(0.2),
//             blurRadius: 2,
//             offset: const Offset(0, 1),
//           ),
//           BoxShadow(
//             color: shadowColor.withOpacity(0.12),
//             blurRadius: 6,
//             spreadRadius: 1,
//             offset: const Offset(0, 2),
//           ),
//         ];
//       case MaterialElevation.level2:
//         return [
//           BoxShadow(
//             color: shadowColor.withOpacity(0.2),
//             blurRadius: 4,
//             offset: const Offset(0, 2),
//           ),
//           BoxShadow(
//             color: shadowColor.withOpacity(0.12),
//             blurRadius: 10,
//             spreadRadius: 1,
//             offset: const Offset(0, 4),
//           ),
//         ];
//       case MaterialElevation.level3:
//         return [
//           BoxShadow(
//             color: shadowColor.withOpacity(0.2),
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//           BoxShadow(
//             color: shadowColor.withOpacity(0.12),
//             blurRadius: 12,
//             spreadRadius: 2,
//             offset: const Offset(0, 6),
//           ),
//         ];
//       case MaterialElevation.level4:
//         return [
//           BoxShadow(
//             color: shadowColor.withOpacity(0.2),
//             blurRadius: 6,
//             offset: const Offset(0, 4),
//           ),
//           BoxShadow(
//             color: shadowColor.withOpacity(0.12),
//             blurRadius: 14,
//             spreadRadius: 2,
//             offset: const Offset(0, 8),
//           ),
//         ];
//       case MaterialElevation.level5:
//         return [
//           BoxShadow(
//             color: shadowColor.withOpacity(0.2),
//             blurRadius: 8,
//             offset: const Offset(0, 6),
//           ),
//           BoxShadow(
//             color: shadowColor.withOpacity(0.12),
//             blurRadius: 18,
//             spreadRadius: 3,
//             offset: const Offset(0, 12),
//           ),
//         ];
//       default:
//         return [];
//     }
//   }
// }

// /// Semantic elevation tokens for Material Design 3.
// ///
// /// This enum represents the 6 elevation levels defined in the Material Design 3
// /// specification. It acts as a "resolver" to get the corresponding shadow
// /// and double values.
// ///
// /// Reference: https://m3.material.io/styles/elevation/tokens
// enum ElevationToken {
//   /// Level 0: 0dp (no elevation). Used for base-level surfaces.
//   none,

//   /// Level 1: 1dp. Used for slightly raised components like filled buttons.
//   small,

//   /// Level 2: 3dp. Used for elevated components like cards.
//   medium,

//   /// Level 3: 6dp. Used for floating components like FABs and menus.
//   large,

//   /// Level 4: 8dp. Used for components that need to stand out significantly, like navigation drawers.
//   extraLarge,

//   /// Level 5: 12dp. Used for modal components that overlay all other content, like dialogs.
//   maximum;

//   /// Converts the elevation enum to its corresponding dp value.
//   ///
//   /// This is useful for widgets that use the `elevation` property (e.g., `Card`, `AppBar`),
//   /// which is an abstraction over the actual shadow implementation.
//   double toDouble(ElevationTokensData elevations) {
//     return switch (this) {
//       ElevationToken.none => elevations.none,
//       ElevationToken.small => elevations.small,
//       ElevationToken.medium => elevations.medium,
//       ElevationToken.large => elevations.large,
//       ElevationToken.extraLarge => elevations.extraLarge,
//       ElevationToken.maximum => elevations.maximum,
//     };
//   }

//   /// Retorna a lista de BoxShadow correspondente a um token de elevação.
//   /// Esta é a forma mais robusta e recomendada de aplicar elevação.
//   List<BoxShadow> getShadows(ElevationTokensData elevations) {
//     return switch (this) {
//       ElevationToken.none => elevations.toBoxShadow(elevations.none),
//       ElevationToken.small => elevations.toBoxShadow(elevations.small),
//       ElevationToken.medium => elevations.toBoxShadow(elevations.medium),
//       ElevationToken.large => elevations.toBoxShadow(elevations.large),
//       ElevationToken.extraLarge => elevations.toBoxShadow(elevations.extraLarge),
//       ElevationToken.maximum => elevations.toBoxShadow(elevations.maximum),
//     };
//   }
// }

// /// A data class holding the customizable `dp` values for each elevation level.
// class ElevationTokensData extends Equatable {
//   const ElevationTokensData({
//     this.none = 0.0,
//     this.small = 1.0,
//     this.medium = 3.0,
//     this.large = 6.0,
//     this.extraLarge = 8.0,
//     this.maximum = 12.0,
//   });

//   /// The default Material Design 3 elevation values.
//   static const ElevationTokensData defaults = ElevationTokensData();

//   final double none;
//   final double small;
//   final double medium;
//   final double large;
//   final double extraLarge;
//   final double maximum;

//   List<BoxShadow> toBoxShadow(double value) {
//     return [
//       BoxShadow(
//         color: Colors.black.withOpacity(0.3),
//         blurRadius: 3,
//         offset: const Offset(0, 1),
//       ),
//       BoxShadow(
//         color: Colors.black.withOpacity(0.15),
//         blurRadius: 8,
//         offset: const Offset(0, 3),
//       ),
//     ];
//   }

//   @override
//   List<Object?> get props => [none, small, medium, large, extraLarge, maximum];
// }
