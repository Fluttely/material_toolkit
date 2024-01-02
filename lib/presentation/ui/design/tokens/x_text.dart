import 'package:material_toolkit/material_toolkit.dart';

class XText extends Text {
  const XText.custom(
    super.data, {
    super.style,
    super.key,
  });

  XText.displayLarge(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.displayLarge!,
        );

  XText.displayMedium(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.displayMedium!,
        );

  XText.displaySmall(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.displaySmall!,
        );

  XText.headlineLarge(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.headlineLarge!,
        );

  XText.headlineMedium(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.headlineMedium!,
        );

  XText.headlineSmall(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.headlineSmall!,
        );

  XText.titleLarge(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.titleLarge!,
        );

  XText.titleMedium(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.titleMedium!,
        );

  XText.titleSmall(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.titleSmall!,
        );

  XText.bodyLarge(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.bodyLarge!,
        );

  XText.bodyMedium(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.bodyMedium!,
        );

  XText.bodySmall(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.bodySmall!,
        );

  XText.labelLarge(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.labelLarge!,
        );

  XText.labelMedium(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.labelMedium!,
        );

  XText.labelSmall(
    super.data, {
    super.key,
  }) : super(
          style: XMaterialService.instance.theme.textTheme.labelSmall!,
        );
}
