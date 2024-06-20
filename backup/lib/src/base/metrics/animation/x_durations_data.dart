part of x_metrics_data;

class XDurationsData extends Equatable {
  final bool? _areAnimationEnabled;
  final Duration? _slow;
  final Duration? _regular;
  final Duration? _quick;

  // const XDurationsData({
  //   final bool? areAnimationEnabled,
  //   final Duration? slow,
  //   final Duration? regular,
  //   final Duration? quick,
  // })  : _areAnimationEnabled = areAnimationEnabled,
  //       _slow = slow,
  //       _regular = regular,
  //       _quick = quick;

  const XDurationsData({
    final bool? areAnimationEnabled,
    final Duration? slow,
    final Duration? regular,
    final Duration? quick,
  })  : _areAnimationEnabled = areAnimationEnabled ?? true,
        _slow = slow ?? const Duration(milliseconds: XStandardMilliseconds.x500),
        _regular = regular ?? const Duration(milliseconds: XStandardMilliseconds.x300),
        _quick = quick ?? const Duration(milliseconds: XStandardMilliseconds.x100);

  // XDurationsData.x({
  //   final XAttribute<bool?>? areAnimationEnabled,
  //   final XAttribute<Duration?>? slow,
  //   final XAttribute<Duration?>? regular,
  //   final XAttribute<Duration?>? quick,
  // })  : _areAnimationEnabled = areAnimationEnabled == null ? true : areAnimationEnabled.value,
  //       _slow = slow == null ? const Duration(milliseconds: XStandardMilliseconds.x500) : slow.value,
  //       _regular = regular == null ? const Duration(milliseconds: XStandardMilliseconds.x300) : regular.value,
  //       _quick = quick == null ? const Duration(milliseconds: XStandardMilliseconds.x100) : quick.value;

  bool get areAnimationEnabled =>
      _areAnimationEnabled ??
      (throw UnsupportedError(
          XMetricsError.getUnsupportedErrorMessage(attribute: 'areAnimationEnabled', location: 'durations')));
  Duration get slow =>
      _slow ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'slow', location: 'durations')));
  Duration get regular =>
      _regular ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'regular', location: 'durations')));
  Duration get quick =>
      _quick ??
      (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(attribute: 'quick', location: 'durations')));
  @override
  List<Object?> get props => [
        areAnimationEnabled.named('areAnimationEnabled'),
        slow.named('slow'),
        regular.named('regular'),
        quick.named('quick'),
      ];

  @override
  String toString() => '''
    XDurationsData(
      areAnimationEnabled: $areAnimationEnabled,
      slow: $slow,
      regular: $regular,
      quick: $quick,
    )
  ''';
}
