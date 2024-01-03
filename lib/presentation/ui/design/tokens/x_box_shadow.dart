import 'package:material_toolkit/material_toolkit.dart';

class XBoxShadow extends BoxShadow {
  const XBoxShadow({
    super.blurRadius,
    super.spreadRadius,
    super.color,
  });

  XBoxShadow.none()
      : super(
          blurRadius: XService.instance.metrics.boxShadows.none.blurRadius,
          spreadRadius: XService.instance.metrics.boxShadows.none.spreadRadius,
        );

  XBoxShadow.extraSmall()
      : super(
          blurRadius:
              XService.instance.metrics.boxShadows.extraSmall.blurRadius,
          spreadRadius:
              XService.instance.metrics.boxShadows.extraSmall.spreadRadius,
        );

  XBoxShadow.small()
      : super(
          blurRadius: XService.instance.metrics.boxShadows.small.blurRadius,
          spreadRadius: XService.instance.metrics.boxShadows.small.spreadRadius,
        );

  XBoxShadow.semiSmall()
      : super(
          blurRadius: XService.instance.metrics.boxShadows.semiSmall.blurRadius,
          spreadRadius:
              XService.instance.metrics.boxShadows.semiSmall.spreadRadius,
        );

  XBoxShadow.medium()
      : super(
          blurRadius: XService.instance.metrics.boxShadows.medium.blurRadius,
          spreadRadius:
              XService.instance.metrics.boxShadows.medium.spreadRadius,
        );

  XBoxShadow.semiLarge()
      : super(
          blurRadius: XService.instance.metrics.boxShadows.semiLarge.blurRadius,
          spreadRadius:
              XService.instance.metrics.boxShadows.semiLarge.spreadRadius,
        );

  XBoxShadow.large()
      : super(
          blurRadius: XService.instance.metrics.boxShadows.large.blurRadius,
          spreadRadius: XService.instance.metrics.boxShadows.large.spreadRadius,
        );

  XBoxShadow.extraLarge()
      : super(
          blurRadius:
              XService.instance.metrics.boxShadows.extraLarge.blurRadius,
          spreadRadius:
              XService.instance.metrics.boxShadows.extraLarge.spreadRadius,
        );
}
