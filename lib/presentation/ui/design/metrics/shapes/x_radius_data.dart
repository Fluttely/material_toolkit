part of x_metrics_data;

class XRadiusData {
  final Radius none;
  final Radius extraSmall;
  final Radius small;
  final Radius semiSmall;
  final Radius medium;
  final Radius semiLarge;
  final Radius large;
  final Radius extraLarge;
  final Radius superLarge;

  const XRadiusData({
    Radius? none,
    Radius? extraSmall,
    Radius? small,
    Radius? semiSmall,
    Radius? medium,
    Radius? semiLarge,
    Radius? large,
    Radius? extraLarge,
    Radius? superLarge,
  })  : none = none ?? const Radius.circular(0),
        extraSmall = extraSmall ?? const Radius.circular(4),
        small = small ?? const Radius.circular(8),
        semiSmall = semiSmall ?? const Radius.circular(12),
        medium = medium ?? const Radius.circular(16),
        semiLarge = semiLarge ?? const Radius.circular(20),
        large = large ?? const Radius.circular(24),
        extraLarge = extraLarge ?? const Radius.circular(32),
        superLarge = superLarge ?? const Radius.circular(48);

  // : none = none ?? Radius.circular(MaterialX.of(MaterialX.context).metrics.spacing.none),
  // extraSmall = extraSmall ?? Radius.circular(MaterialX.of(MaterialX.context).metrics.spacing.extraSmall),
  // small = small ?? Radius.circular(MaterialX.of(MaterialX.context).metrics.spacing.small),
  // semiSmall = semiSmall ?? Radius.circular(MaterialX.of(MaterialX.context).metrics.spacing.semiSmall),
  // medium = medium ?? Radius.circular(MaterialX.of(MaterialX.context).metrics.spacing.medium),
  // semiLarge = semiLarge ?? Radius.circular(MaterialX.of(MaterialX.context).metrics.spacing.semiLarge),
  // large = large ?? Radius.circular(MaterialX.of(MaterialX.context).metrics.spacing.semiLarge),
  // extraLarge = extraLarge ?? Radius.circular(MaterialX.of(MaterialX.context).metrics.spacing.extraLarge),
  // superLarge = superLarge ?? Radius.circular(MaterialX.of(MaterialX.context).metrics.spacing.superLarge);

  // XBorderRadiusData get border => XBorderRadiusData(this);
}

// extension ASsda on XRadiusData {
//   BorderRadius get border => switch (this) {
//         // 0 => DrawerSignedInRootType.home,
//         // 1 => DrawerSignedInRootType.findingMyselfGame,
//         // _ => DrawerSignedInRootType.home,
//         none => BorderRadius.all(_radius.none),
//         extraSmall => BorderRadius.all(_radius.extraSmall),
//         small => BorderRadius.all(_radius.small),
//         semiSmall => BorderRadius.all(_radius.semiSmall),
//         medium => BorderRadius.all(_radius.medium),
//         semiLarge => BorderRadius.all(_radius.semiLarge),
//         large => BorderRadius.all(_radius.semiLarge),
//         extraLarge => BorderRadius.all(_radius.extraLarge),
//       };
// }

// class XBorderRadiusData {
//   final XRadiusData _radius;

//   const XBorderRadiusData(this._radius);

//   BorderRadius get none => BorderRadius.all(_radius.none);
//   BorderRadius get extraSmall => BorderRadius.all(_radius.extraSmall);
//   BorderRadius get small => BorderRadius.all(_radius.small);
//   BorderRadius get semiSmall => BorderRadius.all(_radius.semiSmall);
//   BorderRadius get medium => BorderRadius.all(_radius.medium);
//   BorderRadius get semiLarge => BorderRadius.all(_radius.semiLarge);
//   BorderRadius get large => BorderRadius.all(_radius.semiLarge);
//   BorderRadius get extraLarge => BorderRadius.all(_radius.extraLarge);
// }
