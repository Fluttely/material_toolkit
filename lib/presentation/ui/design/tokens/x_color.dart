import 'package:material_toolkit/material_toolkit.dart';

class XColor extends Color {
  XColor(super.data);

  XColor.primary()
      : super(Theme.of(MaterialX.context).colorScheme.primary.value);

  XColor.secondary()
      : super(Theme.of(MaterialX.context).colorScheme.secondary.value);

  XColor.surface()
      : super(Theme.of(MaterialX.context).colorScheme.surface.value);

  XColor.background()
      : super(Theme.of(MaterialX.context).colorScheme.background.value);

  XColor.error()
      : super(Theme.of(MaterialX.context).colorScheme.error.value);

  XColor.onPrimary()
      : super(Theme.of(MaterialX.context).colorScheme.onPrimary.value);

  XColor.onSecondary()
      : super(Theme.of(MaterialX.context).colorScheme.onSecondary.value);

  XColor.onSurface()
      : super(Theme.of(MaterialX.context).colorScheme.onSurface.value);

  XColor.onBackground()
      : super(Theme.of(MaterialX.context).colorScheme.onBackground.value);

  XColor.onError()
      : super(Theme.of(MaterialX.context).colorScheme.onError.value);

  XColor.onPrimaryContainer()
      : super(Theme.of(MaterialX.context).colorScheme.onPrimaryContainer.value);

  XColor.primaryContainer()
      : super(Theme.of(MaterialX.context).colorScheme.primaryContainer.value);

  XColor.errorContainer()
      : super(Theme.of(MaterialX.context).colorScheme.errorContainer.value);

  XColor.inversePrimary()
      : super(Theme.of(MaterialX.context).colorScheme.inversePrimary.value);

  XColor.inverseSurface()
      : super(Theme.of(MaterialX.context).colorScheme.inverseSurface.value);

  XColor.onErrorContainer()
      : super(Theme.of(MaterialX.context).colorScheme.onErrorContainer.value);

  XColor.onSecondaryContainer()
      : super(Theme.of(MaterialX.context).colorScheme.onSecondaryContainer.value);

  XColor.onSurfaceVariant()
      : super(Theme.of(MaterialX.context).colorScheme.onSurfaceVariant.value);

  XColor.tertiary()
      : super(Theme.of(MaterialX.context).colorScheme.tertiary.value);

  XColor.onInverseSurface()
      : super(Theme.of(MaterialX.context).colorScheme.onInverseSurface.value);

  XColor.onTertiary()
      : super(Theme.of(MaterialX.context).colorScheme.onTertiary.value);

  XColor.onTertiaryContainer()
      : super(Theme.of(MaterialX.context).colorScheme.onTertiaryContainer.value);

  XColor.outline()
      : super(Theme.of(MaterialX.context).colorScheme.outline.value);

  XColor.outlineVariant()
      : super(Theme.of(MaterialX.context).colorScheme.outlineVariant.value);

  XColor.scrim()
      : super(Theme.of(MaterialX.context).colorScheme.scrim.value);

  XColor.secondaryContainer()
      : super(Theme.of(MaterialX.context).colorScheme.secondaryContainer.value);

  XColor.shadow()
      : super(Theme.of(MaterialX.context).colorScheme.shadow.value);

  XColor.surfaceTint()
      : super(Theme.of(MaterialX.context).colorScheme.surfaceTint.value);

  XColor.surfaceVariant()
      : super(Theme.of(MaterialX.context).colorScheme.surfaceVariant.value);

  XColor.tertiaryContainer()
      : super(Theme.of(MaterialX.context).colorScheme.tertiaryContainer.value);

  static Brightness brightness() =>
      Theme.of(MaterialX.context).colorScheme.brightness;
}
