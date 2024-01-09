import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// DONE
enum XTextTheme {
  displaySmall,
  displayMedium,
  displayLarge,
  headlineSmall,
  headlineMedium,
  headlineLarge,
  titleSmall,
  titleMedium,
  titleLarge,
  bodySmall,
  bodyMedium,
  bodyLarge,
  labelSmall,
  labelMedium,
  labelLarge,
}

class XText extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;
  final TextScaler? textScaler;
  final XTextTheme? xTextTheme;

  const XText(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
    this.xTextTheme,
  });

  const XText.displaySmall(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.displaySmall;

  const XText.displayMedium(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.displayMedium;

  const XText.displayLarge(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.displayLarge;

  const XText.headlineSmall(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.headlineSmall;

  const XText.headlineMedium(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.headlineMedium;

  const XText.headlineLarge(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.headlineLarge;

  const XText.titleSmall(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.titleSmall;

  const XText.titleMedium(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.titleMedium;

  const XText.titleLarge(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.titleLarge;

  const XText.bodySmall(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.bodySmall;

  const XText.bodyMedium(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.bodyMedium;

  const XText.bodyLarge(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.bodyLarge;

  const XText.labelSmall(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.labelSmall;

  const XText.labelMedium(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.labelMedium;

  const XText.labelLarge(
    this.data, {
    super.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.textScaler,
  })  : style = null,
        xTextTheme = XTextTheme.labelLarge;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final xStyle =
        resolveXTextStyle(xTextTheme: xTextTheme, textTheme: textTheme);

    return Text(
      data,
      style: xStyle ?? style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      textScaler: textScaler,
    );
  }

  TextStyle? resolveXTextStyle(
          {required XTextTheme? xTextTheme, required TextTheme textTheme}) =>
      switch (xTextTheme) {
        XTextTheme.displaySmall => textTheme.displaySmall!,
        XTextTheme.displayMedium => textTheme.displayMedium!,
        XTextTheme.displayLarge => textTheme.displayLarge!,
        XTextTheme.headlineSmall => textTheme.headlineSmall!,
        XTextTheme.headlineMedium => textTheme.headlineMedium!,
        XTextTheme.headlineLarge => textTheme.headlineLarge!,
        XTextTheme.titleSmall => textTheme.titleSmall!,
        XTextTheme.titleMedium => textTheme.titleMedium!,
        XTextTheme.titleLarge => textTheme.titleLarge!,
        XTextTheme.bodySmall => textTheme.bodySmall!,
        XTextTheme.bodyMedium => textTheme.bodyMedium!,
        XTextTheme.bodyLarge => textTheme.bodyLarge!,
        XTextTheme.labelSmall => textTheme.labelSmall!,
        XTextTheme.labelMedium => textTheme.labelMedium!,
        XTextTheme.labelLarge => textTheme.labelLarge!,
        null => null,
      };
}
