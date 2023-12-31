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

  const XRadiusData({
    required this.none,
    required this.extraSmall,
    required this.small,
    required this.semiSmall,
    required this.medium,
    required this.semiLarge,
    required this.large,
    required this.extraLarge,
  });

  XRadiusData._fallback()
      : none = Radius.circular(XSpacingsData._fallback().none),
        extraSmall = Radius.circular(XSpacingsData._fallback().extraSmall),
        small = Radius.circular(XSpacingsData._fallback().small),
        semiSmall = Radius.circular(XSpacingsData._fallback().semiSmall),
        medium = Radius.circular(XSpacingsData._fallback().medium),
        semiLarge = Radius.circular(XSpacingsData._fallback().semiLarge),
        large = Radius.circular(XSpacingsData._fallback().semiLarge),
        extraLarge = Radius.circular(XSpacingsData._fallback().extraLarge);

  XBorderRadiusData get border => XBorderRadiusData(this);
}

class XBorderRadiusData {
  final XRadiusData _radius;

  const XBorderRadiusData(this._radius);

  BorderRadius get none => BorderRadius.all(_radius.none);
  BorderRadius get extraSmall => BorderRadius.all(_radius.extraSmall);
  BorderRadius get small => BorderRadius.all(_radius.small);
  BorderRadius get semiSmall => BorderRadius.all(_radius.semiSmall);
  BorderRadius get medium => BorderRadius.all(_radius.medium);
  BorderRadius get semiLarge => BorderRadius.all(_radius.semiLarge);
  BorderRadius get large => BorderRadius.all(_radius.semiLarge);
  BorderRadius get extraLarge => BorderRadius.all(_radius.extraLarge);
}
