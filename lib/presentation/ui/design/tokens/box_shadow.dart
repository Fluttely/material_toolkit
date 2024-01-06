import 'package:material_toolkit/material_toolkit.dart';

class XBoxShadow extends BoxShadow {
  const XBoxShadow({
    super.blurRadius,
    super.spreadRadius,
    super.color,
  });

  const XBoxShadow.none()
      : super(
          blurRadius: 0,
          spreadRadius: 0,
          color: Colors.transparent,
        );

  XBoxShadow.extraSmall()
      : super(
          blurRadius: 1,
          spreadRadius: 1,
          color: Theme.of(MaterialX.context).colorScheme.shadow,
        );

  XBoxShadow.small()
      : super(
          blurRadius: 2,
          spreadRadius: 1,
          color: Theme.of(MaterialX.context).colorScheme.shadow,
        );

  XBoxShadow.semiSmall()
      : super(
          blurRadius: 3,
          spreadRadius: 1,
          color: Theme.of(MaterialX.context).colorScheme.shadow,
        );

  XBoxShadow.medium()
      : super(
          blurRadius: 4,
          spreadRadius: 1,
          color: Theme.of(MaterialX.context).colorScheme.shadow,
        );

  XBoxShadow.semiLarge()
      : super(
          blurRadius: 6,
          spreadRadius: 2,
          color: Theme.of(MaterialX.context).colorScheme.shadow,
        );

  XBoxShadow.large()
      : super(
          blurRadius: 8,
          spreadRadius: 2,
          color: Theme.of(MaterialX.context).colorScheme.shadow,
        );

  XBoxShadow.extraLarge()
      : super(
          blurRadius: 12,
          spreadRadius: 2,
          color: Theme.of(MaterialX.context).colorScheme.shadow,
        );

  XBoxShadow.superLarge()
      : super(
          blurRadius: 12,
          spreadRadius: 2,
          color: Theme.of(MaterialX.context).colorScheme.shadow,
        );
}
