part of x_metrics_data;

class XDurationsData {
  final bool areAnimationEnabled;
  final Duration regular;
  final Duration quick;

  const XDurationsData({
    required this.areAnimationEnabled,
    required this.regular,
    required this.quick,
  });

  factory XDurationsData._fallback() => const XDurationsData(
        areAnimationEnabled: true,
        regular: Duration(milliseconds: 250),
        quick: Duration(milliseconds: 100),
      );
}
