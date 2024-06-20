// import 'package:flutter/material.dart';
// import 'package:remo_design_system/remo_design_system.dart';
// import 'package:tap_builder/tap_builder.dart';

// class ApodActionButton extends StatelessWidget {
//   const ApodActionButton({
//     required this.icon,
//     super.key,
//     this.onTap,
//   });

//   final String icon;
//   final VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return TapBuilder(
//       onTap: onTap,
//       builder: (context, state, hasFocus) {
//         switch (state) {
//           case TapState.hover:
//             return ApodActionButtonLayout.hovered(icon: icon);
//           case TapState.pressed:
//             return ApodActionButtonLayout.pressed(icon: icon);
//           default:
//             return ApodActionButtonLayout.inactive(icon: icon);
//         }
//       },
//     );
//   }
// }

// class ApodActionButtonLayout extends StatelessWidget {
//   const ApodActionButtonLayout.inactive({
//     required this.icon,
//     super.key,
//   }) : _state = ApodTextButtonState.inactive;

//   const ApodActionButtonLayout.hovered({
//     required this.icon,
//     super.key,
//   }) : _state = ApodTextButtonState.hovered;

//   const ApodActionButtonLayout.pressed({
//     required this.icon,
//     super.key,
//   }) : _state = ApodTextButtonState.pressed;

//   final String icon;
//   final ApodTextButtonState _state;

//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;
//     switch (_state) {
//       case ApodTextButtonState.hovered:
//         return ApodTextButtonLayout.hovered(
//           icon: icon,
//           hoveredBackgroundColor: colorScheme.onPrimary.withOpacity(0.15),
//         );
//       case ApodTextButtonState.pressed:
//         return ApodTextButtonLayout.pressed(
//           icon: icon,
//           pressedBackgroundColor: colorScheme.onPrimary.withOpacity(0.20),
//         );
//       case ApodTextButtonState.inactive:
//         return ApodTextButtonLayout.inactive(
//           icon: icon,
//           inactiveBackgroundColor: colorScheme.onPrimary.withOpacity(0),
//         );
//     }
//   }
// }
