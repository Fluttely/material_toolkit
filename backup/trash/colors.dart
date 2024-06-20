// import 'package:equatable/equatable.dart';
// import 'package:remo_design_system/remo_design_system.dart';import 'package:flutter/material.dart';

// class ApodColorsData extends Equatable {
//   const ApodColorsData({
//     required this.accent,
//     required this.accentHighlight,
//     required this.accentHighlight2,
//     required this.foreground,
//     required this.background,
//     required this.actionBarBackground,
//     required this.actionBarForeground,
//     required this.accentOpposite,
//   });

//   factory ApodColorsData.light() => const ApodColorsData(
//         accent: Color(0xFFD21F3C),
//         accentOpposite: Color(0xFFFFFFFF),
//         accentHighlight: Color(0xFFB71C37),
//         accentHighlight2: Color(0xFF9C172E),
//         foreground: Color(0xFF000000),
//         background: Color(0xFFFFFFFF),
//         actionBarBackground: Color(0xFF000000),
//         actionBarForeground: Color(0xFFFFFFFF),
//       );

//   factory ApodColorsData.dark() => const ApodColorsData(
//         accent: Color(0xFFD21F3C),
//         accentOpposite: Color(0xFFFFFFFF),
//         accentHighlight: Color(0xFFB71C37),
//         accentHighlight2: Color(0xFF9C172E),
//         foreground: Color(0xFFFFFFFF),
//         background: Color(0xFF111111),
//         actionBarBackground: Color(0xFF000000),
//         actionBarForeground: Color(0xFFFFFFFF),
//       );

//   factory ApodColorsData.highContrast() => const ApodColorsData(
//         accent: Color(0xFFD21F3C),
//         accentOpposite: Color(0xFFFFFFFF),
//         accentHighlight: Color(0xFFD21F3C),
//         accentHighlight2: Color(0xFFD21F3C),
//         foreground: Color(0xFF000000),
//         background: Color(0xFFFFFFFF),
//         actionBarBackground: Color(0xFF000000),
//         actionBarForeground: Color(0xFFFFFFFF),
//       );

//   final Color accent;
//   final Color accentHighlight;
//   final Color accentHighlight2;
//   final Color foreground;
//   final Color accentOpposite;
//   final Color background;
//   final Color actionBarForeground;
//   final Color actionBarBackground;

//   @override
//   List<Object?> get props => [
//         accent.named('accent'),
//         accentHighlight.named('accentHighlight'),
//         accentHighlight2.named('accentHighlight2'),
//         foreground.named('foreground'),
//         accentOpposite.named('accentOpposite'),
//         background.named('background'),
//         actionBarForeground.named('actionBarForeground'),
//         actionBarBackground.named('actionBarBackground'),
//       ];
// }
