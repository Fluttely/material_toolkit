part of '../design_tokens.dart';

class Durations extends Equatable {
  // final bool? _areAnimationEnabled;
  // final Duration? _slow;
  // final Duration? _regular;
  // final Duration? _quick;

  final bool _areAnimationEnabled;
  final Duration _slow;
  final Duration _regular;
  final Duration _quick;

  // const Durations({
  //   final bool? areAnimationEnabled,
  //   final Duration? slow,
  //   final Duration? regular,
  //   final Duration? quick,
  // })  : _areAnimationEnabled = areAnimationEnabled,
  //       _slow = slow,
  //       _regular = regular,
  //       _quick = quick;

  const Durations({
    final bool? areAnimationEnabled,
    final Duration? slow,
    final Duration? regular,
    final Duration? quick,
  })  : _areAnimationEnabled = areAnimationEnabled ?? true,
        _slow =
            slow ?? const Duration(milliseconds: StandardMilliseconds.x500),
        _regular =
            regular ?? const Duration(milliseconds: StandardMilliseconds.x300),
        _quick =
            quick ?? const Duration(milliseconds: StandardMilliseconds.x100);

  // Durations.x({
  //   final XAttribute<bool?>? areAnimationEnabled,
  //   final XAttribute<Duration?>? slow,
  //   final XAttribute<Duration?>? regular,
  //   final XAttribute<Duration?>? quick,
  // })  : _areAnimationEnabled = areAnimationEnabled == null ? true : areAnimationEnabled.value,
  //       _slow = slow == null ? const Duration(milliseconds: StandardMilliseconds.x500) : slow.value,
  //       _regular = regular == null ? const Duration(milliseconds: StandardMilliseconds.x300) : regular.value,
  //       _quick = quick == null ? const Duration(milliseconds: StandardMilliseconds.x100) : quick.value;

  // bool get areAnimationEnabled =>
  //     _areAnimationEnabled ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'areAnimationEnabled', location: 'durations')));
  // Duration get slow =>
  //     _slow ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'slow', location: 'durations')));
  // Duration get regular =>
  //     _regular ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'regular', location: 'durations')));
  // Duration get quick =>
  //     _quick ??
  //     (throw UnsupportedError(XMetricsError.getUnsupportedErrorMessage(
  //         attribute: 'quick', location: 'durations')));

  bool get areAnimationEnabled => _areAnimationEnabled;
  Duration get slow => _slow;
  Duration get regular => _regular;
  Duration get quick => _quick;

  Duration get x100 => const Duration(milliseconds: StandardMilliseconds.x100);
  Duration get x300 => const Duration(milliseconds: StandardMilliseconds.x300);
  Duration get x500 => const Duration(milliseconds: StandardMilliseconds.x500);
  Duration get x1500 =>
      const Duration(milliseconds: StandardMilliseconds.x1500);
  Duration get x2000 =>
      const Duration(milliseconds: StandardMilliseconds.x2000);
  Duration get x3000 =>
      const Duration(milliseconds: StandardMilliseconds.x3000);

  @override
  List<Object?> get props => [
        areAnimationEnabled.named('areAnimationEnabled'),
        slow.named('slow'),
        regular.named('regular'),
        quick.named('quick'),
      ];

  @override
  String toString() => '''
    Durations(
      areAnimationEnabled: $areAnimationEnabled,
      slow: $slow,
      regular: $regular,
      quick: $quick,
    )
  ''';
}
