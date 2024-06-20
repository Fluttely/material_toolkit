// import 'package:flutter/material.dart';
// import 'package:remo_design_system/remo_design_system.dart';
// import 'package:tap_builder/tap_builder.dart';

// // `TODO`: NOW - MIGRATE THIS WIDGET TO USE MATERIAL WIDGETS
// class ApodElevatedButton extends StatelessWidget {
//   const ApodElevatedButton.adaptive({
//     super.key,
//     this.icon,
//     this.title,
//     this.onPressed,
//     this.mainAxisSize = MainAxisSize.min,
//   }) : assert(icon != null || title != null);

//   final String? icon;
//   final String? title;
//   final MainAxisSize mainAxisSize;
//   final VoidCallback? onPressed;

//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;
//     final textTheme = Theme.of(context).textTheme;

//     // return ElevatedButton(
//     //   onPressed: onPressed,
//     //   child: Text(
//     //     title ?? '',
//     //     style: textTheme.titleSmall!.copyWith(
//     //       color: colorScheme.onPrimary,
//     //       // XColorScheme.onPrimary(context),
//     //     ),
//     //   ),
//     // );
//     return TapBuilder(
//       onTap: onPressed,
//       builder: (context, state, hasFocus) {
//         switch (state) {
//           case TapState.hover:
//             return Semantics(
//               enabled: true,
//               selected: true,
//               child: ApodTextButtonLayout.hovered(
//                 icon: icon,
//                 title: title,
//                 mainAxisSize: mainAxisSize,
//               ),
//             );
//           case TapState.pressed:
//             return Semantics(
//               enabled: true,
//               selected: true,
//               child: ApodTextButtonLayout.pressed(
//                 icon: icon,
//                 title: title,
//                 mainAxisSize: mainAxisSize,
//               ),
//             );
//           default:
//             return Semantics(
//               enabled: true,
//               selected: true,
//               child: ApodTextButtonLayout.inactive(
//                 icon: icon,
//                 title: title,
//                 mainAxisSize: mainAxisSize,
//               ),
//             );
//         }
//       },
//     );
//   }
// }

// enum ApodTextButtonState {
//   inactive,
//   hovered,
//   pressed,
// }

// class ApodTextButtonLayout extends StatelessWidget {
//   const ApodTextButtonLayout.inactive({
//     super.key,
//     this.icon,
//     this.title,
//     this.mainAxisSize = MainAxisSize.min,
//     this.inactiveBackgroundColor,
//     this.hoveredBackgroundColor,
//     this.pressedBackgroundColor,
//     this.foregroundColor,
//   })  : _state = ApodTextButtonState.inactive,
//         assert(icon != null || title != null);

//   const ApodTextButtonLayout.hovered({
//     super.key,
//     this.icon,
//     this.title,
//     this.mainAxisSize = MainAxisSize.min,
//     this.inactiveBackgroundColor,
//     this.hoveredBackgroundColor,
//     this.pressedBackgroundColor,
//     this.foregroundColor,
//   })  : _state = ApodTextButtonState.hovered,
//         assert(icon != null || title != null);

//   const ApodTextButtonLayout.pressed({
//     super.key,
//     this.icon,
//     this.title,
//     this.mainAxisSize = MainAxisSize.min,
//     this.inactiveBackgroundColor,
//     this.hoveredBackgroundColor,
//     this.pressedBackgroundColor,
//     this.foregroundColor,
//   })  : _state = ApodTextButtonState.pressed,
//         assert(icon != null || title != null);

//   final String? icon;
//   final String? title;
//   final MainAxisSize mainAxisSize;
//   final ApodTextButtonState _state;
//   final Color? inactiveBackgroundColor;
//   final Color? hoveredBackgroundColor;
//   final Color? pressedBackgroundColor;
//   final Color? foregroundColor;

//   @override
//   Widget build(BuildContext context) {
//     final metrics = Theme.of(context).extension<ApodThemeData>()!;
//     final colorScheme = Theme.of(context).colorScheme;
//     final textTheme = Theme.of(context).textTheme;

//     final title = this.title;
//     final icon = this.icon;
//     final hasBoth = title != null && icon != null;
//     final foregroundColor = this.foregroundColor ?? colorScheme.onSurface;
//     final backgroundColor = () {
//       switch (_state) {
//         case ApodTextButtonState.inactive:
//           return inactiveBackgroundColor ?? colorScheme.primary;
//         case ApodTextButtonState.hovered:
//           return hoveredBackgroundColor ?? colorScheme.secondary;
//         case ApodTextButtonState.pressed:
//           return pressedBackgroundColor ?? colorScheme.tertiary;
//       }
//     }();
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: metrics.xRadius.xBorder.small,
//         color: backgroundColor,
//       ),
//       padding: EdgeInsets.symmetric(
//         vertical: metrics.xSpacings.small,
//         horizontal:
//             title != null ? metrics.xSpacings.large : metrics.xSpacings.small,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           if (title != null)
//             Text(
//               title,
//               style: textTheme.titleSmall!.copyWith(
//                 color: foregroundColor,
//               ),
//             ),
//           if (hasBoth) metrics.xSpacings.xGaps.semiSmall,
//           if (icon != null) ApodIcon.regular(icon, color: foregroundColor),
//         ],
//       ),
//     );
//   }
// }
