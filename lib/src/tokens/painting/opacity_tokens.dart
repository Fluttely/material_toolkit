import 'package:equatable/equatable.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// Opacity values used for interactive states.

/// Defines opacity values for different component states.
class OpacityTokensData extends Equatable {
  const OpacityTokensData({
    double? disabled,
    double? hover,
    double? focus,
    double? pressed,
    double? backdrop,
    double? divider,
  }) : disabled = disabled ?? MaterialExtendedValues.x038,
       hover = hover ?? MaterialExtendedValues.x008,
       focus = focus ?? MaterialExtendedValues.x012,
       pressed = pressed ?? MaterialExtendedValues.x016,
       backdrop = backdrop ?? MaterialExtendedValues.x05,
       divider = divider ?? MaterialExtendedValues.x012;
  final double disabled;
  final double hover;
  final double focus;
  final double pressed;
  final double backdrop;
  final double divider;

  @override
  List<Object?> get props => [
    disabled,
    hover,
    focus,
    pressed,
    backdrop,
    divider,
  ];

  @override
  String toString() =>
      '''
OpacityTokens(
  disabled: $disabled,
  hover: $hover,
  focus: $focus,
  pressed: $pressed,
  backdrop: $backdrop,
  divider: $divider,
)''';
}
