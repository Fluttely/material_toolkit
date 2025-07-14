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

//   /// Retorna a lista de BoxShadow correspondente a um token de elevação.
//   /// Esta é a forma mais robusta e recomendada de aplicar elevação.
//   List<BoxShadow> getShadows() {
//     return switch (this) {
//       MaterialElevation.level1 => [
//         BoxShadow(
//           color: Colors.black.withOpacity(0.3),
//           blurRadius: 3,
//           offset: const Offset(0, 1),
//         ),
//         BoxShadow(
//           color: Colors.black.withOpacity(0.15),
//           blurRadius: 8,
//           offset: const Offset(0, 3),
//         ),
//       ],
//       MaterialElevation.level2 => [
//         BoxShadow(
//           color: Colors.black.withOpacity(0.3),
//           blurRadius: 4,
//           offset: const Offset(0, 2),
//         ),
//         BoxShadow(
//           color: Colors.black.withOpacity(0.15),
//           blurRadius: 10,
//           offset: const Offset(0, 4),
//         ),
//       ],
//       // ... adicione os outros níveis aqui
//       _ => [],
//     };
//   }
// }

// /// Semantic elevation tokens for Material Design 3.
// enum ElevationToken {
//   /// No elevation (0dp) - Used for surfaces at the base level
//   none,

//   /// Level 1 elevation (1dp) - Used for raised components like filled buttons
//   small,

//   /// Level 2 elevation (3dp) - Used for elevated components like cards
//   medium,

//   /// Level 3 elevation (6dp) - Used for floating components like FABs
//   large,

//   /// Level 4 elevation (8dp) - Used for navigation drawers
//   extraLarge,

//   /// Level 5 elevation (12dp) - Used for modal components like dialogs
//   maximum;

//   /// Converts the elevation enum to its corresponding dp value.
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

// /// Collection of elevation constants following Material Design 3 specifications.
// ///
// /// Material Design 3 uses a 6-level elevation system:
// /// - Level 0: 0dp (no elevation)
// /// - Level 1: 1dp (raised elements)
// /// - Level 2: 3dp (elevated elements)
// /// - Level 3: 6dp (floating elements)
// /// - Level 4: 8dp (navigation elements)
// /// - Level 5: 12dp (modal elements)
// class ElevationTokensData extends Equatable {
//   const ElevationTokensData({
//     double? none,
//     double? small,
//     double? medium,
//     double? large,
//     double? extraLarge,
//     double? maximum,
//   }) : none = none ?? MaterialElevation.level0,
//        small = small ?? MaterialElevation.level1,
//        medium = medium ?? MaterialElevation.level2,
//        large = large ?? MaterialElevation.level3,
//        extraLarge = extraLarge ?? MaterialElevation.level4,
//        maximum = maximum ?? MaterialElevation.level5;

//   /// Creates elevation tokens from a map configuration.
//   factory ElevationTokensData.fromMap(Map<String, dynamic> map) {
//     double? d(String key) => (map[key] as num?)?.toDouble();

//     return ElevationTokensData(
//       none: d('none'),
//       small: d('small'),
//       medium: d('medium'),
//       large: d('large'),
//       extraLarge: d('extraLarge'),
//       maximum: d('maximum'),
//     );
//   }

//   ElevationTokensData copyWith({
//     double? none,
//     double? small,
//     double? medium,
//     double? large,
//     double? extraLarge,
//     double? maximum,
//   }) {
//     return ElevationTokensData(
//       none: none ?? this.none,
//       small: small ?? this.small,
//       medium: medium ?? this.medium,
//       large: large ?? this.large,
//       extraLarge: extraLarge ?? this.extraLarge,
//       maximum: maximum ?? this.maximum,
//     );
//   }

//   /// Standard Material Design 3 elevation values.
//   static const ElevationTokensData defaults = ElevationTokensData();

//   /// No elevation (0dp) - Base level surfaces
//   /// Usage: App backgrounds, surface containers
//   final double none;

//   /// Level 1 elevation (1dp) - Raised elements
//   /// Usage: Filled buttons, filled cards, filled text fields
//   final double small;

//   /// Level 2 elevation (3dp) - Elevated elements
//   /// Usage: Elevated cards, elevated buttons, dropdowns
//   final double medium;

//   /// Level 3 elevation (6dp) - Floating elements
//   /// Usage: FABs, date pickers, menus
//   final double large;

//   /// Level 4 elevation (8dp) - Navigation elements
//   /// Usage: Navigation drawers, navigation bars
//   final double extraLarge;

//   /// Level 5 elevation (12dp) - Modal elements
//   /// Usage: Dialogs, modal bottom sheets, modal side sheets
//   final double maximum;

//   /// Returns the elevation value for a given semantic level.
//   double elevationFor(ElevationToken elevation) => elevation.toDouble(this);

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
//   List<Object?> get props => [
//     none,
//     small,
//     medium,
//     large,
//     extraLarge,
//     maximum,
//   ];

//   @override
//   String toString() =>
//       '''
// ElevationTokens(
//   none: ${none}dp,
//   small: ${small}dp,
//   medium: ${medium}dp,
//   large: ${large}dp,
//   extraLarge: ${extraLarge}dp,
//   maximum: ${maximum}dp,
// )
// ''';
// }
