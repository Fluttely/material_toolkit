// import 'package:flutter/material.dart';

// enum XTextLevel {
//   labelSmall,
//   labelMedium,
//   labelLarge,
//   bodySmall,
//   bodyMedium,
//   bodyLarge,
//   titleSmall,
//   titleMedium,
//   titleLarge,
//   headlineSmall,
//   headlineMedium,
//   headlineLarge,
//   displaySmall,
//   displayMedium,
//   displayLarge,
// }

// class XText extends StatelessWidget {
//   final String data;
//   final TextStyle? style;
//   final StrutStyle? strutStyle;
//   final TextAlign? textAlign;
//   final TextDirection? textDirection;
//   final Locale? locale;
//   final bool? softWrap;
//   final TextOverflow? overflow;
//   final int? maxLines;
//   final String? semanticsLabel;
//   final TextWidthBasis? textWidthBasis;
//   final TextHeightBehavior? textHeightBehavior;
//   final Color? selectionColor;
//   final TextScaler? textScaler;
//   final XTextLevel? xLevel;

//   const XText(
//     this.data, {
//     required this.xLevel,
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   }) : style = null;

//   const XText.custom(
//     this.data, {
//     required this.style,
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   }) : xLevel = null;

//   const XText.labelSmall(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.labelSmall;

//   const XText.labelMedium(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.labelMedium;

//   const XText.labelLarge(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.labelLarge;

//   const XText.bodySmall(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.bodySmall;

//   const XText.bodyMedium(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.bodyMedium;

//   const XText.bodyLarge(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.bodyLarge;

//   const XText.titleSmall(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.titleSmall;

//   const XText.titleMedium(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.titleMedium;

//   const XText.titleLarge(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.titleLarge;

//   const XText.headlineSmall(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.headlineSmall;

//   const XText.headlineMedium(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.headlineMedium;

//   const XText.headlineLarge(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.headlineLarge;

//   const XText.displaySmall(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.displaySmall;

//   const XText.displayMedium(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.displayMedium;

//   const XText.displayLarge(
//     this.data, {
//     super.key,
//     this.strutStyle,
//     this.textAlign,
//     this.textDirection,
//     this.locale,
//     this.softWrap,
//     this.overflow,
//     this.maxLines,
//     this.semanticsLabel,
//     this.textWidthBasis,
//     this.textHeightBehavior,
//     this.selectionColor,
//     this.textScaler,
//   })  : style = null,
//         xLevel = XTextLevel.displayLarge;

//   @override
//   Widget build(BuildContext context) {
//     final textThemeData = Theme.of(context).textTheme;
//     final resolvedTextStyle =
//         resolveXTextStyle(xTextTheme: xLevel, textTheme: textThemeData);

//     return Text(
//       data,
//       style: resolvedTextStyle ?? style,
//       strutStyle: strutStyle,
//       textAlign: textAlign,
//       textDirection: textDirection,
//       locale: locale,
//       softWrap: softWrap,
//       overflow: overflow,
//       maxLines: maxLines,
//       semanticsLabel: semanticsLabel,
//       textWidthBasis: textWidthBasis,
//       textHeightBehavior: textHeightBehavior,
//       selectionColor: selectionColor,
//       textScaler: textScaler,
//     );
//   }

//   TextStyle? resolveXTextStyle(
//           {required XTextLevel? xTextTheme, required TextTheme textTheme}) =>
//       switch (xTextTheme) {
//         XTextLevel.displaySmall => textTheme.displaySmall!,
//         XTextLevel.displayMedium => textTheme.displayMedium!,
//         XTextLevel.displayLarge => textTheme.displayLarge!,
//         XTextLevel.headlineSmall => textTheme.headlineSmall!,
//         XTextLevel.headlineMedium => textTheme.headlineMedium!,
//         XTextLevel.headlineLarge => textTheme.headlineLarge!,
//         XTextLevel.titleSmall => textTheme.titleSmall!,
//         XTextLevel.titleMedium => textTheme.titleMedium!,
//         XTextLevel.titleLarge => textTheme.titleLarge!,
//         XTextLevel.bodySmall => textTheme.bodySmall!,
//         XTextLevel.bodyMedium => textTheme.bodyMedium!,
//         XTextLevel.bodyLarge => textTheme.bodyLarge!,
//         XTextLevel.labelSmall => textTheme.labelSmall!,
//         XTextLevel.labelMedium => textTheme.labelMedium!,
//         XTextLevel.labelLarge => textTheme.labelLarge!,
//         null => null,
//       };

//   XText copyWith({
//     String? data,
//     TextStyle? style,
//     StrutStyle? strutStyle,
//     TextAlign? textAlign,
//     TextDirection? textDirection,
//     Locale? locale,
//     bool? softWrap,
//     TextOverflow? overflow,
//     int? maxLines,
//     String? semanticsLabel,
//     TextWidthBasis? textWidthBasis,
//     TextHeightBehavior? textHeightBehavior,
//     Color? selectionColor,
//     TextScaler? textScaler,
//     XTextLevel? xLevel,
//   }) {
//     return XText.custom(
//       data ?? this.data,
//       style: style ?? this.style,
//       key: key,
//       strutStyle: strutStyle ?? this.strutStyle,
//       textAlign: textAlign ?? this.textAlign,
//       textDirection: textDirection ?? this.textDirection,
//       locale: locale ?? this.locale,
//       softWrap: softWrap ?? this.softWrap,
//       overflow: overflow ?? this.overflow,
//       maxLines: maxLines ?? this.maxLines,
//       semanticsLabel: semanticsLabel ?? this.semanticsLabel,
//       textWidthBasis: textWidthBasis ?? this.textWidthBasis,
//       textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
//       selectionColor: selectionColor ?? this.selectionColor,
//       textScaler: textScaler ?? this.textScaler,
//     );
//   }
// }
