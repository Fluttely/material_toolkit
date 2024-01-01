part of x_metrics_data;

class XBoxShadowsData {
  final BoxShadow none;
  final BoxShadow extraSmall;
  final BoxShadow small;
  final BoxShadow semiSmall;
  final BoxShadow medium;
  final BoxShadow semiLarge;
  final BoxShadow large;
  final BoxShadow extraLarge;

  XBoxShadowsData({
    BoxShadow? none,
    BoxShadow? extraSmall,
    BoxShadow? small,
    BoxShadow? semiSmall,
    BoxShadow? medium,
    BoxShadow? semiLarge,
    BoxShadow? large,
    BoxShadow? extraLarge,
  })  : none = none ??
            const BoxShadow(
              blurRadius: 0,
              spreadRadius: 0,
              color: Colors.transparent,
            ),
        extraSmall = extraSmall ??
            BoxShadow(
              blurRadius: 1,
              spreadRadius: 1,
              color: Colors.black.withOpacity(.4),
            ),
        small = small ??
            BoxShadow(
              blurRadius: 2,
              spreadRadius: 1,
              color: Colors.black.withOpacity(.4),
            ),
        semiSmall = semiSmall ??
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 1,
              color: Colors.black.withOpacity(.4),
            ),
        medium = medium ??
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 1,
              color: Colors.black.withOpacity(.4),
            ),
        semiLarge = semiLarge ??
            BoxShadow(
              blurRadius: 6,
              spreadRadius: 2,
              color: Colors.black.withOpacity(.4),
            ),
        large = large ??
            BoxShadow(
              blurRadius: 8,
              spreadRadius: 2,
              color: Colors.black.withOpacity(.4),
            ),
        extraLarge = extraLarge ??
            BoxShadow(
              blurRadius: 12,
              spreadRadius: 2,
              color: Colors.black.withOpacity(.4),
            );
}
