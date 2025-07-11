part of '../x_design_tokens.dart';

/// Z-index values defining the stacking order of components.

/// Defines the stacking order for widgets using integer z-indexes.
class XZIndexesTokens extends Equatable {
  const XZIndexesTokens({
    int? background,
    int? content,
    int? dropdown,
    int? modal,
    int? tooltip,
    int? overlay,
  })  : background = background ?? XStandardSizes.zeroInt,
        content = content ?? XAuxiliarySizes.x1Int,
        dropdown = dropdown ?? XAuxiliarySizes.x10Int,
        modal = modal ?? XAuxiliarySizes.x100Int,
        tooltip = tooltip ?? XAuxiliarySizes.x1000Int,
        overlay = overlay ?? XAuxiliarySizes.x9999Int;
  final int background;
  final int content;
  final int dropdown;
  final int modal;
  final int tooltip;
  final int overlay;

  @override
  List<Object?> get props => [
        background,
        content,
        dropdown,
        modal,
        tooltip,
        overlay,
      ];
}
