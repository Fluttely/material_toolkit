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

  XRadiusData({
    Radius? none,
    Radius? extraSmall,
    Radius? small,
    Radius? semiSmall,
    Radius? medium,
    Radius? semiLarge,
    Radius? large,
    Radius? extraLarge,
  })  : none = none ?? Radius.circular(XSpacingsData().none * 2),
        extraSmall = extraSmall ??
            Radius.circular(XSpacingsData().extraSmall * 2),
        small = small ?? Radius.circular(XSpacingsData().small * 2),
        semiSmall = semiSmall ??
            Radius.circular(XSpacingsData().semiSmall * 2),
        medium =
            medium ?? Radius.circular(XSpacingsData().medium * 2),
        semiLarge = semiLarge ??
            Radius.circular(XSpacingsData().semiLarge * 2),
        large =
            large ?? Radius.circular(XSpacingsData().semiLarge * 2),
        extraLarge = extraLarge ??
            Radius.circular(XSpacingsData().extraLarge * 2);

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
