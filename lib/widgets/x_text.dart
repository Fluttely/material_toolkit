import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

enum XTextTheme {
  labelSmall,
  labelMedium,
  labelLarge,
  bodySmall,
  bodyMedium,
  bodyLarge,
  titleSmall,
  titleMedium,
  titleLarge,
  headlineSmall,
  headlineMedium,
  headlineLarge,
  displaySmall,
  displayMedium,
  displayLarge,
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
  final XTextTheme? xStyle;

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
    this.xStyle,
  });

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
        xStyle = XTextTheme.labelSmall;

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
        xStyle = XTextTheme.labelMedium;

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
        xStyle = XTextTheme.labelLarge;

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
        xStyle = XTextTheme.bodySmall;

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
        xStyle = XTextTheme.bodyMedium;

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
        xStyle = XTextTheme.bodyLarge;

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
        xStyle = XTextTheme.titleSmall;

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
        xStyle = XTextTheme.titleMedium;

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
        xStyle = XTextTheme.titleLarge;

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
        xStyle = XTextTheme.headlineSmall;

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
        xStyle = XTextTheme.headlineMedium;

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
        xStyle = XTextTheme.headlineLarge;

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
        xStyle = XTextTheme.displaySmall;

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
        xStyle = XTextTheme.displayMedium;

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
        xStyle = XTextTheme.displayLarge;

  @override
  Widget build(BuildContext context) {
    final textThemeData = Theme.of(context).textTheme;
    final resolvedTextStyle =
        resolveXTextStyle(xTextTheme: xStyle, textTheme: textThemeData);

    return Text(
      data,
      style: resolvedTextStyle ?? style,
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
