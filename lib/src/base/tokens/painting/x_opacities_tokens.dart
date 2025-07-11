part of '../x_design_tokens.dart';

/// Opacity values used for interactive states.

/// Defines opacity values for different component states.
class XOpacitiesTokens extends Equatable {
  const XOpacitiesTokens({
    double? disabled,
    double? hover,
    double? focus,
    double? pressed,
    double? backdrop,
    double? divider,
  })  : disabled = disabled ?? XAuxiliarySizes.x038,
        hover = hover ?? XAuxiliarySizes.x008,
        focus = focus ?? XAuxiliarySizes.x012,
        pressed = pressed ?? XAuxiliarySizes.x016,
        backdrop = backdrop ?? XAuxiliarySizes.x05,
        divider = divider ?? XAuxiliarySizes.x012;
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
}
