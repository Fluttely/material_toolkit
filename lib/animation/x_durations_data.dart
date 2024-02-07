part of x_metrics_data;

class XDurationsData {
  final bool areAnimationEnabled;
  final Duration slow;
  final Duration regular;
  final Duration quick;

  const XDurationsData({
    final bool? areAnimationEnabled,
    final Duration? slow,
    final Duration? regular,
    final Duration? quick,
  })  : areAnimationEnabled = areAnimationEnabled ?? true,
        slow = regular ?? const Duration(milliseconds: 500),
        regular = regular ?? const Duration(milliseconds: 300),
        quick = quick ?? const Duration(milliseconds: 100);
}
