import 'package:equatable/equatable.dart';
import 'package:material_toolkit/material_toolkit.dart';

/// Z-index values defining the stacking order of components.

/// Defines the stacking order for widgets using integer z-indexes.
class ZIndexTokensData extends Equatable {
  const ZIndexTokensData({
    int? background,
    int? content,
    int? dropdown,
    int? modal,
    int? tooltip,
    int? overlay,
  }) : background = background ?? MaterialExtendedValues.zeroInt,
       content = content ?? MaterialExtendedValues.x1Int,
       dropdown = dropdown ?? MaterialExtendedValues.x10Int,
       modal = modal ?? MaterialExtendedValues.x100Int,
       tooltip = tooltip ?? MaterialExtendedValues.x1000Int,
       overlay = overlay ?? MaterialExtendedValues.x9999Int;
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

  @override
  String toString() =>
      '''
ZIndexTokens(
  background: $background,
  content: $content,
  dropdown: $dropdown,
  modal: $modal,
  tooltip: $tooltip,
  overlay: $overlay,
)
''';
}
