part of x_metrics_data;

class XDurationsData {
  final bool areAnimationEnabled;
  final Duration regular;
  final Duration quick;

  const XDurationsData({
    bool? areAnimationEnabled,
    Duration? regular,
    Duration? quick,
  })  : areAnimationEnabled = areAnimationEnabled ?? true,
        regular = regular ?? const Duration(milliseconds: 250),
        quick = quick ?? const Duration(milliseconds: 100);
}
