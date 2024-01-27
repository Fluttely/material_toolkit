import 'package:material_toolkit/material_toolkit.dart';

class XColor extends Color {
  XColor(super.data);

  XColor.primary(BuildContext context)
      : super(Theme.of(context).colorScheme.primary.value);

  XColor.secondary(BuildContext context)
      : super(Theme.of(context).colorScheme.secondary.value);

  XColor.surface(BuildContext context)
      : super(Theme.of(context).colorScheme.surface.value);

  XColor.background(BuildContext context)
      : super(Theme.of(context).colorScheme.background.value);

  XColor.error(BuildContext context)
      : super(Theme.of(context).colorScheme.error.value);

  XColor.onPrimary(BuildContext context)
      : super(Theme.of(context).colorScheme.onPrimary.value);

  XColor.onSecondary(BuildContext context)
      : super(Theme.of(context).colorScheme.onSecondary.value);

  XColor.onSurface(BuildContext context)
      : super(Theme.of(context).colorScheme.onSurface.value);

  XColor.onBackground(BuildContext context)
      : super(Theme.of(context).colorScheme.onBackground.value);

  XColor.onError(BuildContext context)
      : super(Theme.of(context).colorScheme.onError.value);

  XColor.onPrimaryContainer(BuildContext context)
      : super(Theme.of(context).colorScheme.onPrimaryContainer.value);

  XColor.primaryContainer(BuildContext context)
      : super(Theme.of(context).colorScheme.primaryContainer.value);

  XColor.errorContainer(BuildContext context)
      : super(Theme.of(context).colorScheme.errorContainer.value);

  XColor.inversePrimary(BuildContext context)
      : super(Theme.of(context).colorScheme.inversePrimary.value);

  XColor.inverseSurface(BuildContext context)
      : super(Theme.of(context).colorScheme.inverseSurface.value);

  XColor.onErrorContainer(BuildContext context)
      : super(Theme.of(context).colorScheme.onErrorContainer.value);

  XColor.onSecondaryContainer(BuildContext context)
      : super(Theme.of(context).colorScheme.onSecondaryContainer.value);

  XColor.onSurfaceVariant(BuildContext context)
      : super(Theme.of(context).colorScheme.onSurfaceVariant.value);

  XColor.tertiary(BuildContext context)
      : super(Theme.of(context).colorScheme.tertiary.value);

  XColor.onInverseSurface(BuildContext context)
      : super(Theme.of(context).colorScheme.onInverseSurface.value);

  XColor.onTertiary(BuildContext context)
      : super(Theme.of(context).colorScheme.onTertiary.value);

  XColor.onTertiaryContainer(BuildContext context)
      : super(Theme.of(context).colorScheme.onTertiaryContainer.value);

  XColor.outline(BuildContext context)
      : super(Theme.of(context).colorScheme.outline.value);

  XColor.outlineVariant(BuildContext context)
      : super(Theme.of(context).colorScheme.outlineVariant.value);

  XColor.scrim(BuildContext context)
      : super(Theme.of(context).colorScheme.scrim.value);

  XColor.secondaryContainer(BuildContext context)
      : super(Theme.of(context).colorScheme.secondaryContainer.value);

  XColor.shadow(BuildContext context)
      : super(Theme.of(context).colorScheme.shadow.value);

  XColor.surfaceTint(BuildContext context)
      : super(Theme.of(context).colorScheme.surfaceTint.value);

  XColor.surfaceVariant(BuildContext context)
      : super(Theme.of(context).colorScheme.surfaceVariant.value);

  XColor.tertiaryContainer(BuildContext context)
      : super(Theme.of(context).colorScheme.tertiaryContainer.value);

  static Brightness brightness(BuildContext context) =>
      Theme.of(context).colorScheme.brightness;
}
