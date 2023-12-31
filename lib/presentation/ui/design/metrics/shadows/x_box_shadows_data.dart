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

  const XBoxShadowsData({
    required this.none,
    required this.extraSmall,
    required this.small,
    required this.semiSmall,
    required this.medium,
    required this.semiLarge,
    required this.large,
    required this.extraLarge,
  });

  factory XBoxShadowsData._fallback() {
    return XBoxShadowsData(
      none: const BoxShadow(
        blurRadius: 0,
        spreadRadius: 0,
        color: Colors.transparent,
      ),
      extraSmall: BoxShadow(
        blurRadius: 1,
        spreadRadius: 1,
        color: Colors.black.withOpacity(.4),
      ),
      small: BoxShadow(
        blurRadius: 2,
        spreadRadius: 1,
        color: Colors.black.withOpacity(.4),
      ),
      semiSmall: BoxShadow(
        blurRadius: 3,
        spreadRadius: 1,
        color: Colors.black.withOpacity(.4),
      ),
      medium: BoxShadow(
        blurRadius: 4,
        spreadRadius: 1,
        color: Colors.black.withOpacity(.4),
      ),
      semiLarge: BoxShadow(
        blurRadius: 6,
        spreadRadius: 2,
        color: Colors.black.withOpacity(.4),
      ),
      large: BoxShadow(
        blurRadius: 8,
        spreadRadius: 2,
        color: Colors.black.withOpacity(.4),
      ),
      extraLarge: BoxShadow(
        blurRadius: 12,
        spreadRadius: 2,
        color: Colors.black.withOpacity(.4),
      ),
    );
  }
}
