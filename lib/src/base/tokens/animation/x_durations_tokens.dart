part of '../x_design_tokens.dart';

class XDurationsTokens extends Equatable {
  const XDurationsTokens({
    final bool? areAnimationEnabled,
    final Duration? slow,
    final Duration? regular,
    final Duration? quick,
  })  : areAnimationEnabled = areAnimationEnabled ?? true,
        slow = slow ?? const Duration(milliseconds: XStandardMilliseconds.x500),
        regular =
            regular ?? const Duration(milliseconds: XStandardMilliseconds.x300),
        quick =
            quick ?? const Duration(milliseconds: XStandardMilliseconds.x100);

  factory XDurationsTokens.fromMap(Map<String, dynamic> map) {
    Duration? d(String key) {
      final value = map[key];
      if (value is int) return Duration(milliseconds: value);
      return null;
    }

    return XDurationsTokens(
      areAnimationEnabled: map['areAnimationEnabled'] as bool?,
      slow: d('slow'),
      regular: d('regular'),
      quick: d('quick'),
    );
  }

  final bool areAnimationEnabled;
  final Duration slow;
  final Duration regular;
  final Duration quick;

  Duration get none => const Duration();

  Duration get x100 => const Duration(milliseconds: XStandardMilliseconds.x100);
  Duration get x300 => const Duration(milliseconds: XStandardMilliseconds.x300);
  Duration get x500 => const Duration(milliseconds: XStandardMilliseconds.x500);
  Duration get x1500 =>
      const Duration(milliseconds: XStandardMilliseconds.x1500);
  Duration get x2000 =>
      const Duration(milliseconds: XStandardMilliseconds.x2000);
  Duration get x3000 =>
      const Duration(milliseconds: XStandardMilliseconds.x3000);

  @override
  List<Object?> get props => [
        areAnimationEnabled.named('areAnimationEnabled'),
        slow.named('slow'),
        regular.named('regular'),
        quick.named('quick'),
      ];

  @override
  String toString() => '''
    XDurationsTokens(
      areAnimationEnabled: $areAnimationEnabled,
      slow: $slow,
      regular: $regular,
      quick: $quick,
    )
  ''';
}
