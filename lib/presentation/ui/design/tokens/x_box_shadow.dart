import 'package:material_toolkit/material_toolkit.dart';

class XBoxShadow extends BoxShadow {
  const XBoxShadow({
    super.blurRadius,
    super.spreadRadius,
    super.color,
  });

  XBoxShadow.none()
      : super(
          blurRadius: MaterialX.of(MaterialX.context).metrics!.boxShadows.none.blurRadius,
          spreadRadius: MaterialX.of(MaterialX.context).metrics!.boxShadows.none.spreadRadius,
        );

  XBoxShadow.extraSmall()
      : super(
          blurRadius:
              MaterialX.of(MaterialX.context).metrics!.boxShadows.extraSmall.blurRadius,
          spreadRadius:
              MaterialX.of(MaterialX.context).metrics!.boxShadows.extraSmall.spreadRadius,
        );

  XBoxShadow.small()
      : super(
          blurRadius: MaterialX.of(MaterialX.context).metrics!.boxShadows.small.blurRadius,
          spreadRadius: MaterialX.of(MaterialX.context).metrics!.boxShadows.small.spreadRadius,
        );

  XBoxShadow.semiSmall()
      : super(
          blurRadius: MaterialX.of(MaterialX.context).metrics!.boxShadows.semiSmall.blurRadius,
          spreadRadius:
              MaterialX.of(MaterialX.context).metrics!.boxShadows.semiSmall.spreadRadius,
        );

  XBoxShadow.medium()
      : super(
          blurRadius: MaterialX.of(MaterialX.context).metrics!.boxShadows.medium.blurRadius,
          spreadRadius:
              MaterialX.of(MaterialX.context).metrics!.boxShadows.medium.spreadRadius,
        );

  XBoxShadow.semiLarge()
      : super(
          blurRadius: MaterialX.of(MaterialX.context).metrics!.boxShadows.semiLarge.blurRadius,
          spreadRadius:
              MaterialX.of(MaterialX.context).metrics!.boxShadows.semiLarge.spreadRadius,
        );

  XBoxShadow.large()
      : super(
          blurRadius: MaterialX.of(MaterialX.context).metrics!.boxShadows.large.blurRadius,
          spreadRadius: MaterialX.of(MaterialX.context).metrics!.boxShadows.large.spreadRadius,
        );

  XBoxShadow.extraLarge()
      : super(
          blurRadius:
              MaterialX.of(MaterialX.context).metrics!.boxShadows.extraLarge.blurRadius,
          spreadRadius:
              MaterialX.of(MaterialX.context).metrics!.boxShadows.extraLarge.spreadRadius,
        );
}
