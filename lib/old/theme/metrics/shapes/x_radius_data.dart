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
    final Radius? none,
    final Radius? extraSmall,
    final Radius? small,
    final Radius? semiSmall,
    final Radius? medium,
    final Radius? semiLarge,
    final Radius? large,
    final Radius? extraLarge,
    final Radius? superLarge,
  })  : none = none ?? Radius.zero,
        extraSmall =
            extraSmall ?? const Radius.circular(TkStandardSizeConstants.x4),
        small = small ?? const Radius.circular(TkStandardSizeConstants.x8),
        semiSmall =
            semiSmall ?? const Radius.circular(TkStandardSizeConstants.x12),
        medium = medium ?? const Radius.circular(TkStandardSizeConstants.x16),
        semiLarge =
            semiLarge ?? const Radius.circular(TkStandardSizeConstants.x20),
        large = large ?? const Radius.circular(TkStandardSizeConstants.x24),
        extraLarge =
            extraLarge ?? const Radius.circular(TkStandardSizeConstants.x32),
        superLarge =
            superLarge ?? const Radius.circular(TkStandardSizeConstants.x48);

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
  BorderRadius get large => BorderRadius.all(_radius.large);
  BorderRadius get extraLarge => BorderRadius.all(_radius.extraLarge);
  BorderRadius get superLarge => BorderRadius.all(_radius.superLarge);
}
