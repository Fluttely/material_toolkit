import 'package:material_toolkit/material_toolkit.dart';

class XColor extends Color {
  XColor(super.data);

  XColor.primary()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.primary.value);

  XColor.secondary()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.secondary.value);

  XColor.surface()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.surface.value);

  XColor.background()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.background.value);

  XColor.error()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.error.value);

  XColor.onPrimary()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.onPrimary.value);

  XColor.onSecondary()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.onSecondary.value);

  XColor.onSurface()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.onSurface.value);

  XColor.onBackground()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.onBackground.value);

  XColor.onError()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.onError.value);

  XColor.onPrimaryContainer()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.onPrimaryContainer.value);

  XColor.primaryContainer()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.primaryContainer.value);

  XColor.errorContainer()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.errorContainer.value);

  XColor.inversePrimary()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.inversePrimary.value);

  XColor.inverseSurface()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.inverseSurface.value);

  XColor.onErrorContainer()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.onErrorContainer.value);

  XColor.onSecondaryContainer()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.onSecondaryContainer.value);

  XColor.onSurfaceVariant()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.onSurfaceVariant.value);

  XColor.tertiary()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.tertiary.value);

  XColor.onInverseSurface()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.onInverseSurface.value);

  XColor.onTertiary()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.onTertiary.value);

  XColor.onTertiaryContainer()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.onTertiaryContainer.value);

  XColor.outline()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.outline.value);

  XColor.outlineVariant()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.outlineVariant.value);

  XColor.scrim()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.scrim.value);

  XColor.secondaryContainer()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.secondaryContainer.value);

  XColor.shadow()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.shadow.value);

  XColor.surfaceTint()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.surfaceTint.value);

  XColor.surfaceVariant()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.surfaceVariant.value);

  XColor.tertiaryContainer()
      : super(MaterialX.of(MaterialX.context).theme.colorScheme.tertiaryContainer.value);

  static Brightness brightness() =>
      MaterialX.of(MaterialX.context).theme.colorScheme.brightness;
}
