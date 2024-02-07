part of x_metrics_data;

class XBoxShadowsData {
  final BoxShadow small;
  final BoxShadow medium;
  final BoxShadow large;

  const XBoxShadowsData({
    final BoxShadow? small,
    final BoxShadow? medium,
    final BoxShadow? large,
  })  : small = small ??
            const BoxShadow(
              blurRadius: TkStandardSizeConstants.x4 / 2,
              spreadRadius: TkStandardSizeConstants.x4 / 4,
              // TODO: NOW - CHANGE COLOR
              color: Colors.grey,
            ),
        medium = medium ??
            const BoxShadow(
              blurRadius: TkStandardSizeConstants.x4,
              spreadRadius: TkStandardSizeConstants.x4 / 4,
              // TODO: NOW - CHANGE COLOR
              color: Colors.grey,
            ),
        large = large ??
            const BoxShadow(
              blurRadius: TkStandardSizeConstants.x4 * 2,
              spreadRadius: TkStandardSizeConstants.x4 / 2,
              // TODO: NOW - CHANGE COLOR
              color: Colors.grey,
            );
}
