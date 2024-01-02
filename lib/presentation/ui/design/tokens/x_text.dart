import 'package:material_toolkit/material_toolkit.dart';

class XTextTokens extends Text {
  const XTextTokens.custom(
    super.data, {
    super.style,
    super.key,
  });

  XTextTokens.displayLarge(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.displayLarge!);

  XTextTokens.displayMedium(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.displayMedium!);

  XTextTokens.displaySmall(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.displaySmall!);

  XTextTokens.headlineLarge(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.headlineLarge!);

  XTextTokens.headlineMedium(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.headlineMedium!);

  XTextTokens.headlineSmall(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.headlineSmall!);

  XTextTokens.titleLarge(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.titleLarge!);

  XTextTokens.titleMedium(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.titleMedium!);

  XTextTokens.titleSmall(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.titleSmall!);

  XTextTokens.bodyLarge(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.bodyLarge!);

  XTextTokens.bodyMedium(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.bodyMedium!);

  XTextTokens.bodySmall(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.bodySmall!);

  XTextTokens.labelLarge(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.labelLarge!);

  XTextTokens.labelMedium(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.labelMedium!);

  XTextTokens.labelSmall(
    super.data, {
    super.key,
  }) : super(style: XService.instance.theme.textTheme.labelSmall!);
}
