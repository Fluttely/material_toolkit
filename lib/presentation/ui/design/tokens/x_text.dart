import 'package:material_toolkit/material_toolkit.dart';

class XText extends Text {
  const XText(
    super.data, {
    super.key,
    super.style,
    super.locale,
    super.maxLines,
    super.overflow,
    super.selectionColor,
  });

  XText.displayLarge(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.displayLarge!);

  XText.displayMedium(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.displayMedium!);

  XText.displaySmall(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.displaySmall!);

  XText.headlineLarge(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.headlineLarge!);

  XText.headlineMedium(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.headlineMedium!);

  XText.headlineSmall(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.headlineSmall!);

  XText.titleLarge(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.titleLarge!);

  XText.titleMedium(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.titleMedium!);

  XText.titleSmall(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.titleSmall!);

  XText.bodyLarge(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.bodyLarge!);

  XText.bodyMedium(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.bodyMedium!);

  XText.bodySmall(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.bodySmall!);

  XText.labelLarge(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.labelLarge!);

  XText.labelMedium(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.labelMedium!);

  XText.labelSmall(
    super.data, {
    super.key,
  }) : super(style: Theme.of(MaterialX.context).textTheme.labelSmall!);
}
